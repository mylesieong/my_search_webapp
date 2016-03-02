


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2006 Deletions
</title>

    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-41512726-1', 'cubancigarwebsite.com');
        ga('send', 'pageview');

    </script>


    <link href="css/ccw.css" rel="stylesheet" type="text/css" /><meta http-equiv="Content-Language" content="en-au" /><meta http-equiv="Content-Type" content="text/html; charset=windows-1252" /><meta name="keywords" content="Cuban cigar website, Cuban cigars website, cigar, cigars, Cuban cigar, Cuban cigars, cigar information, Cuban cigar information, Cuban cigar details, Cuban cigar sizes, Cuban cigar images, cigar ring sizes, cigar data, search cigars, tobacco, cigar production, finished cigars, Cuban brands" /><meta name="owner" content="atgroom@cubancigarwebsite.com" />

     <span id="ctl00_head_lblinchlimit"><script type="text/javascript">
var inchLimit = 21;
</script></span>
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="js/jquery.json-2.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/jquery.MetaData.js"></script>
    <script type="text/javascript" src="js/jquery.rating.pack.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/smokeone.js"></script>

    <link href="js/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="js/themes/base/jquery.rating.css" rel="stylesheet" />
    <script type="text/javascript" src="js/utilities.js"></script>
    <script type="text/javascript" src="js/box.js"></script>
    <link href="css/lightbox.css" rel="stylesheet" />
    <script type="text/javascript">
        

        

        function showBoxStock(cigarID, isSpecial) {
        
            $("#BoxStockContent").html('');
            
            $.ajax({
                type: "POST",
                url: "brand.aspx/BoxStockDialog",
                data: "{cigarID:'" + cigarID + "',memberID:'" +  + "',isSpecial:'" + isSpecial + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "html",
                success: function(data) {
                    $("#BoxStockContent").html(data);
                },
                error: function(xhr, status, error) {

                    var err = eval("(" + xhr.responseText + ")");
                    alert(err.Message);
                }
            });

            showPopup('BoxStock', true);
        
        }

        function postSmokeOne(data){
            $("#SmokeOneNotes").val('')
            $("#BoxStockContent").html(data);
        };






        
<!--
    function FP_jumpMenu(el, frm, sel) {//v1.0
        var href = el.options[el.selectedIndex].value; if (sel) el.selectedIndex = 0;
        if ('_new' == frm) open(href); else eval(frm + ".location='" + href + "'");
    }

    var inchstate = 'inline';

    function hideInches() {
        if (inchstate == 'inline') {
            inchstate = 'none';
        }
        else {
            inchstate = 'inline';
        }

        for (var xx = 0; xx <= inchLimit; xx++) {
            //obj = document.getElementById('i' + (xx));

            if (document.all) { //IS IE 4 or 5 (or 6 beta) 
                eval("document.all." + 'i' + (xx) + ".style.display = inchstate");

            }
            if (document.layers) { //IS NETSCAPE 4 or below 
                document.layers['i' + (xx)].display = inchstate;


            }
            if (document.getElementById && !document.all) {
                hza = document.getElementById('i' + (xx));
                hza.style.display = inchstate;

            }
        }
    }

    var state = 'block';

    function hideforprinting() {


        if (state == 'block') {
            state = 'none';
        }
        else {
            state = 'block';
        }
        if (document.all) { //IS IE 4 or 5 (or 6 beta) 
            eval("document.all.printHead.style.display = state");
            eval("document.all.printHeadDropdown.style.display = state");

        }
        if (document.layers) { //IS NETSCAPE 4 or below 
            document.layers[printHead].display = state;
            document.layers[printHeadDropdown].display = state;


        }
        if (document.getElementById && !document.all) {
            hza = document.getElementById('printHead');
            hza.style.display = state;
            hza = document.getElementById('printHeadDropdown');
            hza.style.display = state;

        }
    }


    // -->
</script>
  
   </head>
