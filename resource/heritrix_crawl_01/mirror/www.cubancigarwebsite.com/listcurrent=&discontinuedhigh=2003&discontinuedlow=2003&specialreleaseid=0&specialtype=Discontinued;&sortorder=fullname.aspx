


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2003 Deletions
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
var inchLimit = 22;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2003&amp;discontinuedlow=2003&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=fullname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDIyOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBcMGPHNwYW4gY2xhc3M9ImhlYWQxIj4yMDAzIERlbGV0aW9uczwvc3Bhbj48YnIgLz48YnIgLz48ZGl2IGlkPSJwcmludEhlYWREcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IGJsb2NrOyB0ZXh0LWFsaWduOmNlbnRlcjsiPiAgPHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIiBzZWxlY3RlZD0ic2VsZWN0ZWQiPkJyYW5kczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQmVsaW5kYSI+QmVsaW5kYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNCb2zDrXZhciI+Qm9sw612YXI8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ2FiYcOxYXMiPkNhYmHDsWFzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0VsX1JleV9kZWxfTXVuZG8iPkVsIFJleSBkZWwgTXVuZG88L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjSC5fVXBtYW5uIj5ILiBVcG1hbm48L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjSG95b19kZV9Nb250ZXJyZXkiPkhveW8gZGUgTW9udGVycmV5PC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1BhcnRhZ8OhcyI+UGFydGFnw6FzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1Bvcl9MYXJyYcOxYWdhIj5Qb3IgTGFycmHDsWFnYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNSb21lb195X0p1bGlldGEiPlJvbWVvIHkgSnVsaWV0YTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjwvZGl2PmRkAgIPDxYCHwEFw3Q8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAwMyZkaXNjb250aW51ZWRsb3c9MjAwMyZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDAzJmRpc2NvbnRpbnVlZGxvdz0yMDAzJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDAzJmRpc2NvbnRpbnVlZGxvdz0yMDAzJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDMmZGlzY29udGludWVkbG93PTIwMDMmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDAzJmRpc2NvbnRpbnVlZGxvdz0yMDAzJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJCZWxpbmRhIj5CZWxpbmRhPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBJVEMgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJlbGluZGEgQmVsdmVkZXJlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1CZWxpbmRhI0JlbHZlZGVyZXMiPkJlbHZlZGVyZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5CZWx2ZWRlcmVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzkgeCAxMjU8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2hvcnQgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQmVsaW5kYSBCZWx2ZWRlcmVzIiB0aXRsZT0iQmVsaW5kYSBCZWx2ZWRlcmVzIiBzcmM9ImltYWdlc1xCZWxpbmRhX0JlbHZlZGVyZXNfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJlbGluZGEgUGFuZXRlbGFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJlbGluZGEjUGFuZXRlbGFzIj5QYW5ldGVsYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TcG9ydHM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNSB4IDExNzxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCZWxpbmRhIFBhbmV0ZWxhcyIgdGl0bGU9IkJlbGluZGEgUGFuZXRlbGFzIiBzcmM9ImltYWdlc1xCZWxpbmRhX1BhbmV0ZWxhc19zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQmVsaW5kYSBQZXRpdCIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1CZWxpbmRhI1BldGl0Ij5QZXRpdDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk4OSAtIERpc2NvbnRpbnVlZCAyMDAzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzEgeCAxMDg8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U21hbGwgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQmVsaW5kYSBQZXRpdCIgdGl0bGU9IkJlbGluZGEgUGV0aXQiIHNyYz0iaW1hZ2VzXEJlbGluZGFfUGV0aXRfX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJCZWxpbmRhIFByaW5jZXNzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJlbGluZGEjUHJpbmNlc3MiPlByaW5jZXNzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTg5IC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RXBpY3VyZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNSB4IDExMDxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCZWxpbmRhIFByaW5jZXNzIiB0aXRsZT0iQmVsaW5kYSBQcmluY2VzcyIgc3JjPSJpbWFnZXNcQmVsaW5kYV9QcmluY2Vzc19zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJCb2zDrXZhciI+Qm9sw612YXI8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IE11bHRpTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJvbMOtdmFyIEJlbHZlZGVyZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjQmVsdmVkZXJlcyI+QmVsdmVkZXJlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5CZWx2ZWRlcmVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzkgeCAxMjU8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2hvcnQgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQm9sw612YXIgQmVsdmVkZXJlcyIgdGl0bGU9IkJvbMOtdmFyIEJlbHZlZGVyZXMiIHNyYz0iaW1hZ2VzXEJvbMOtdmFyX0JlbHZlZGVyZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iQ2FiYcOxYXMiPkNhYmHDsWFzPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBEaXNjb250aW51ZWQgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNhYmHDsWFzIENoaXF1aXRvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYWJhfG5hcyNDaGlxdWl0b3MiPkNoaXF1aXRvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk4OSAtIERpc2NvbnRpbnVlZCAyMDAzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkluZmFudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzcgeCA5ODxzcGFuIGlkPSJpNSIgY2xhc3M9ImluY2giPiZuYnNwOygzLjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBQZXJmZWN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDYWJhw7FhcyBDaGlxdWl0b3MiIHRpdGxlPSJDYWJhw7FhcyBDaGlxdWl0b3MiIHNyYz0iaW1hZ2VzXENhYmHDsWFzX0NoaXF1aXRvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ2FiYcOxYXMgQ29yb25pdGFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNhYmF8bmFzI0Nvcm9uaXRhcyI+Q29yb25pdGFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTg5IC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2hpY29zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjkgeCAxMDY8c3BhbiBpZD0iaTYiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2lnYXJpbGxvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhYmHDsWFzIENvcm9uaXRhcyIgdGl0bGU9IkNhYmHDsWFzIENvcm9uaXRhcyIgc3JjPSJpbWFnZXNcQ2FiYcOxYXNfQ29yb25pdGFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDYWJhw7FhcyBQZXJmZWN0b3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q2FiYXxuYXMjUGVyZmVjdG9zIj5QZXJmZWN0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXJmZWN0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NCB4IDEyNzxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBQZXJmZWN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDYWJhw7FhcyBQZXJmZWN0b3MiIHRpdGxlPSJDYWJhw7FhcyBQZXJmZWN0b3MiIHNyYz0iaW1hZ2VzXENhYmHDsWFzX1BlcmZlY3Rvc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDYWJhw7FhcyBTdXBlcmZpbm9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNhYmF8bmFzI1N1cGVyZmlub3MiPlN1cGVyZmlub3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3Jvbml0YXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDExNzxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ2FiYcOxYXMgU3VwZXJmaW5vcyIgdGl0bGU9IkNhYmHDsWFzIFN1cGVyZmlub3MiIHNyYz0iaW1hZ2VzXENhYmHDsWFzX1N1cGVyZmlub3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iRWxfUmV5X2RlbF9NdW5kbyI+RWwgUmV5IGRlbCBNdW5kbzwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkVsIFJleSBkZWwgTXVuZG8gUGV0aXQgTG9uc2RhbGVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUVsX1JleV9kZWxfTXVuZG8jUGV0aXRfTG9uc2RhbGVzIj5QZXRpdCBMb25zZGFsZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9Imk5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJFbCBSZXkgZGVsIE11bmRvIFBldGl0IExvbnNkYWxlcyIgdGl0bGU9IkVsIFJleSBkZWwgTXVuZG8gUGV0aXQgTG9uc2RhbGVzIiBzcmM9ImltYWdlc1xFbF9SZXlfZGVsX011bmRvX1BldGl0X0xvbnNkYWxlc19jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IkguX1VwbWFubiI+SC4gVXBtYW5uPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkguIFVwbWFubiBBcm9tYXRpY29zICgyKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1ILl9VcG1hbm4jQXJvbWF0aWNvc18oMikiPkFyb21hdGljb3MgKDIpPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDAzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEyOTxzcGFuIGlkPSJpMTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkguIFVwbWFubiBBcm9tYXRpY29zICgyKSIgdGl0bGU9IkguIFVwbWFubiBBcm9tYXRpY29zICgyKSIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX0Fyb21hdGljb3NfKDIpX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkguIFVwbWFubiBCZWx2ZWRlcmVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUguX1VwbWFubiNCZWx2ZWRlcmVzIj5CZWx2ZWRlcmVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDAzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkJlbHZlZGVyZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOSB4IDEyNTxzcGFuIGlkPSJpMTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2hvcnQgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIEJlbHZlZGVyZXMiIHRpdGxlPSJILiBVcG1hbm4gQmVsdmVkZXJlcyIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX0JlbHZlZGVyZXNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSC4gVXBtYW5uIFNpbmd1bGFyZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SC5fVXBtYW5uI1Npbmd1bGFyZXMiPlNpbmd1bGFyZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25pdGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMTc8c3BhbiBpZD0iaTEyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJILiBVcG1hbm4gU2luZ3VsYXJlcyIgdGl0bGU9IkguIFVwbWFubiBTaW5ndWxhcmVzIiBzcmM9ImltYWdlc1xILl9VcG1hbm5fU2luZ3VsYXJlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJIb3lvX2RlX01vbnRlcnJleSI+SG95byBkZSBNb250ZXJyZXk8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgRXhxdWlzaXRvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSNFeHF1aXNpdG9zIj5FeHF1aXNpdG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDAzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENldHJvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTI5PHNwYW4gaWQ9ImkxMyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgRXhxdWlzaXRvcyIgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IEV4cXVpc2l0b3MiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X0V4cXVpc2l0b3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IExlIEhveW8gZGUgRGF1cGhpbiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSNMZV9Ib3lvX2RlX0RhdXBoaW4iPkxlIEhveW8gZGUgRGF1cGhpbjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE1MjxzcGFuIGlkPSJpMTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgTGUgSG95byBkZSBEYXVwaGluIiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgTGUgSG95byBkZSBEYXVwaGluIiBzcmM9ImltYWdlc1xIb3lvX2RlX01vbnRlcnJleV9MZV9Ib3lvX2RlX0RhdXBoaW5fY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IFBldGl0IENvcm9uYXRpb25zICgxKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSNQZXRpdF9Db3JvbmF0aW9uc18oMSkiPlBldGl0IENvcm9uYXRpb25zICgxKTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5GcmFuY2lzY2Fub3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDExNjxzcGFuIGlkPSJpMTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkhveW8gZGUgTW9udGVycmV5IFBldGl0IENvcm9uYXRpb25zICgxKSIgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IFBldGl0IENvcm9uYXRpb25zICgxKSIgc3JjPSJpbWFnZXNcSG95b19kZV9Nb250ZXJyZXlfUGV0aXRfQ29yb25hdGlvbnNfKEgpX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBQZXRpdCBDb3JvbmF0aW9ucyAoMikiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SG95b19kZV9Nb250ZXJyZXkjUGV0aXRfQ29yb25hdGlvbnNfKDIpIj5QZXRpdCBDb3JvbmF0aW9ucyAoMik8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25pdGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMTc8c3BhbiBpZD0iaTE2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJIb3lvIGRlIE1vbnRlcnJleSBQZXRpdCBDb3JvbmF0aW9ucyAoMikiIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBQZXRpdCBDb3JvbmF0aW9ucyAoMikiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X1BldGl0X0Nvcm9uYXRpb25zXyhNKV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBSb3lhbCBDb3JvbmF0aW9ucyAoMikiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SG95b19kZV9Nb250ZXJyZXkjUm95YWxfQ29yb25hdGlvbnNfKDIpIj5Sb3lhbCBDb3JvbmF0aW9ucyAoMik8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29uc2VydmFzIChvbGQpPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDQgeCAxNDU8c3BhbiBpZD0iaTE3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJIb3lvIGRlIE1vbnRlcnJleSBSb3lhbCBDb3JvbmF0aW9ucyAoMikiIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBSb3lhbCBDb3JvbmF0aW9ucyAoMikiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X1JveWFsX0Nvcm9uYXRpb25zXyhNKV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlBhcnRhZ8OhcyI+UGFydGFnw6FzPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyBMb25zZGFsZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzI0xvbnNkYWxlcyI+TG9uc2RhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDAzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNlcnZhbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTY1PHNwYW4gaWQ9ImkxOCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgTG9uc2RhbGVzIiB0aXRsZT0iUGFydGFnw6FzIExvbnNkYWxlcyIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX0xvbnNkYWxlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIFBldGl0IEJvdXF1ZXRzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyNQZXRpdF9Cb3VxdWV0cyI+UGV0aXQgQm91cXVldHM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SW5mYW50ZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNyB4IDk4PHNwYW4gaWQ9ImkxOSIgY2xhc3M9ImluY2giPiZuYnNwOygzLjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBQZXJmZWN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgUGV0aXQgQm91cXVldHMiIHRpdGxlPSJQYXJ0YWfDoXMgUGV0aXQgQm91cXVldHMiIHNyYz0iaW1hZ2VzXFBhcnRhZ8Ohc19QZXRpdF9Cb3VxdWV0c19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJQb3JfTGFycmHDsWFnYSI+UG9yIExhcnJhw7FhZ2E8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQb3IgTGFycmHDsWFnYSBMb2xhcyBlbiBDZWRybyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Qb3JfTGFycmF8bmFnYSNMb2xhc19lbl9DZWRybyI+TG9sYXMgZW4gQ2Vkcm88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9ImkyMCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUG9yIExhcnJhw7FhZ2EgTG9sYXMgZW4gQ2Vkcm8iIHRpdGxlPSJQb3IgTGFycmHDsWFnYSBMb2xhcyBlbiBDZWRybyIgc3JjPSJpbWFnZXNcUG9yX0xhcnJhw7FhZ2FfTG9sYXNfZW5fQ2Vkcm9fY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUm9tZW9feV9KdWxpZXRhIj5Sb21lbyB5IEp1bGlldGE8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFBlcmZlY3RvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Sb21lb195X0p1bGlldGEjUGVyZmVjdG9zIj5QZXJmZWN0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVyZmVjdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDQgeCAxMjc8c3BhbiBpZD0iaTIxIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IFBlcmZlY3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJvbWVvIHkgSnVsaWV0YSBQZXJmZWN0b3MiIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgUGVyZmVjdG9zIiBzcmM9ImltYWdlc1xSb21lb195X0p1bGlldGFfUGVyZmVjdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgUGlyYW1pZGVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJvbWVvX3lfSnVsaWV0YSNQaXJhbWlkZXMiPlBpcmFtaWRlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+bGF0ZS0yMDAwIC0gRGlzY29udGludWVkIDIwMDM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTU2PHNwYW4gaWQ9ImkyMiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QeXJhbWlkPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJvbWVvIHkgSnVsaWV0YSBQaXJhbWlkZXMiIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgUGlyYW1pZGVzIiBzcmM9ImltYWdlc1xSb21lb195X0p1bGlldGFfUGlyYW1pZGVzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48L3RhYmxlPmRkZMH9YzvpzI+uZANlMvNmMGrZVz2rRY3ye7V8EjtrLe1S" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2003%26discontinuedlow%3d2003%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dfullname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2003 Deletions</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Belinda">Belinda</option><option value="#Bolívar">Bolívar</option><option value="#Cabañas">Cabañas</option><option value="#El_Rey_del_Mundo">El Rey del Mundo</option><option value="#H._Upmann">H. Upmann</option><option value="#Hoyo_de_Monterrey">Hoyo de Monterrey</option><option value="#Partagás">Partagás</option><option value="#Por_Larrañaga">Por Larrañaga</option><option value="#Romeo_y_Julieta">Romeo y Julieta</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2003&discontinuedlow=2003&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2003&discontinuedlow=2003&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2003&discontinuedlow=2003&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2003&discontinuedlow=2003&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2003&discontinuedlow=2003&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Belinda">Belinda</a><span class="brand-type">&nbsp; -&nbsp; ITC Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Belvederes" href="brand.aspx?brand=Belinda#Belvederes">Belvederes</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i0" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Belinda Belvederes" title="Belinda Belvederes" src="images\Belinda_Belvederes_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Panetelas" href="brand.aspx?brand=Belinda#Panetelas">Panetelas</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Sports</td><td class="bordered-cell-L">35 x 117<span id="i1" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Belinda Panetelas" title="Belinda Panetelas" src="images\Belinda_Panetelas_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Petit" href="brand.aspx?brand=Belinda#Petit">Petit</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Petit</td><td class="bordered-cell-L">31 x 108<span id="i2" class="inch">&nbsp;(4.3")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Belinda Petit" title="Belinda Petit" src="images\Belinda_Petit__small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Princess" href="brand.aspx?brand=Belinda#Princess">Princess</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Epicures</td><td class="bordered-cell-L">35 x 110<span id="i3" class="inch">&nbsp;(4.3")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Belinda Princess" title="Belinda Princess" src="images\Belinda_Princess_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Bolívar">Bolívar</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Belvederes" href="brand.aspx?brand=Bol|ivar#Belvederes">Belvederes</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i4" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Bolívar Belvederes" title="Bolívar Belvederes" src="images\Bolívar_Belvederes_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Cabañas">Cabañas</a><span class="brand-type">&nbsp; -&nbsp; Discontinued Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Chiquitos" href="brand.aspx?brand=Caba|nas#Chiquitos">Chiquitos</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Infantes</td><td class="bordered-cell-L">37 x 98<span id="i5" class="inch">&nbsp;(3.9")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Cabañas Chiquitos" title="Cabañas Chiquitos" src="images\Cabañas_Chiquitos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Coronitas" href="brand.aspx?brand=Caba|nas#Coronitas">Coronitas</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i6" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Cabañas Coronitas" title="Cabañas Coronitas" src="images\Cabañas_Coronitas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Perfectos" href="brand.aspx?brand=Caba|nas#Perfectos">Perfectos</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Perfectos</td><td class="bordered-cell-L">44 x 127<span id="i7" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Cabañas Perfectos" title="Cabañas Perfectos" src="images\Cabañas_Perfectos_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Superfinos" href="brand.aspx?brand=Caba|nas#Superfinos">Superfinos</a>&nbsp;<span class="subcontent">1989 - Discontinued 2003</span></td><td class="bordered-cell-L">Coronitas</td><td class="bordered-cell-L">40 x 117<span id="i8" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Cabañas Superfinos" title="Cabañas Superfinos" src="images\Cabañas_Superfinos_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="El_Rey_del_Mundo">El Rey del Mundo</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Petit Lonsdales" href="brand.aspx?brand=El_Rey_del_Mundo#Petit_Lonsdales">Petit Lonsdales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i9" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Petit Lonsdales" title="El Rey del Mundo Petit Lonsdales" src="images\El_Rey_del_Mundo_Petit_Lonsdales_cigar_small_2.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="H._Upmann">H. Upmann</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Aromaticos (2)" href="brand.aspx?brand=H._Upmann#Aromaticos_(2)">Aromaticos (2)</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Petit Coronas</td><td class="bordered-cell-L">42 x 129<span id="i10" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="H. Upmann Aromaticos (2)" title="H. Upmann Aromaticos (2)" src="images\H._Upmann_Aromaticos_(2)_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Belvederes" href="brand.aspx?brand=H._Upmann#Belvederes">Belvederes</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i11" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="H. Upmann Belvederes" title="H. Upmann Belvederes" src="images\H._Upmann_Belvederes_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Singulares" href="brand.aspx?brand=H._Upmann#Singulares">Singulares</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Coronitas</td><td class="bordered-cell-L">40 x 117<span id="i12" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="H. Upmann Singulares" title="H. Upmann Singulares" src="images\H._Upmann_Singulares_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Hoyo_de_Monterrey">Hoyo de Monterrey</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Exquisitos" href="brand.aspx?brand=Hoyo_de_Monterrey#Exquisitos">Exquisitos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Petit Cetros</td><td class="bordered-cell-L">40 x 129<span id="i13" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Exquisitos" title="Hoyo de Monterrey Exquisitos" src="images\Hoyo_de_Monterrey_Exquisitos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Le Hoyo de Dauphin" href="brand.aspx?brand=Hoyo_de_Monterrey#Le_Hoyo_de_Dauphin">Le Hoyo de Dauphin</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i14" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Le Hoyo de Dauphin" title="Hoyo de Monterrey Le Hoyo de Dauphin" src="images\Hoyo_de_Monterrey_Le_Hoyo_de_Dauphin_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Petit Coronations (1)" href="brand.aspx?brand=Hoyo_de_Monterrey#Petit_Coronations_(1)">Petit Coronations (1)</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Franciscanos</td><td class="bordered-cell-L">40 x 116<span id="i15" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Petit Coronations (1)" title="Hoyo de Monterrey Petit Coronations (1)" src="images\Hoyo_de_Monterrey_Petit_Coronations_(H)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Petit Coronations (2)" href="brand.aspx?brand=Hoyo_de_Monterrey#Petit_Coronations_(2)">Petit Coronations (2)</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Coronitas</td><td class="bordered-cell-L">40 x 117<span id="i16" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Petit Coronations (2)" title="Hoyo de Monterrey Petit Coronations (2)" src="images\Hoyo_de_Monterrey_Petit_Coronations_(M)_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Royal Coronations (2)" href="brand.aspx?brand=Hoyo_de_Monterrey#Royal_Coronations_(2)">Royal Coronations (2)</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Conservas (old)</td><td class="bordered-cell-L">44 x 145<span id="i17" class="inch">&nbsp;(5.7")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Royal Coronations (2)" title="Hoyo de Monterrey Royal Coronations (2)" src="images\Hoyo_de_Monterrey_Royal_Coronations_(M)_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Partagás">Partagás</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Lonsdales" href="brand.aspx?brand=Partag|as#Lonsdales">Lonsdales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i18" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Partagás Lonsdales" title="Partagás Lonsdales" src="images\Partagás_Lonsdales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Petit Bouquets" href="brand.aspx?brand=Partag|as#Petit_Bouquets">Petit Bouquets</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Infantes</td><td class="bordered-cell-L">37 x 98<span id="i19" class="inch">&nbsp;(3.9")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Partagás Petit Bouquets" title="Partagás Petit Bouquets" src="images\Partagás_Petit_Bouquets_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Por_Larrañaga">Por Larrañaga</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Lolas en Cedro" href="brand.aspx?brand=Por_Larra|naga#Lolas_en_Cedro">Lolas en Cedro</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Petit Coronas</td><td class="bordered-cell-L">42 x 129<span id="i20" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Por Larrañaga Lolas en Cedro" title="Por Larrañaga Lolas en Cedro" src="images\Por_Larrañaga_Lolas_en_Cedro_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Romeo_y_Julieta">Romeo y Julieta</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Perfectos" href="brand.aspx?brand=Romeo_y_Julieta#Perfectos">Perfectos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2003</span></td><td class="bordered-cell-L">Perfectos</td><td class="bordered-cell-L">44 x 127<span id="i21" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Perfectos" title="Romeo y Julieta Perfectos" src="images\Romeo_y_Julieta_Perfectos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Piramides" href="brand.aspx?brand=Romeo_y_Julieta#Piramides">Piramides</a>&nbsp;<span class="subcontent">late-2000 - Discontinued 2003</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i22" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Piramides" title="Romeo y Julieta Piramides" src="images\Romeo_y_Julieta_Piramides_cigar_small.jpg"/></td></tr></table></span>
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
