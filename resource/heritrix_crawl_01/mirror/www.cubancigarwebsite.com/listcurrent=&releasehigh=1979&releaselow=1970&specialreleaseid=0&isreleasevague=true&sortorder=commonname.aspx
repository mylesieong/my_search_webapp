


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 1970 - 1979 Releases
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
var inchLimit = 30;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;releasehigh=1979&amp;releaselow=1970&amp;specialreleaseid=0&amp;isreleasevague=true&amp;sortorder=commonname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDMwOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTs8c3BhbiBjbGFzcz0iaGVhZDEiPjE5NzAgLSAxOTc5IFJlbGVhc2VzPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEFsYsBPHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSI+PHRyPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0xOTc5JnJlbGVhc2Vsb3c9MTk3MCZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9dHJ1ZSZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mcmVsZWFzZWhpZ2g9MTk3OSZyZWxlYXNlbG93PTE5NzAmc3BlY2lhbHJlbGVhc2VpZD0wJmlzcmVsZWFzZXZhZ3VlPXRydWUmc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0xOTc5JnJlbGVhc2Vsb3c9MTk3MCZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9dHJ1ZSZzb3J0b3JkZXI9cmluZyI+UmluZzwvYT4geCA8YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mcmVsZWFzZWhpZ2g9MTk3OSZyZWxlYXNlbG93PTE5NzAmc3BlY2lhbHJlbGVhc2VpZD0wJmlzcmVsZWFzZXZhZ3VlPXRydWUmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mcmVsZWFzZWhpZ2g9MTk3OSZyZWxlYXNlbG93PTE5NzAmc3BlY2lhbHJlbGVhc2VpZD0wJmlzcmVsZWFzZXZhZ3VlPXRydWUmc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiBEb20gUGVyaWdub24iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjRG9tX1Blcmlnbm9uIj5EYXZpZG9mZiBEb20gUGVyaWdub248L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzcgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDE3ODxzcGFuIGlkPSJpMCIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaHVyY2hpbGw8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgRG9tIFBlcmlnbm9uIiB0aXRsZT0iRGF2aWRvZmYgRG9tIFBlcmlnbm9uIiBzcmM9ImltYWdlc1xEYXZpZG9mZl9Eb21fUGVyaWdub25fY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlF1YWkgZCYjMzk7T3JzYXkgSW1wZXJpYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1RdWFpX2R8LXx4Mzk7T3JzYXkjSW1wZXJpYWxlcyI+UXVhaSBkJiMzOTtPcnNheSBJbXBlcmlhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTc0IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDE3ODxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaHVyY2hpbGw8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUXVhaSBkJiMzOTtPcnNheSBJbXBlcmlhbGVzIiB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBJbXBlcmlhbGVzIiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfSW1wZXJpYWxlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFByaW5jZSBvZiBXYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Sb21lb195X0p1bGlldGEjUHJpbmNlX29mX1dhbGVzIj5Sb21lbyB5IEp1bGlldGEgUHJpbmNlIG9mIFdhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5lYXJseS0xOTcwcyAtIERpc2NvbnRpbnVlZCBjMjAwMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDE3ODxzcGFuIGlkPSJpMiIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaHVyY2hpbGw8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIFByaW5jZSBvZiBXYWxlcyIgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBQcmluY2Ugb2YgV2FsZXMiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9QcmluY2Vfb2ZfV2FsZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNhbmV5IENhbmFww6kiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q2FuZXkjQ2FuYXB8ZSI+Q2FuZXkgQ2FuYXDDqTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBEaXNjb250aW51ZWQgMTk3Nzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaGljb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4yOSB4IDEwNjxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaWdhcmlsbG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ2FuZXkgQ2FuYXDDqSIgdGl0bGU9IkNhbmV5IENhbmFww6kiIHNyYz0iaW1hZ2VzXENhbmV5X0NhbmFww6lfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNhbmV5IFNlbGVjdG9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNhbmV5I1NlbGVjdG9zIj5DYW5leSBTZWxlY3RvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBEaXNjb250aW51ZWQgMTk3Nzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Vbmtub3duPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDEgeCAxMzg8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS40Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhbmV5IFNlbGVjdG9zIiB0aXRsZT0iQ2FuZXkgU2VsZWN0b3MiIHNyYz0iaW1hZ2VzXENhbmV5X1NlbGVjdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBCIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPU1vbnRlY3Jpc3RvI01vbnRlY3Jpc3RvX0IiPk1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzEgLSBEaXNjb250aW51ZWQgbWlkLTE5ODBzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvc2Fjb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEzNTxzcGFuIGlkPSJpNSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTW9udGVjcmlzdG8gTW9udGVjcmlzdG8gQiIgdGl0bGU9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEIiIHNyYz0iaW1hZ2VzXE1vbnRlY3Jpc3RvX01vbnRlY3Jpc3RvX0JfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBDb3JvbmFzIENsYXJvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1YWlfZHwtfHgzOTtPcnNheSNDb3JvbmFzX0NsYXJvIj5RdWFpIGQmIzM5O09yc2F5IENvcm9uYXMgQ2xhcm88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzQgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE0MjxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUXVhaSBkJiMzOTtPcnNheSBDb3JvbmFzIENsYXJvIiB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBDb3JvbmFzIENsYXJvIiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfQ29yb25hc19DbGFyb19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBDb3JvbmFzIENsYXJvIENsYXJvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1YWlfZHwtfHgzOTtPcnNheSNDb3JvbmFzX0NsYXJvX0NsYXJvIj5RdWFpIGQmIzM5O09yc2F5IENvcm9uYXMgQ2xhcm8gQ2xhcm88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzQgLSBEaXNjb250aW51ZWQgMTk5NTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlF1YWkgZCYjMzk7T3JzYXkgQ29yb25hcyBDbGFybyBDbGFybyIgdGl0bGU9IlF1YWkgZCYjMzk7T3JzYXkgQ29yb25hcyBDbGFybyBDbGFybyIgc3JjPSJpbWFnZXNcUXVhaV9kJ09yc2F5X0Nvcm9uYXNfQ2xhcm9fQ2xhcm9fY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEdpZ2FudGVzICgyKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYW18b25fQWxsb25lcyNHaWdhbnRlc18oMikiPlJhbcOzbiBBbGxvbmVzIEdpZ2FudGVzICgyKTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UHJvbWluZW50ZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OSB4IDE5NDxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Eb3VibGUgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJhbcOzbiBBbGxvbmVzIEdpZ2FudGVzICgyKSIgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEdpZ2FudGVzICgyKSIgc3JjPSJpbWFnZXNcUmFtw7NuX0FsbG9uZXNfR2lnYW50ZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNpZnVlbnRlcyBTdXBlciBFc3R1cGVuZG9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNpZnVlbnRlcyNTdXBlcl9Fc3R1cGVuZG9zIj5DaWZ1ZW50ZXMgU3VwZXIgRXN0dXBlbmRvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+cHJvcG9zZWQgMTk3NXMgLSBEaXNjb250aW51ZWQgMTk3NXM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R3JhbiBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDIzNTxzcGFuIGlkPSJpOSIgY2xhc3M9ImluY2giPiZuYnNwOyg5LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HaWFudCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ2lmdWVudGVzIFN1cGVyIEVzdHVwZW5kb3MiIHRpdGxlPSJDaWZ1ZW50ZXMgU3VwZXIgRXN0dXBlbmRvcyIgc3JjPSJpbWFnZXNcQ2lmdWVudGVzX1N1cGVyX0VzdHVwZW5kb3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TW9udGVjcmlzdG8jTW9udGVjcmlzdG9fQSI+TW9udGVjcmlzdG8gTW9udGVjcmlzdG8gQTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MSAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R3JhbiBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDIzNTxzcGFuIGlkPSJpMTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoOS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R2lhbnQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEEiIHRpdGxlPSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBBIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19Nb250ZWNyaXN0b19BX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiA1MDAwIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURhdmlkb2ZmIzUwMDAiPkRhdmlkb2ZmIDUwMDA8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzBzIC0gRGlzY29udGludWVkIDE5OTE8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hcyBHb3JkYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NiB4IDE0MzxzcGFuIGlkPSJpMTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R3JhbmQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRhdmlkb2ZmIDUwMDAiIHRpdGxlPSJEYXZpZG9mZiA1MDAwIiBzcmM9ImltYWdlc1xEYXZpZG9mZl81MDAwX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRhdmlkb2ZmIDQwMDAiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjNDAwMCI+RGF2aWRvZmYgNDAwMDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzIEdyYW5kZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE1NTxzcGFuIGlkPSJpMTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgNDAwMCIgdGl0bGU9IkRhdmlkb2ZmIDQwMDAiIHNyYz0iaW1hZ2VzXERhdmlkb2ZmXzQwMDBfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIFR1Ym9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPU1vbnRlY3Jpc3RvI01vbnRlY3Jpc3RvX1R1Ym9zIj5Nb250ZWNyaXN0byBNb250ZWNyaXN0byBUdWJvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXMgR3JhbmRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTU1PHNwYW4gaWQ9ImkxMyIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBUdWJvcyIgdGl0bGU9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIFR1Ym9zIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19Nb250ZWNyaXN0b19UdWJvc19jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJRdWFpIGQmIzM5O09yc2F5IEdyYW4gQ29yb25hIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1YWlfZHwtfHgzOTtPcnNheSNHcmFuX0Nvcm9uYSI+UXVhaSBkJiMzOTtPcnNheSBHcmFuIENvcm9uYTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3NCAtIERpc2NvbnRpbnVlZCBtaWQgdG8gbGF0ZS0yMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXMgR3JhbmRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTU1PHNwYW4gaWQ9ImkxNCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJRdWFpIGQmIzM5O09yc2F5IEdyYW4gQ29yb25hIiB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBHcmFuIENvcm9uYSIgc3JjPSJpbWFnZXNcUXVhaV9kJ09yc2F5X0dyYW5fQ29yb25hX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uNiI+RGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjY8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzYgLSBEaXNjb250aW51ZWQgZWFybHktMTk4MHM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTE1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjYiIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNiIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjZfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTWFyw61hIEd1ZXJyZXJvIEdyYW5kZXMgZGUgRXNwYW5hIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPU1hcnxpYV9HdWVycmVybyNHcmFuZGVzX2RlX0VzcGFuYSI+TWFyw61hIEd1ZXJyZXJvIEdyYW5kZXMgZGUgRXNwYW5hPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5sYXRlLTE5NzBzIC0gRGlzY29udGludWVkIGMxOTg1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRlbGljYWRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM4IHggMTkyPHNwYW4gaWQ9ImkxNiIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ik1hcsOtYSBHdWVycmVybyBHcmFuZGVzIGRlIEVzcGFuYSIgdGl0bGU9Ik1hcsOtYSBHdWVycmVybyBHcmFuZGVzIGRlIEVzcGFuYSIgc3JjPSJpbWFnZXNcTWFyaWFfR3VlcnJlcm9fR3JhbmRlc19kZV9Fc3BhbmFfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyA4LTktOCAoMikiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzIzgtOS04XygyKSI+UGFydGFnw6FzIDgtOS04ICgyKTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+bWlkIHRvIGxhdGUtMTk3MHMgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRhbGlhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQzIHggMTcwPHNwYW4gaWQ9ImkxNyIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjciKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgOC05LTggKDIpIiB0aXRsZT0iUGFydGFnw6FzIDgtOS04ICgyKSIgc3JjPSJpbWFnZXNcUGFydGFnw6FzXzguOS44Xyh2YXJuaXNoZWRfY2FiKV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYW3Ds24gQWxsb25lcyA4LTktOCBDYWJpbmV0IFNlbGVjdGlvbiAoMikiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFtfG9uX0FsbG9uZXMjOC05LThfQ2FiaW5ldF9TZWxlY3Rpb25fKDIpIj5SYW3Ds24gQWxsb25lcyA4LTktOCBDYWJpbmV0IFNlbGVjdGlvbiAoMik8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPm1pZC0xOTcwcyAtIERpc2NvbnRpbnVlZCAyMDAyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRhbGlhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQzIHggMTcwPHNwYW4gaWQ9ImkxOCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjciKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYW3Ds24gQWxsb25lcyA4LTktOCBDYWJpbmV0IFNlbGVjdGlvbiAoMikiIHRpdGxlPSJSYW3Ds24gQWxsb25lcyA4LTktOCBDYWJpbmV0IFNlbGVjdGlvbiAoMikiIHNyYz0iaW1hZ2VzXFJhbW9uX0FsbG9uZXNfOC45LjhWX0NhYmluZXRfU2VsZWN0aW9uXy1fSUlfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNhbmV5IFJveWFsIFBhbG1zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNhbmV5I1JveWFsX1BhbG1zIj5DYW5leSBSb3lhbCBQYWxtczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBEaXNjb250aW51ZWQgMTk3Nzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DdWxlYnJhcyAoc3RyYWlnaHQpPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzkgeCAxNDY8c3BhbiBpZD0iaTE5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhbmV5IFJveWFsIFBhbG1zIiB0aXRsZT0iQ2FuZXkgUm95YWwgUGFsbXMiIHNyYz0iaW1hZ2VzXENhbmV5X1JveWFsX1BhbG1zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uNyI+RGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjc8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzYgLSBEaXNjb250aW51ZWQgbGF0ZS0xOTgwczwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE1MjxzcGFuIGlkPSJpMjAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjciIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNyIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjdfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ2FuZXkgUHJlZGlsZWN0b3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q2FuZXkjUHJlZGlsZWN0b3MiPkNhbmV5IFByZWRpbGVjdG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTcwcyAtIERpc2NvbnRpbnVlZCAxOTc3PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MSB4IDEyNzxzcGFuIGlkPSJpMjEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhbmV5IFByZWRpbGVjdG9zIiB0aXRsZT0iQ2FuZXkgUHJlZGlsZWN0b3MiIHNyYz0iaW1hZ2VzXENhbmV5X1ByZWRpbGVjdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiAyMDAwIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURhdmlkb2ZmIzIwMDAiPkRhdmlkb2ZmIDIwMDA8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzBzIC0gRGlzY29udGludWVkIDE5OTE8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9ImkyMiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgMjAwMCIgdGl0bGU9IkRhdmlkb2ZmIDIwMDAiIHNyYz0iaW1hZ2VzXERhdmlkb2ZmXzIwMDBfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJvbMOtdmFyIFJveWFsIENvcm9uYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjUm95YWxfQ29yb25hcyI+Qm9sw612YXIgUm95YWwgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MyAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MCB4IDEyNDxzcGFuIGlkPSJpMjMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCb2zDrXZhciBSb3lhbCBDb3JvbmFzIiB0aXRsZT0iQm9sw612YXIgUm95YWwgQ29yb25hcyIgc3JjPSJpbWFnZXNcQm9sw612YXJfUm95YWxfQ29yb25hc19jaWdhcl9zbWFsbF8xLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgRCBOby40IiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyNTZXJpZV9EX05vLjQiPlBhcnRhZ8OhcyBTZXJpZSBEIE5vLjQ8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzUgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMjQ8c3BhbiBpZD0iaTI0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFNlcmllIEQgTm8uNCIgdGl0bGU9IlBhcnRhZ8OhcyBTZXJpZSBEIE5vLjQiIHNyYz0iaW1hZ2VzXFBhcnRhZ8Ohc19TZXJpZV9EX05vLjRfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNhbmV5IEJhbnF1ZXQgRmlubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYW5leSNCYW5xdWV0X0Zpbm8iPkNhbmV5IEJhbnF1ZXQgRmlubzwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBEaXNjb250aW51ZWQgMTk3Nzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Vbmtub3duPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzYgeCAxMjc8c3BhbiBpZD0iaTI1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNob3J0IFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhbmV5IEJhbnF1ZXQgRmlubyIgdGl0bGU9IkNhbmV5IEJhbnF1ZXQgRmlubyIgc3JjPSJpbWFnZXNcQ2FuZXlfQmFucXVldF9GaW5vX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDYW5leSBEZWxnYWRvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYW5leSNEZWxnYWRvcyI+Q2FuZXkgRGVsZ2Fkb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzBzIC0gRGlzY29udGludWVkIDE5Nzc8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM1IHggMTMwPHNwYW4gaWQ9ImkyNiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDYW5leSBEZWxnYWRvcyIgdGl0bGU9IkNhbmV5IERlbGdhZG9zIiBzcmM9ImltYWdlc1xDYW5leV9EZWxnYWRvc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDYW5leSBWZWd1ZXJvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYW5leSNWZWd1ZXJvcyI+Q2FuZXkgVmVndWVyb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzBzIC0gRGlzY29udGludWVkIDE5Nzc8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UHJlZmVyaWRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM4IHggMTI3PHNwYW4gaWQ9ImkyNyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDYW5leSBWZWd1ZXJvcyIgdGl0bGU9IkNhbmV5IFZlZ3Vlcm9zIiBzcmM9ImltYWdlc1xDYW5leV9WZWd1ZXJvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRGF2aWRvZmYgMzAwMCIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EYXZpZG9mZiMzMDAwIj5EYXZpZG9mZiAzMDAwPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTcwcyAtIERpc2NvbnRpbnVlZCAxOTkxPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk5pbmZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjMzIHggMTc4PHNwYW4gaWQ9ImkyOCIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbGltIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRhdmlkb2ZmIDMwMDAiIHRpdGxlPSJEYXZpZG9mZiAzMDAwIiBzcmM9ImltYWdlc1xEYXZpZG9mZl8zMDAwX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJRdWFpIGQmIzM5O09yc2F5IFBhbmV0ZWxhcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1RdWFpX2R8LXx4Mzk7T3JzYXkjUGFuZXRlbGFzIj5RdWFpIGQmIzM5O09yc2F5IFBhbmV0ZWxhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3NCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk5pbmZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjMzIHggMTc4PHNwYW4gaWQ9ImkyOSIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbGltIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlF1YWkgZCYjMzk7T3JzYXkgUGFuZXRlbGFzIiB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBQYW5ldGVsYXMiIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9QYW5ldGVsYXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRhdmlkb2ZmIDEwMDAiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjMTAwMCI+RGF2aWRvZmYgMTAwMDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3MHMgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYW5ldGVsYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNCB4IDExNzxzcGFuIGlkPSJpMzAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U21hbGwgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgMTAwMCIgdGl0bGU9IkRhdmlkb2ZmIDEwMDAiIHNyYz0iaW1hZ2VzXERhdmlkb2ZmXzEwMDBfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjwvdGFibGU+ZGRknuW4mP1cv63DpeO83kgKq+ZM6h69pbYSMIPQoxwyr0w=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26releasehigh%3d1979%26releaselow%3d1970%26specialreleaseid%3d0%26isreleasevague%3dtrue%26sortorder%3dcommonname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">1970 - 1979 Releases</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&releasehigh=1979&releaselow=1970&specialreleaseid=0&isreleasevague=true&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=1979&releaselow=1970&specialreleaseid=0&isreleasevague=true&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&releasehigh=1979&releaselow=1970&specialreleaseid=0&isreleasevague=true&sortorder=ring">Ring</a> x <a href="list.aspx?current=&releasehigh=1979&releaselow=1970&specialreleaseid=0&isreleasevague=true&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=1979&releaselow=1970&specialreleaseid=0&isreleasevague=true&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Dom Perignon" href="brand.aspx?brand=Davidoff#Dom_Perignon">Davidoff Dom Perignon</a>&nbsp;<span class="subcontent">1977 - Discontinued 1991</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i0" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Davidoff Dom Perignon" title="Davidoff Dom Perignon" src="images\Davidoff_Dom_Perignon_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Imperiales" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Imperiales">Quai d&#39;Orsay Imperiales</a>&nbsp;<span class="subcontent">1974 - Current</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i1" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Imperiales" title="Quai d&#39;Orsay Imperiales" src="images\Quai_d'Orsay_Imperiales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Prince of Wales" href="brand.aspx?brand=Romeo_y_Julieta#Prince_of_Wales">Romeo y Julieta Prince of Wales</a>&nbsp;<span class="subcontent">early-1970s - Discontinued c2002</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i2" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Prince of Wales" title="Romeo y Julieta Prince of Wales" src="images\Romeo_y_Julieta_Prince_of_Wales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Canapé" href="brand.aspx?brand=Caney#Canap|e">Caney Canapé</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i3" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Caney Canapé" title="Caney Canapé" src="images\Caney_Canapé_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Selectos" href="brand.aspx?brand=Caney#Selectos">Caney Selectos</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">41 x 138<span id="i4" class="inch">&nbsp;(5.4")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Caney Selectos" title="Caney Selectos" src="images\Caney_Selectos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Montecristo B" href="brand.aspx?brand=Montecristo#Montecristo_B">Montecristo Montecristo B</a>&nbsp;<span class="subcontent">1971 - Discontinued mid-1980s</span></td><td class="bordered-cell-L">Cosacos</td><td class="bordered-cell-L">42 x 135<span id="i5" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo B" title="Montecristo Montecristo B" src="images\Montecristo_Montecristo_B_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Coronas Claro" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Coronas_Claro">Quai d&#39;Orsay Coronas Claro</a>&nbsp;<span class="subcontent">1974 - Current</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i6" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Coronas Claro" title="Quai d&#39;Orsay Coronas Claro" src="images\Quai_d'Orsay_Coronas_Claro_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Coronas Claro Claro" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Coronas_Claro_Claro">Quai d&#39;Orsay Coronas Claro Claro</a>&nbsp;<span class="subcontent">1974 - Discontinued 1995</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i7" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Coronas Claro Claro" title="Quai d&#39;Orsay Coronas Claro Claro" src="images\Quai_d'Orsay_Coronas_Claro_Claro_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Gigantes (2)" href="brand.aspx?brand=Ram|on_Allones#Gigantes_(2)">Ramón Allones Gigantes (2)</a>&nbsp;<span class="subcontent">1976 - Current</span></td><td class="bordered-cell-L">Prominentes</td><td class="bordered-cell-L">49 x 194<span id="i8" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="Ramón Allones Gigantes (2)" title="Ramón Allones Gigantes (2)" src="images\Ramón_Allones_Gigantes_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cifuentes Super Estupendos" href="brand.aspx?brand=Cifuentes#Super_Estupendos">Cifuentes Super Estupendos</a>&nbsp;<span class="subcontent">proposed 1975s - Discontinued 1975s</span></td><td class="bordered-cell-L">Gran Corona</td><td class="bordered-cell-L">47 x 235<span id="i9" class="inch">&nbsp;(9.3")</span></td><td class="bordered-cell-L">Giant Corona</td><td class="bordered-cell-L"><img alt="Cifuentes Super Estupendos" title="Cifuentes Super Estupendos" src="images\Cifuentes_Super_Estupendos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Montecristo A" href="brand.aspx?brand=Montecristo#Montecristo_A">Montecristo Montecristo A</a>&nbsp;<span class="subcontent">1971 - Current</span></td><td class="bordered-cell-L">Gran Corona</td><td class="bordered-cell-L">47 x 235<span id="i10" class="inch">&nbsp;(9.3")</span></td><td class="bordered-cell-L">Giant Corona</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo A" title="Montecristo Montecristo A" src="images\Montecristo_Montecristo_A_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff 5000" href="brand.aspx?brand=Davidoff#5000">Davidoff 5000</a>&nbsp;<span class="subcontent">1970s - Discontinued 1991</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i11" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Davidoff 5000" title="Davidoff 5000" src="images\Davidoff_5000_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff 4000" href="brand.aspx?brand=Davidoff#4000">Davidoff 4000</a>&nbsp;<span class="subcontent">1970s - Discontinued 1991</span></td><td class="bordered-cell-L">Coronas Grandes</td><td class="bordered-cell-L">42 x 155<span id="i12" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Davidoff 4000" title="Davidoff 4000" src="images\Davidoff_4000_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Montecristo Tubos" href="brand.aspx?brand=Montecristo#Montecristo_Tubos">Montecristo Montecristo Tubos</a>&nbsp;<span class="subcontent">1970s - Current</span></td><td class="bordered-cell-L">Coronas Grandes</td><td class="bordered-cell-L">42 x 155<span id="i13" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo Tubos" title="Montecristo Montecristo Tubos" src="images\Montecristo_Montecristo_Tubos_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Gran Corona" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Gran_Corona">Quai d&#39;Orsay Gran Corona</a>&nbsp;<span class="subcontent">1974 - Discontinued mid to late-2006</span></td><td class="bordered-cell-L">Coronas Grandes</td><td class="bordered-cell-L">42 x 155<span id="i14" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Gran Corona" title="Quai d&#39;Orsay Gran Corona" src="images\Quai_d'Orsay_Gran_Corona_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.6" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.6">Diplomáticos Diplomáticos No.6</a>&nbsp;<span class="subcontent">1976 - Discontinued early-1980s</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i15" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.6" title="Diplomáticos Diplomáticos No.6" src="images\Diplomáticos_Diplomáticos_No.6_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="María Guerrero Grandes de Espana" href="brand.aspx?brand=Mar|ia_Guerrero#Grandes_de_Espana">María Guerrero Grandes de Espana</a>&nbsp;<span class="subcontent">late-1970s - Discontinued c1985</span></td><td class="bordered-cell-L">Delicados</td><td class="bordered-cell-L">38 x 192<span id="i16" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="María Guerrero Grandes de Espana" title="María Guerrero Grandes de Espana" src="images\Maria_Guerrero_Grandes_de_Espana_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás 8-9-8 (2)" href="brand.aspx?brand=Partag|as#8-9-8_(2)">Partagás 8-9-8 (2)</a>&nbsp;<span class="subcontent">mid to late-1970s - Current</span></td><td class="bordered-cell-L">Dalias</td><td class="bordered-cell-L">43 x 170<span id="i17" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Partagás 8-9-8 (2)" title="Partagás 8-9-8 (2)" src="images\Partagás_8.9.8_(varnished_cab)_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones 8-9-8 Cabinet Selection (2)" href="brand.aspx?brand=Ram|on_Allones#8-9-8_Cabinet_Selection_(2)">Ramón Allones 8-9-8 Cabinet Selection (2)</a>&nbsp;<span class="subcontent">mid-1970s - Discontinued 2002</span></td><td class="bordered-cell-L">Dalias</td><td class="bordered-cell-L">43 x 170<span id="i18" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Ramón Allones 8-9-8 Cabinet Selection (2)" title="Ramón Allones 8-9-8 Cabinet Selection (2)" src="images\Ramon_Allones_8.9.8V_Cabinet_Selection_-_II_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Royal Palms" href="brand.aspx?brand=Caney#Royal_Palms">Caney Royal Palms</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Culebras (straight)</td><td class="bordered-cell-L">39 x 146<span id="i19" class="inch">&nbsp;(5.7")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Caney Royal Palms" title="Caney Royal Palms" src="images\Caney_Royal_Palms_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.7" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.7">Diplomáticos Diplomáticos No.7</a>&nbsp;<span class="subcontent">1976 - Discontinued late-1980s</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i20" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.7" title="Diplomáticos Diplomáticos No.7" src="images\Diplomáticos_Diplomáticos_No.7_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Predilectos" href="brand.aspx?brand=Caney#Predilectos">Caney Predilectos</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">41 x 127<span id="i21" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Caney Predilectos" title="Caney Predilectos" src="images\Caney_Predilectos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff 2000" href="brand.aspx?brand=Davidoff#2000">Davidoff 2000</a>&nbsp;<span class="subcontent">1970s - Discontinued 1991</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i22" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Davidoff 2000" title="Davidoff 2000" src="images\Davidoff_2000_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Royal Coronas" href="brand.aspx?brand=Bol|ivar#Royal_Coronas">Bolívar Royal Coronas</a>&nbsp;<span class="subcontent">1973 - Current</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i23" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Bolívar Royal Coronas" title="Bolívar Royal Coronas" src="images\Bolívar_Royal_Coronas_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie D No.4" href="brand.aspx?brand=Partag|as#Serie_D_No.4">Partagás Serie D No.4</a>&nbsp;<span class="subcontent">1975 - Current</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i24" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Partagás Serie D No.4" title="Partagás Serie D No.4" src="images\Partagás_Serie_D_No.4_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Banquet Fino" href="brand.aspx?brand=Caney#Banquet_Fino">Caney Banquet Fino</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">36 x 127<span id="i25" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Caney Banquet Fino" title="Caney Banquet Fino" src="images\Caney_Banquet_Fino_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Delgados" href="brand.aspx?brand=Caney#Delgados">Caney Delgados</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">35 x 130<span id="i26" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Caney Delgados" title="Caney Delgados" src="images\Caney_Delgados_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Caney Vegueros" href="brand.aspx?brand=Caney#Vegueros">Caney Vegueros</a>&nbsp;<span class="subcontent">1970s - Discontinued 1977</span></td><td class="bordered-cell-L">Preferidos</td><td class="bordered-cell-L">38 x 127<span id="i27" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Caney Vegueros" title="Caney Vegueros" src="images\Caney_Vegueros_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff 3000" href="brand.aspx?brand=Davidoff#3000">Davidoff 3000</a>&nbsp;<span class="subcontent">1970s - Discontinued 1991</span></td><td class="bordered-cell-L">Ninfas</td><td class="bordered-cell-L">33 x 178<span id="i28" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="Davidoff 3000" title="Davidoff 3000" src="images\Davidoff_3000_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Panetelas" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Panetelas">Quai d&#39;Orsay Panetelas</a>&nbsp;<span class="subcontent">1974 - Discontinued 2010</span></td><td class="bordered-cell-L">Ninfas</td><td class="bordered-cell-L">33 x 178<span id="i29" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Panetelas" title="Quai d&#39;Orsay Panetelas" src="images\Quai_d'Orsay_Panetelas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff 1000" href="brand.aspx?brand=Davidoff#1000">Davidoff 1000</a>&nbsp;<span class="subcontent">1970s - Discontinued 1991</span></td><td class="bordered-cell-L">Panetelas</td><td class="bordered-cell-L">34 x 117<span id="i30" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Davidoff 1000" title="Davidoff 1000" src="images\Davidoff_1000_cigar_small.jpg"/></td></tr></table></span>
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
