
    $(document).on('turbolinks:load', function() {
        return $("#body").on("keypress", function(e) {
            var body;
            if (e && e.keyCode === 13) {
                e.preventDefault();
                body = $("#body");
                $(this).submit();
                return body.val("");
            }
        });
    });



