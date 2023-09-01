$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://brand-preport/exit', JSON.stringify({}));
            return
        }
    };
    $("#close").click(function () {
        $.post('https://brand-preport/exit', JSON.stringify({}));
        return
    })
    $("#submit").click(function () {
        $('#submit').prop('disabled', true).addClass('disabled');
        let discord = $("#discord").val()
        let report = $("#report").val()
        let brott = $("#brott").val()
        let happend = $("#happend").val()
        M.toast({html: 'Du skickade in tjänstefelsanmälan!', classes: 'teal darken-1'})
        $.post('https://brand-preport/submit', JSON.stringify({
            discord: discord,
            report: report,
            brott: brott,
            register: happend,
        }));
        return
    })
})