<body>
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2006&amp;discontinuedlow=2006&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=factoryname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDIxOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPjIwMDYgRGVsZXRpb25zPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEF2Go8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAwNiZkaXNjb250aW51ZWRsb3c9MjAwNiZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA2JmRpc2NvbnRpbnVlZGxvdz0yMDA2JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA2JmRpc2NvbnRpbnVlZGxvdz0yMDA2JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDYmZGlzY29udGludWVkbG93PTIwMDYmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA2JmRpc2NvbnRpbnVlZGxvdz0yMDA2JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGlwbG9tfGF0aWNvcyNEaXBsb218YXRpY29zX05vLjEiPkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY2IC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2VydmFudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNjU8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uc2RhbGU8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjEiIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uMSIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjFfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJhZmFlbCBHb256w6FsZXogTG9uc2RhbGVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJhZmFlbF9Hb256fGFsZXojTG9uc2RhbGVzIj5SYWZhZWwgR29uesOhbGV6IExvbnNkYWxlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DZXJ2YW50ZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE2NTxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYWZhZWwgR29uesOhbGV6IExvbnNkYWxlcyIgdGl0bGU9IlJhZmFlbCBHb256w6FsZXogTG9uc2RhbGVzIiBzcmM9ImltYWdlc1xSYWZhZWxfR29uesOhbGV6X0xvbnNkYWxlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iU2FpbnQgTHVpcyBSZXkgTG9uc2RhbGVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhaW50X0x1aXNfUmV5I0xvbnNkYWxlcyI+U2FpbnQgTHVpcyBSZXkgTG9uc2RhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNlcnZhbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTY1PHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlNhaW50IEx1aXMgUmV5IExvbnNkYWxlcyIgdGl0bGU9IlNhaW50IEx1aXMgUmV5IExvbnNkYWxlcyIgc3JjPSJpbWFnZXNcU2FpbnRfTHVpc19SZXlfTG9uc2RhbGVzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJRdWFpIGQmIzM5O09yc2F5IEdyYW4gQ29yb25hIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1YWlfZHwtfHgzOTtPcnNheSNHcmFuX0Nvcm9uYSI+UXVhaSBkJiMzOTtPcnNheSBHcmFuIENvcm9uYTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3NCAtIERpc2NvbnRpbnVlZCBtaWQgdG8gbGF0ZS0yMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXMgR3JhbmRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTU1PHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlF1YWkgZCYjMzk7T3JzYXkgR3JhbiBDb3JvbmEiIHRpdGxlPSJRdWFpIGQmIzM5O09yc2F5IEdyYW4gQ29yb25hIiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfR3Jhbl9Db3JvbmFfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJvbMOtdmFyIENvcm9uYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjQ29yb25hcyI+Qm9sw612YXIgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkJvbMOtdmFyIENvcm9uYXMiIHRpdGxlPSJCb2zDrXZhciBDb3JvbmFzIiBzcmM9ImltYWdlc1xCb2zDrXZhcl9Db3JvbmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uMyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uMyI+RGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjYgLSBEaXNjb250aW51ZWQgMjAwNjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4zIiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjMiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJFbCBSZXkgZGVsIE11bmRvIENvcm9uYXMgZGUgTHV4ZSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1FbF9SZXlfZGVsX011bmRvI0Nvcm9uYXNfZGVfTHV4ZSI+RWwgUmV5IGRlbCBNdW5kbyBDb3JvbmFzIGRlIEx1eGU8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTQyPHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJFbCBSZXkgZGVsIE11bmRvIENvcm9uYXMgZGUgTHV4ZSIgdGl0bGU9IkVsIFJleSBkZWwgTXVuZG8gQ29yb25hcyBkZSBMdXhlIiBzcmM9ImltYWdlc1xFbF9SZXlfZGVsX011bmRvX0Nvcm9uYXNfZGVfTHV4ZV9jaWdhcl9zbWFsbF8zLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBIb3lvIENvcm9uYSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSNIb3lvX0Nvcm9uYSI+SG95byBkZSBNb250ZXJyZXkgSG95byBDb3JvbmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTQyPHNwYW4gaWQ9Imk3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJIb3lvIGRlIE1vbnRlcnJleSBIb3lvIENvcm9uYSIgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IEhveW8gQ29yb25hIiBzcmM9ImltYWdlc1xIb3lvX2RlX01vbnRlcnJleV9Ib3lvX0Nvcm9uYV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSnVhbiBMw7NwZXogQ29yb25hcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1KdWFuX0x8b3BleiNDb3JvbmFzIj5KdWFuIEzDs3BleiBDb3JvbmFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE0MjxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSnVhbiBMw7NwZXogQ29yb25hcyIgdGl0bGU9Ikp1YW4gTMOzcGV6IENvcm9uYXMiIHNyYz0iaW1hZ2VzXEp1YW5fTMOzcGV6X0Nvcm9uYXNfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIENvcm9uYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzI0Nvcm9uYXMiPlBhcnRhZ8OhcyBDb3JvbmFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE0MjxzcGFuIGlkPSJpOSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIENvcm9uYXMiIHRpdGxlPSJQYXJ0YWfDoXMgQ29yb25hcyIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX0Nvcm9uYXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlNhbmNobyBQYW56YSBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhbmNob19QYW56YSNDb3JvbmFzIj5TYW5jaG8gUGFuemEgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTEwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYW5jaG8gUGFuemEgQ29yb25hcyIgdGl0bGU9IlNhbmNobyBQYW56YSBDb3JvbmFzIiBzcmM9ImltYWdlc1xTYW5jaG9fUGFuemFfQ29yb25hc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgUGFydGFnw6FzIGRlIFBhcnRhZ8OhcyBOby4xIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyNQYXJ0YWd8YXNfZGVfUGFydGFnfGFzX05vLjEiPlBhcnRhZ8OhcyBQYXJ0YWfDoXMgZGUgUGFydGFnw6FzIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RGFsaWFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDMgeCAxNzA8c3BhbiBpZD0iaTExIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBQYXJ0YWfDoXMgZGUgUGFydGFnw6FzIE5vLjEiIHRpdGxlPSJQYXJ0YWfDoXMgUGFydGFnw6FzIGRlIFBhcnRhZ8OhcyBOby4xIiBzcmM9ImltYWdlc1xQYXJ0YWfDoXNfUGFydGFnw6FzX2RlX1BhcnRhZ8Ohc19Oby4xX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgVHLDqXMgUGV0aXQgQ29yb25hcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Sb21lb195X0p1bGlldGEjVHJ8ZXNfUGV0aXRfQ29yb25hcyI+Um9tZW8geSBKdWxpZXRhIFRyw6lzIFBldGl0IENvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RnJhbmNpc2Nhbm9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMTY8c3BhbiBpZD0iaTEyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSb21lbyB5IEp1bGlldGEgVHLDqXMgUGV0aXQgQ29yb25hcyIgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBUcsOpcyBQZXRpdCBDb3JvbmFzIiBzcmM9ImltYWdlc1xSb21lb195X0p1bGlldGFfVHJlc19QZXRpdF9Db3JvbmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYW5jaG8gUGFuemEgQmFjaGlsbGVyZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FuY2hvX1BhbnphI0JhY2hpbGxlcmVzIj5TYW5jaG8gUGFuemEgQmFjaGlsbGVyZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RnJhbmNpc2Nhbm9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMTY8c3BhbiBpZD0iaTEzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYW5jaG8gUGFuemEgQmFjaGlsbGVyZXMiIHRpdGxlPSJTYW5jaG8gUGFuemEgQmFjaGlsbGVyZXMiIHNyYz0iaW1hZ2VzXFNhbmNob19QYW56YV9CYWNoaWxsZXJlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iU2FuY2hvIFBhbnphIFNhbmNob3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FuY2hvX1BhbnphI1NhbmNob3MiPlNhbmNobyBQYW56YSBTYW5jaG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdyYW4gQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAyMzU8c3BhbiBpZD0iaTE0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDkuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdpYW50IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYW5jaG8gUGFuemEgU2FuY2hvcyIgdGl0bGU9IlNhbmNobyBQYW56YSBTYW5jaG9zIiBzcmM9ImltYWdlc1xTYW5jaG9fUGFuemFfU2FuY2hvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRWwgUmV5IGRlbCBNdW5kbyBUYcOtbm9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUVsX1JleV9kZWxfTXVuZG8jVGF8aW5vcyI+RWwgUmV5IGRlbCBNdW5kbyBUYcOtbm9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkp1bGlldGEgTm8uMjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ3IHggMTc4PHNwYW4gaWQ9ImkxNSIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaHVyY2hpbGw8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRWwgUmV5IGRlbCBNdW5kbyBUYcOtbm9zIiB0aXRsZT0iRWwgUmV5IGRlbCBNdW5kbyBUYcOtbm9zIiBzcmM9ImltYWdlc1xFbF9SZXlfZGVsX011bmRvX1Rhw61ub3NfY2lnYXJfc21hbGxfMTAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyBDaHVyY2hpbGwgZGUgTHV4ZSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjQ2h1cmNoaWxsX2RlX0x1eGUiPlBhcnRhZ8OhcyBDaHVyY2hpbGwgZGUgTHV4ZTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDE3ODxzcGFuIGlkPSJpMTYiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2h1cmNoaWxsPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBDaHVyY2hpbGwgZGUgTHV4ZSIgdGl0bGU9IlBhcnRhZ8OhcyBDaHVyY2hpbGwgZGUgTHV4ZSIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX0NodXJjaGlsbF9kZV9MdXhlX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYW5jaG8gUGFuemEgQ29yb25hcyBHaWdhbnRlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1TYW5jaG9fUGFuemEjQ29yb25hc19HaWdhbnRlcyI+U2FuY2hvIFBhbnphIENvcm9uYXMgR2lnYW50ZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SnVsaWV0YSBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAxNzg8c3BhbiBpZD0iaTE3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNodXJjaGlsbDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYW5jaG8gUGFuemEgQ29yb25hcyBHaWdhbnRlcyIgdGl0bGU9IlNhbmNobyBQYW56YSBDb3JvbmFzIEdpZ2FudGVzIiBzcmM9ImltYWdlc1xTYW5jaG9fUGFuemFfQ29yb25hc19HaWdhbnRlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgU2hvcnQgSG95byBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUhveW9fZGVfTW9udGVycmV5I1Nob3J0X0hveW9fQ29yb25hcyI+SG95byBkZSBNb250ZXJyZXkgU2hvcnQgSG95byBDb3JvbmFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk1hcmV2YXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEyOTxzcGFuIGlkPSJpMTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkhveW8gZGUgTW9udGVycmV5IFNob3J0IEhveW8gQ29yb25hcyIgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IFNob3J0IEhveW8gQ29yb25hcyIgc3JjPSJpbWFnZXNcSG95b19kZV9Nb250ZXJyZXlfU2hvcnRfSG95b19Db3JvbmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYWZhZWwgR29uesOhbGV6IFNsZW5kZXJlbGxhcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYWZhZWxfR29uenxhbGV6I1NsZW5kZXJlbGxhcyI+UmFmYWVsIEdvbnrDoWxleiBTbGVuZGVyZWxsYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGFzIExhcmdhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI4IHggMTc1PHNwYW4gaWQ9ImkxOSIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbGltIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJhZmFlbCBHb256w6FsZXogU2xlbmRlcmVsbGFzIiB0aXRsZT0iUmFmYWVsIEdvbnrDoWxleiBTbGVuZGVyZWxsYXMiIHNyYz0iaW1hZ2VzXFJhZmFlbF9Hb256w6FsZXpfU2xlbmRlcmVsbGFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYWZhZWwgR29uesOhbGV6IFBhbmV0ZWxhcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYWZhZWxfR29uenxhbGV6I1BhbmV0ZWxhcyI+UmFmYWVsIEdvbnrDoWxleiBQYW5ldGVsYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzQgeCAxMTc8c3BhbiBpZD0iaTIwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNtYWxsIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJhZmFlbCBHb256w6FsZXogUGFuZXRlbGFzIiB0aXRsZT0iUmFmYWVsIEdvbnrDoWxleiBQYW5ldGVsYXMiIHNyYz0iaW1hZ2VzXFJhZmFlbF9Hb256w6FsZXpfUGFuZXRlbGFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKdWFuIEzDs3BleiBQYW5ldGVsYXMgU3VwZXJiYSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1KdWFuX0x8b3BleiNQYW5ldGVsYXNfU3VwZXJiYSI+SnVhbiBMw7NwZXogUGFuZXRlbGFzIFN1cGVyYmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDY8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGxhY2VyYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNCB4IDEyNTxzcGFuIGlkPSJpMjEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U21hbGwgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSnVhbiBMw7NwZXogUGFuZXRlbGFzIFN1cGVyYmEiIHRpdGxlPSJKdWFuIEzDs3BleiBQYW5ldGVsYXMgU3VwZXJiYSIgc3JjPSJpbWFnZXNcSnVhbl9Mw7NwZXpfUGFuZXRlbGFzX1N1cGVyYmFfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGRMmoOATAGIlxT6FWTJ2sAQsq7YljXKaOyXdjV6dNfrBA==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AB3BDE6C" />
</div>
    
    
	    <div class="top-graphic">
    
          <div style="position:absolute;right:0px;top:10px"> 
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2006%26discontinuedlow%3d2006%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dfactoryname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
            </div>
            </div>

        <div id="printHead" style="display:block">
    
 
  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-41512726-1', 'cubancigarwebsite.com');
  ga('send', 'pageview');

