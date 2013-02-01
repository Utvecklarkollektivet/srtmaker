package srtmaker

import org.codehaus.groovy.grails.web.context.ServletContextHolder
import java.util.regex.Pattern

class EditController {

    def index() {
        def srts = Srt.findAll().sort()
        [srts: srts]
    }

    def upload() {
    }

    def translate() {
        def srt = Srt.findByUrl(params.id)

        srt.srtFile.eachLine {
            srtLineParse(it)

        }


        [srt: srt ]
    }

    def sub() {

        def numberOfTranslations = 0
        def srt = Srt.findByUrl(params.id)
        def translations = Translation.findBySrt(srt)
        try {
            numberOfTranslations = translations.size()
        }
        catch(Exception e) {
            println "no translation found --> " + e.getMessage()
        }

        [srt: srt, translations: translations, numberOfTranslations: numberOfTranslations]
    }

    def uploadSrt() {
        def title = params.title
        String srtfile = ''
        def f = request.getFile('myFile')

        if (f.empty && f.endsWith('.srt') && title != '' && title) {
            flash.message = 'file/title cannot be empty and it have to be an srt file.'
            render(view: 'upload')
            return
        }

        def url = title.replaceAll( /[^0-9a-zA-Z ]/, '' ).tr( ' ', '-' )
        def extraStr = ''

        def count = Srt.findAllByUrl(url).size()

        if(count > 0) {
            extraStr = generator( (('A'..'Z')+('0'..'9')).join(), 9 )
            url += '-' + extraStr
        }
        f.inputStream.eachLine { line ->
            srtfile += line.toString() + "\n"
        }
        def srt = new Srt(title: title, srtFile: srtfile, url: url, date: new Date())
        if (srt.save()) {
            createSrtFileOnDisk(url, srtfile)
            return redirect(uri: '/edit/sub/' + url)
        }
        else {
            flash.message = 'file/title cannot be empty and it have to be an srt file.'
            return render(view: 'upload')
        }
    }

    private def createSrtFileOnDisk(String name, String srtFile) {
        def path = ServletContextHolder.servletContext.getRealPath('/')
        def fos= new FileOutputStream(path + 'srts/' + name + '.srt')
        fos.write(srtFile as byte[])
        fos.close()
    }

    private String getSrtFilePath(String url) {
        def path = ServletContextHolder.servletContext.getRealPath('/')
        return path + "srts/" + url + '.srt'
    }

    private def generator = { String alphabet, int n ->
        new Random().with {
            (1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
        }
    }

    private def srtLineParse(String line) {
        def x = 0
        try {
            x = Integer.parseInt(line)
        }
        catch(Exception e) {
            println "could not parse"
        }

        println line.getClass() + x.getClass() + x.toString()
    }

}
