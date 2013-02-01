package srtmaker

class Translation {

    String title
    String srtFile
    String url
    Date date
    String language

    static belongsTo = [srt: Srt]

    static mapping = {
        srtFile type: 'text'
    }

    static constraints = {
    }
}
