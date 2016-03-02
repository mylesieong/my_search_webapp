


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Search Results
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
var inchLimit = 12;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=Duty_Free_and_Travel_Retail_Series%3b&amp;includeimages=True&amp;sortorder=factoryname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDEyOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPlNlYXJjaCBSZXN1bHRzPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEF+EI8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPUR1dHlfRnJlZV9hbmRfVHJhdmVsX1JldGFpbF9TZXJpZXM7JmluY2x1ZGVpbWFnZXM9VHJ1ZSZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9RHV0eV9GcmVlX2FuZF9UcmF2ZWxfUmV0YWlsX1NlcmllczsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9RHV0eV9GcmVlX2FuZF9UcmF2ZWxfUmV0YWlsX1NlcmllczsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1EdXR5X0ZyZWVfYW5kX1RyYXZlbF9SZXRhaWxfU2VyaWVzOyZpbmNsdWRlaW1hZ2VzPVRydWUmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9RHV0eV9GcmVlX2FuZF9UcmF2ZWxfUmV0YWlsX1NlcmllczsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgVHJhdmVsIEh1bWlkb3IiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SG95b19kZV9Nb250ZXJyZXkjMjM2X1RyYXZlbF9IdW1pZG9yIj5Ib3lvIGRlIE1vbnRlcnJleSBEb3VibGUgRXBpY3VyZTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxMCAtIFRyYXZlbCBIdW1pZG9yPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvYmxlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTU1PHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG8gRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgRG91YmxlIEVwaWN1cmUiIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBEb3VibGUgRXBpY3VyZSIgc3JjPSJpbWFnZXNcSG95b19kZV9Nb250ZXJyZXlfRG91YmxlX0VwaWN1cmVfY2lnYXJfc21hbGxfMy5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIFRyYXZlbCBIdW1pZG9yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyM0MTVfVHJhdmVsX0h1bWlkb3IiPlBhcnRhZ8OhcyBTZXJpZSBFIE5vIDI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTUgLSBUcmF2ZWwgSHVtaWRvcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5EdWtlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTQgeCAxNDA8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU2VyaWUgRSBObyAyIiB0aXRsZT0iUGFydGFnw6FzIFNlcmllIEUgTm8gMiIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1NlcmllX0VfTm9fMl9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTW9udGVjcmlzdG8gVHJhdmVsIEh1bWlkb3IiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TW9udGVjcmlzdG8jMTA5X1RyYXZlbF9IdW1pZG9yIj5Nb250ZWNyaXN0byBFZG11bmRvPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA2IC0gVHJhdmVsIEh1bWlkb3I8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RWRtdW5kbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTM1PHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTW9udGVjcmlzdG8gRWRtdW5kbyIgdGl0bGU9Ik1vbnRlY3Jpc3RvIEVkbXVuZG8iIHNyYz0iaW1hZ2VzXE1vbnRlY3Jpc3RvX0VkbXVuZG9fY2lnYXJfc21hbGxfNC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTW9udGVjcmlzdG8gU3BlY2lhbCBUdWJlIFNlbGVjdGlvbiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Nb250ZWNyaXN0byMxOTJfU3BlY2lhbF9UdWJlX1NlbGVjdGlvbiI+TW9udGVjcmlzdG8gUGV0aXQgRWRtdW5kbzwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOCAtIFNwZWNpYWwgVHViZSBTZWxlY3Rpb248L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgRWRtdW5kbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTEwPHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IFJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTW9udGVjcmlzdG8gUGV0aXQgRWRtdW5kbyIgdGl0bGU9Ik1vbnRlY3Jpc3RvIFBldGl0IEVkbXVuZG8iIHNyYz0iaW1hZ2VzXE1vbnRlY3Jpc3RvX1BldGl0X0VkbXVuZG9fY2lnYXJfc21hbGxfNC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIENlcmFtaWMgSmFyIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyMyMDNfQ2VyYW1pY19KYXIiPlBhcnRhZ8OhcyBTZXJpZSBQIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBDZXJhbWljIEphcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBQaXLDoW1pZGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMjc8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUHlyYW1pZDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU2VyaWUgUCBOby4xIiB0aXRsZT0iUGFydGFnw6FzIFNlcmllIFAgTm8uMSIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1NlcmllX1BfTm8uMV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgU2VsZWNjacOzbiBQZXRpdCBSb2J1c3RvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSMzMDlfU2VsZWNjaXxvbl9QZXRpdF9Sb2J1c3RvIj5Db2hpYmEgUGV0aXQgUm9idXN0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTIgLSBTZWxlY2Npw7NuIFBldGl0IFJvYnVzdG88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUm9idXN0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MCB4IDEwMjxzcGFuIGlkPSJpNSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBSb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBQZXRpdCBSb2J1c3RvcyIgdGl0bGU9IkNvaGliYSBQZXRpdCBSb2J1c3RvcyIgc3JjPSJpbWFnZXNcQ29oaWJhX1BldGl0X1JvYnVzdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJILiBVcG1hbm4gU2VsZWNjacOzbiBQZXRpdCBSb2J1c3RvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUguX1VwbWFubiMzMDlfU2VsZWNjaXxvbl9QZXRpdF9Sb2J1c3RvIj5ILiBVcG1hbm4gUGV0aXQgUm9idXN0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTIgLSBTZWxlY2Npw7NuIFBldGl0IFJvYnVzdG88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUm9idXN0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MCB4IDEwMjxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBSb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkguIFVwbWFubiBQZXRpdCBSb2J1c3RvcyIgdGl0bGU9IkguIFVwbWFubiBQZXRpdCBSb2J1c3RvcyIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX1BldGl0X1JvYnVzdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBTcGVjaWFsIFR1YmUgU2VsZWN0aW9uIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUhveW9fZGVfTW9udGVycmV5IzE5Ml9TcGVjaWFsX1R1YmVfU2VsZWN0aW9uIj5Ib3lvIGRlIE1vbnRlcnJleSBQZXRpdCBSb2J1c3RvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOCAtIFNwZWNpYWwgVHViZSBTZWxlY3Rpb248L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUm9idXN0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MCB4IDEwMjxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBSb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkhveW8gZGUgTW9udGVycmV5IFBldGl0IFJvYnVzdG9zIiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgUGV0aXQgUm9idXN0b3MiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X1BldGl0X1JvYnVzdG9zX2NpZ2FyX3NtYWxsXzUuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIFNlbGVjY2nDs24gUGV0aXQgUm9idXN0byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Nb250ZWNyaXN0byMzMDlfU2VsZWNjaXxvbl9QZXRpdF9Sb2J1c3RvIj5Nb250ZWNyaXN0byBQZXRpdCBSb2J1c3RvPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDEyIC0gU2VsZWNjacOzbiBQZXRpdCBSb2J1c3RvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IFJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMDI8c3BhbiBpZD0iaTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUm9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJNb250ZWNyaXN0byBQZXRpdCBSb2J1c3RvIiB0aXRsZT0iTW9udGVjcmlzdG8gUGV0aXQgUm9idXN0byIgc3JjPSJpbWFnZXNcTW9udGVjcmlzdG9fUGV0aXRfUm9idXN0b19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIFNlbGVjY2nDs24gUGV0aXQgUm9idXN0byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjMzA5X1NlbGVjY2l8b25fUGV0aXRfUm9idXN0byI+UGFydGFnw6FzIFBldGl0IFJvYnVzdG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDEyIC0gU2VsZWNjacOzbiBQZXRpdCBSb2J1c3RvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IFJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMDI8c3BhbiBpZD0iaTkiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUm9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgUGV0aXQgUm9idXN0b3MiIHRpdGxlPSJQYXJ0YWfDoXMgUGV0aXQgUm9idXN0b3MiIHNyYz0iaW1hZ2VzXFBhcnRhZ8Ohc19QZXRpdF9Sb2J1c3Rvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFNlbGVjY2nDs24gUGV0aXQgUm9idXN0byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Sb21lb195X0p1bGlldGEjMzA5X1NlbGVjY2l8b25fUGV0aXRfUm9idXN0byI+Um9tZW8geSBKdWxpZXRhIFBldGl0IFJvYnVzdG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDEyIC0gU2VsZWNjacOzbiBQZXRpdCBSb2J1c3RvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IFJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMDI8c3BhbiBpZD0iaTEwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IFJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIFBldGl0IFJvYnVzdG9zIiB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFBldGl0IFJvYnVzdG9zIiBzcmM9ImltYWdlc1xSb21lb195X0p1bGlldGFfUGV0aXRfUm9idXN0b3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkguIFVwbWFubiBUcmF2ZWwgSHVtaWRvciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1ILl9VcG1hbm4jODVfVHJhdmVsX0h1bWlkb3IiPkguIFVwbWFubiBSb2J1c3RvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwNyAtIFRyYXZlbCBIdW1pZG9yPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMjQ8c3BhbiBpZD0iaTExIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIFJvYnVzdG9zIiB0aXRsZT0iSC4gVXBtYW5uIFJvYnVzdG9zIiBzcmM9ImltYWdlc1xILl9VcG1hbm5fUm9idXN0b3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBTcGVjaWFsIFR1YmUgU2VsZWN0aW9uIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJvbWVvX3lfSnVsaWV0YSMxOTJfU3BlY2lhbF9UdWJlX1NlbGVjdGlvbiI+Um9tZW8geSBKdWxpZXRhIFNob3J0IENodXJjaGlsbHM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDggLSBTcGVjaWFsIFR1YmUgU2VsZWN0aW9uPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxMjQ8c3BhbiBpZD0iaTEyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIFNob3J0IENodXJjaGlsbHMiIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgU2hvcnQgQ2h1cmNoaWxscyIgc3JjPSJpbWFnZXNcUm9tZW9feV9KdWxpZXRhX1Nob3J0X0NodXJjaGlsbHNfY2lnYXJfc21hbGxfMy5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGRrrRSrFWtsTCO010mcD9u3OfIizx49zWeGAVs1I8OX0A==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dDuty_Free_and_Travel_Retail_Series%3b%26includeimages%3dTrue%26sortorder%3dfactoryname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">Search Results</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Duty_Free_and_Travel_Retail_Series;&includeimages=True&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Duty_Free_and_Travel_Retail_Series;&includeimages=True&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Duty_Free_and_Travel_Retail_Series;&includeimages=True&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Duty_Free_and_Travel_Retail_Series;&includeimages=True&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Duty_Free_and_Travel_Retail_Series;&includeimages=True&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Travel Humidor" href="brand.aspx?brand=Hoyo_de_Monterrey#236_Travel_Humidor">Hoyo de Monterrey Double Epicure</a>&nbsp;<span class="subcontent">2010 - Travel Humidor</span></td><td class="bordered-cell-L">Dobles</td><td class="bordered-cell-L">50 x 155<span id="i0" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Double Epicure" title="Hoyo de Monterrey Double Epicure" src="images\Hoyo_de_Monterrey_Double_Epicure_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Travel Humidor" href="brand.aspx?brand=Partag|as#415_Travel_Humidor">Partagás Serie E No 2</a>&nbsp;<span class="subcontent">2015 - Travel Humidor</span></td><td class="bordered-cell-L">Duke</td><td class="bordered-cell-L">54 x 140<span id="i1" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Partagás Serie E No 2" title="Partagás Serie E No 2" src="images\Partagás_Serie_E_No_2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Travel Humidor" href="brand.aspx?brand=Montecristo#109_Travel_Humidor">Montecristo Edmundo</a>&nbsp;<span class="subcontent">2006 - Travel Humidor</span></td><td class="bordered-cell-L">Edmundo</td><td class="bordered-cell-L">52 x 135<span id="i2" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Montecristo Edmundo" title="Montecristo Edmundo" src="images\Montecristo_Edmundo_cigar_small_4.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Special Tube Selection" href="brand.aspx?brand=Montecristo#192_Special_Tube_Selection">Montecristo Petit Edmundo</a>&nbsp;<span class="subcontent">2008 - Special Tube Selection</span></td><td class="bordered-cell-L">Petit Edmundo</td><td class="bordered-cell-L">52 x 110<span id="i3" class="inch">&nbsp;(4.3")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Montecristo Petit Edmundo" title="Montecristo Petit Edmundo" src="images\Montecristo_Petit_Edmundo_cigar_small_4.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Ceramic Jar" href="brand.aspx?brand=Partag|as#203_Ceramic_Jar">Partagás Serie P No.1</a>&nbsp;<span class="subcontent">2009 - Ceramic Jar</span></td><td class="bordered-cell-L">Petit Pirámides</td><td class="bordered-cell-L">50 x 127<span id="i4" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Petit Pyramid</td><td class="bordered-cell-L"><img alt="Partagás Serie P No.1" title="Partagás Serie P No.1" src="images\Partagás_Serie_P_No.1_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Selección Petit Robusto" href="brand.aspx?brand=Cohiba#309_Selecci|on_Petit_Robusto">Cohiba Petit Robustos</a>&nbsp;<span class="subcontent">2012 - Selección Petit Robusto</span></td><td class="bordered-cell-L">Petit Robustos</td><td class="bordered-cell-L">50 x 102<span id="i5" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Cohiba Petit Robustos" title="Cohiba Petit Robustos" src="images\Cohiba_Petit_Robustos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Selección Petit Robusto" href="brand.aspx?brand=H._Upmann#309_Selecci|on_Petit_Robusto">H. Upmann Petit Robustos</a>&nbsp;<span class="subcontent">2012 - Selección Petit Robusto</span></td><td class="bordered-cell-L">Petit Robustos</td><td class="bordered-cell-L">50 x 102<span id="i6" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="H. Upmann Petit Robustos" title="H. Upmann Petit Robustos" src="images\H._Upmann_Petit_Robustos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Special Tube Selection" href="brand.aspx?brand=Hoyo_de_Monterrey#192_Special_Tube_Selection">Hoyo de Monterrey Petit Robustos</a>&nbsp;<span class="subcontent">2008 - Special Tube Selection</span></td><td class="bordered-cell-L">Petit Robustos</td><td class="bordered-cell-L">50 x 102<span id="i7" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Petit Robustos" title="Hoyo de Monterrey Petit Robustos" src="images\Hoyo_de_Monterrey_Petit_Robustos_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Selección Petit Robusto" href="brand.aspx?brand=Montecristo#309_Selecci|on_Petit_Robusto">Montecristo Petit Robusto</a>&nbsp;<span class="subcontent">2012 - Selección Petit Robusto</span></td><td class="bordered-cell-L">Petit Robustos</td><td class="bordered-cell-L">50 x 102<span id="i8" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Montecristo Petit Robusto" title="Montecristo Petit Robusto" src="images\Montecristo_Petit_Robusto_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Selección Petit Robusto" href="brand.aspx?brand=Partag|as#309_Selecci|on_Petit_Robusto">Partagás Petit Robustos</a>&nbsp;<span class="subcontent">2012 - Selección Petit Robusto</span></td><td class="bordered-cell-L">Petit Robustos</td><td class="bordered-cell-L">50 x 102<span id="i9" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Partagás Petit Robustos" title="Partagás Petit Robustos" src="images\Partagás_Petit_Robustos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Selección Petit Robusto" href="brand.aspx?brand=Romeo_y_Julieta#309_Selecci|on_Petit_Robusto">Romeo y Julieta Petit Robustos</a>&nbsp;<span class="subcontent">2012 - Selección Petit Robusto</span></td><td class="bordered-cell-L">Petit Robustos</td><td class="bordered-cell-L">50 x 102<span id="i10" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Petit Robustos" title="Romeo y Julieta Petit Robustos" src="images\Romeo_y_Julieta_Petit_Robustos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Travel Humidor" href="brand.aspx?brand=H._Upmann#85_Travel_Humidor">H. Upmann Robustos</a>&nbsp;<span class="subcontent">2007 - Travel Humidor</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i11" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="H. Upmann Robustos" title="H. Upmann Robustos" src="images\H._Upmann_Robustos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Special Tube Selection" href="brand.aspx?brand=Romeo_y_Julieta#192_Special_Tube_Selection">Romeo y Julieta Short Churchills</a>&nbsp;<span class="subcontent">2008 - Special Tube Selection</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i12" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Short Churchills" title="Romeo y Julieta Short Churchills" src="images\Romeo_y_Julieta_Short_Churchills_cigar_small_3.jpg"/></td></tr></table></span>
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
