package srtmaker

class Srt {

    String title
    String srtFile
    String url
    Date date

    static mapping = {
        srtFile type: 'text'
        sort date: "desc"
    }

    static constraints = {
    }
}
