if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$(function() {

    var blocks = 1;

    $('#addnew').click(function(event) {
        event.preventDefault();
        blocks++;
        var newBlock = '<div id="block' + blocks + '"><div class="span9"><h4 class="subtitle-heading">Block ' + blocks + '</h4></div><div class="span4"><div class="form-inline"><input id="start' + blocks + '" type="text" class="input-small" placeholder="00:00:00"> to<input id="end' + blocks + '" type="text" class="input-small" placeholder="00:00:00"></div></div><div class="span7">..and the subtitle: <textarea id="sub' + blocks + '" rows="2" placeholder="subtitles"></textarea></div></div>';
        $('.subtitle').append(newBlock);
        var n = $(document).height();
        $('html, body').animate({ scrollTop: n },'50');
    });

    $('#compile').click(function(event) {
        var srtfile = '';
        var srtfileAjax = '';
        event.preventDefault();
        var title = $('#sub-title').val();
        for(var i = 1; i < blocks + 1; i++) {

            var start = $('#start' + i).val();
            var end = $('#end' + i).val();
            var sub = $('#sub' + i).val();

            if(start != null || end != null || sub != null) {
                srtfile += i.toString() + "<br />" + start + " --> " + end + "<br />" + sub + "<br /><br />";
                srtfileAjax += i.toString() + "\n" + start + " --> " + end + "\n" + sub + "\n\n";
            }

        }

        $('.app-body').html('<h1>' + title + '</h1><pre>' + srtfile + '</pre>');

        $.post("new/createSrt", { title: title, srtfile: srtfileAjax })
        .success(function(data) {
            $('.app-body').append(data);
        })
        .error(function(data) {
            $('.app-body').append('<div class="alert alert-danger"><strong>Warning</strong>, could not save and generate a file. Please copy from this site or try again later.</div>');
        });
    });
});
