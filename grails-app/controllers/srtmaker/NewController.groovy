package srtmaker

import org.codehaus.groovy.grails.web.context.ServletContextHolder

class NewController {

    def index() {

    }

    def edit() {

    }

    def createSrt() {
        def title = params.title
        def srtFile = params.srtfile
        def url = title.replaceAll( /[^0-9a-zA-Z ]/, '' ).tr( ' ', '-' )
        def extraStr = ''

        def count = Srt.findAllByUrl(url).size()

        if(count > 0) {
            extraStr = generator( (('A'..'Z')+('0'..'9')).join(), 9 )
            url += '-' + extraStr
        }

        def srt = new Srt(title: title, srtFile: srtFile, url: url, date: new Date())
        if (srt.save()) {
            createSrtFileOnDisk(url, srtFile)
            [data: url]
        }
        else {
            render text: 'false', contentType: "text/html"
        }
    }


    private def createSrtFileOnDisk(String name, String srtFile) {
        def path = ServletContextHolder.servletContext.getRealPath('/')
        def fos= new FileOutputStream(path + 'srts/' + name + '.srt')
        fos.write(srtFile as byte[])
        fos.close()
    }

    private def generator = { String alphabet, int n ->
        new Random().with {
            (1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
        }
    }
}