</script>

<div id="ctl00_header_navigation">
	
 <table class="bordered-table">
    <tr>
      <td colspan="4" class="header-grouping">Generally</td>
      <td colspan="6" class="header-grouping">Search </td>
      <td colspan="4" class="header-grouping">Information About</td>
  </tr>
  <tr>
      <td class="header-items" ><a title="Home Page of the Cuban Cigar Website" href="/default.aspx">Home</a></td>
      <td class="header-items" ><a title="About this Website, Contact Me, FAQ's, Acknowledgements" href="/about.aspx">About</a></td>
      <td class="header-items" ><a title="Cigar & Band Images" href="/gallery.aspx">Images</a></td>
      <td class="header-items" ><a title="Old Cuban Catalogues" href="/catalogues/catalogue.aspx">Catalogues</a></td> 
      
      <td class="header-items" ><a title="Find and Identify Cigars" href="/find.aspx">Cigars</a></td>
	  <td class="header-items" ><a title="Search Current and Discontinued Brands" href="/brands.aspx">Brands</a></td>
      <td class="header-items" ><a title="Search by Release" href="/releases.aspx">Releases</a></td>
      <td class="header-items" ><a title="Search for Packaging" href="/packaging.aspx">Packaging</a></td>
      <td class="header-items" ><a title="Search by Date" href="/lists.aspx">Date</a></td>
      <td class="header-items" ><a title="Advanced Search Options" href="/search.aspx">Advanced Search</a></td>
     
      <td class="header-items" ><a title="Tobacco &amp; Cigar Production" href="/info-production.aspx">Production </a></td>
      <td class="header-items" ><a title="The Finished Cigars" href="/info-cigars.aspx">Cigars</a></td>
      <td class="header-items" ><a title="Packaging, Box &amp; Date Codes, etc" href="/info-packaging.aspx">Packaging</a></td>
      <td class="header-items" ><a title="Current Brand Information &amp; History" href="/info-brands.aspx">Brands</a></td>
      
      
     </tr>
  </table>

</div>
  	<br />

  
         
        <!--- start Google Translate, including heading --->
	<table class="trans-box">
		<tr>
			<td>
				<span class="head5">Website Translation</span>
				<div id="google_translate_element"></div>
				<script type="text/javascript">function googleTranslateElementInit() {
new google.translate.TranslateElement({
    pageLanguage: 'en'
}, 'google_translate_element');
}</script>
				<script  type="text/javascript"src="http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			</td>
		</tr>
	</table>
               
<!--- end Google Translate --->
                </div>
 <br />
        

 				    <div style="text-align:center"> 

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2006 Deletions</span><br /><br /></span>
 

   


<span class="sub-text">
<a href="javascript:hideforprinting();">Show / Hide Menus</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="javascript:hideInches();">Show / Hide Inches</a></span>

     

       
 
					<strong>
 
					<span class="sub-text">
					<span class="show-hide"><br />
			   	 </span>
					
					</span></strong>
 
 				   <span class="quick-link">This list can be sorted by clicking the links at the top of 
					the four data columns<br />
 
 				   </span>
 
 <br />



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2006&discontinuedlow=2006&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2006&discontinuedlow=2006&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2006&discontinuedlow=2006&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2006&discontinuedlow=2006&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2006&discontinuedlow=2006&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.1" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.1">Diplomáticos Diplomáticos No.1</a>&nbsp;<span class="subcontent">1966 - Discontinued 2006</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i0" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.1" title="Diplomáticos Diplomáticos No.1" src="images\Diplomáticos_Diplomáticos_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Lonsdales" href="brand.aspx?brand=Rafael_Gonz|alez#Lonsdales">Rafael González Lonsdales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i1" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Rafael González Lonsdales" title="Rafael González Lonsdales" src="images\Rafael_González_Lonsdales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Lonsdales" href="brand.aspx?brand=Saint_Luis_Rey#Lonsdales">Saint Luis Rey Lonsdales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i2" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Lonsdales" title="Saint Luis Rey Lonsdales" src="images\Saint_Luis_Rey_Lonsdales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Gran Corona" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Gran_Corona">Quai d&#39;Orsay Gran Corona</a>&nbsp;<span class="subcontent">1974 - Discontinued mid to late-2006</span></td><td class="bordered-cell-L">Coronas Grandes</td><td class="bordered-cell-L">42 x 155<span id="i3" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Gran Corona" title="Quai d&#39;Orsay Gran Corona" src="images\Quai_d'Orsay_Gran_Corona_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Coronas" href="brand.aspx?brand=Bol|ivar#Coronas">Bolívar Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i4" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Bolívar Coronas" title="Bolívar Coronas" src="images\Bolívar_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.3" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.3">Diplomáticos Diplomáticos No.3</a>&nbsp;<span class="subcontent">1966 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i5" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.3" title="Diplomáticos Diplomáticos No.3" src="images\Diplomáticos_Diplomáticos_No.3_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Coronas de Luxe" href="brand.aspx?brand=El_Rey_del_Mundo#Coronas_de_Luxe">El Rey del Mundo Coronas de Luxe</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i6" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Coronas de Luxe" title="El Rey del Mundo Coronas de Luxe" src="images\El_Rey_del_Mundo_Coronas_de_Luxe_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Hoyo Corona" href="brand.aspx?brand=Hoyo_de_Monterrey#Hoyo_Corona">Hoyo de Monterrey Hoyo Corona</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i7" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Hoyo Corona" title="Hoyo de Monterrey Hoyo Corona" src="images\Hoyo_de_Monterrey_Hoyo_Corona_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Juan López Coronas" href="brand.aspx?brand=Juan_L|opez#Coronas">Juan López Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i8" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Juan López Coronas" title="Juan López Coronas" src="images\Juan_López_Coronas_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Coronas" href="brand.aspx?brand=Partag|as#Coronas">Partagás Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i9" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Partagás Coronas" title="Partagás Coronas" src="images\Partagás_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Sancho Panza Coronas" href="brand.aspx?brand=Sancho_Panza#Coronas">Sancho Panza Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i10" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Sancho Panza Coronas" title="Sancho Panza Coronas" src="images\Sancho_Panza_Coronas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Partagás de Partagás No.1" href="brand.aspx?brand=Partag|as#Partag|as_de_Partag|as_No.1">Partagás Partagás de Partagás No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Dalias</td><td class="bordered-cell-L">43 x 170<span id="i11" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Partagás Partagás de Partagás No.1" title="Partagás Partagás de Partagás No.1" src="images\Partagás_Partagás_de_Partagás_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Trés Petit Coronas" href="brand.aspx?brand=Romeo_y_Julieta#Tr|es_Petit_Coronas">Romeo y Julieta Trés Petit Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Franciscanos</td><td class="bordered-cell-L">40 x 116<span id="i12" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Trés Petit Coronas" title="Romeo y Julieta Trés Petit Coronas" src="images\Romeo_y_Julieta_Tres_Petit_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Sancho Panza Bachilleres" href="brand.aspx?brand=Sancho_Panza#Bachilleres">Sancho Panza Bachilleres</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Franciscanos</td><td class="bordered-cell-L">40 x 116<span id="i13" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Sancho Panza Bachilleres" title="Sancho Panza Bachilleres" src="images\Sancho_Panza_Bachilleres_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Sancho Panza Sanchos" href="brand.aspx?brand=Sancho_Panza#Sanchos">Sancho Panza Sanchos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Gran Corona</td><td class="bordered-cell-L">47 x 235<span id="i14" class="inch">&nbsp;(9.3")</span></td><td class="bordered-cell-L">Giant Corona</td><td class="bordered-cell-L"><img alt="Sancho Panza Sanchos" title="Sancho Panza Sanchos" src="images\Sancho_Panza_Sanchos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Taínos" href="brand.aspx?brand=El_Rey_del_Mundo#Ta|inos">El Rey del Mundo Taínos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i15" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Taínos" title="El Rey del Mundo Taínos" src="images\El_Rey_del_Mundo_Taínos_cigar_small_10.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Churchill de Luxe" href="brand.aspx?brand=Partag|as#Churchill_de_Luxe">Partagás Churchill de Luxe</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i16" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Partagás Churchill de Luxe" title="Partagás Churchill de Luxe" src="images\Partagás_Churchill_de_Luxe_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Sancho Panza Coronas Gigantes" href="brand.aspx?brand=Sancho_Panza#Coronas_Gigantes">Sancho Panza Coronas Gigantes</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i17" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Sancho Panza Coronas Gigantes" title="Sancho Panza Coronas Gigantes" src="images\Sancho_Panza_Coronas_Gigantes_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Short Hoyo Coronas" href="brand.aspx?brand=Hoyo_de_Monterrey#Short_Hoyo_Coronas">Hoyo de Monterrey Short Hoyo Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i18" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Short Hoyo Coronas" title="Hoyo de Monterrey Short Hoyo Coronas" src="images\Hoyo_de_Monterrey_Short_Hoyo_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Slenderellas" href="brand.aspx?brand=Rafael_Gonz|alez#Slenderellas">Rafael González Slenderellas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Panetelas Largas</td><td class="bordered-cell-L">28 x 175<span id="i19" class="inch">&nbsp;(6.9")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="Rafael González Slenderellas" title="Rafael González Slenderellas" src="images\Rafael_González_Slenderellas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Panetelas" href="brand.aspx?brand=Rafael_Gonz|alez#Panetelas">Rafael González Panetelas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Panetelas</td><td class="bordered-cell-L">34 x 117<span id="i20" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Rafael González Panetelas" title="Rafael González Panetelas" src="images\Rafael_González_Panetelas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Juan López Panetelas Superba" href="brand.aspx?brand=Juan_L|opez#Panetelas_Superba">Juan López Panetelas Superba</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2006</span></td><td class="bordered-cell-L">Placeras</td><td class="bordered-cell-L">34 x 125<span id="i21" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Juan López Panetelas Superba" title="Juan López Panetelas Superba" src="images\Juan_López_Panetelas_Superba_cigar_small_0.jpg"/></td></tr></table></span>
        </div>

    

        <div style="text-align: center;">
					<br />
					<span class="sub-text">www.CubanCigarWebsite.com</span><br/>
					<span class="date-style"><a href="about.aspx#Copyright_Information" title="Copyright Policy">
					All images on this website are copyright</a></span><br />
</div>
    </form>
</body>
</html>
