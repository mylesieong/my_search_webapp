


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
var inchLimit = 11;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=LCDH_Exclusive_Release%3b&amp;includeimages=True&amp;sortorder=commonname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDExOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPlNlYXJjaCBSZXN1bHRzPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEFmz88dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPUxDREhfRXhjbHVzaXZlX1JlbGVhc2U7JmluY2x1ZGVpbWFnZXM9VHJ1ZSZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9TENESF9FeGNsdXNpdmVfUmVsZWFzZTsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9TENESF9FeGNsdXNpdmVfUmVsZWFzZTsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1MQ0RIX0V4Y2x1c2l2ZV9SZWxlYXNlOyZpbmNsdWRlaW1hZ2VzPVRydWUmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9TENESF9FeGNsdXNpdmVfUmVsZWFzZTsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQm9sw612YXIgMTAwIEFuaXZlcnNhcmlvIExDREggSHVtaWRvciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Cb2x8aXZhciMxMl8xMDBfQW5pdmVyc2FyaW9fTENESF9IdW1pZG9yIj5Cb2zDrXZhciBIZXJtb3NvcyBOby40PC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA0IC0gMTAwIEFuaXZlcnNhcmlvIExDREggSHVtaWRvcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5IZXJtb3NvcyBOby40PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDggeCAxMjc8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkJvbMOtdmFyIEhlcm1vc29zIE5vLjQiIHRpdGxlPSJCb2zDrXZhciBIZXJtb3NvcyBOby40IiBzcmM9ImltYWdlc1xCb2zDrXZhcl9IZXJtb3Nvc19Oby40X2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkguIFVwbWFubiBMQ0RIIEV4Y2x1c2l2byBHbGFzcyBKYXIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SC5fVXBtYW5uIzI1NV9MQ0RIX0V4Y2x1c2l2b19HbGFzc19KYXIiPkguIFVwbWFubiBOb2VsbGFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gTENESCBFeGNsdXNpdm8gR2xhc3MgSmFyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvc2Fjb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEzNTxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIE5vZWxsYXMiIHRpdGxlPSJILiBVcG1hbm4gTm9lbGxhcyIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX05vZWxsYXNfY2lnYXJfc21hbGxfMy5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQm9sw612YXIgTENESCBFeGNsdXNpdm8gMjAxMyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Cb2x8aXZhciMzNzFfTENESF9FeGNsdXNpdm9fMjAxMyI+Qm9sw612YXIgTGliZXJ0YWRvcjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxMyAtIExDREggRXhjbHVzaXZvIDIwMTM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U3VibGltZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41NCB4IDE2NDxzcGFuIGlkPSJpMiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Eb3VibGUgUm9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCb2zDrXZhciBMaWJlcnRhZG9yIiB0aXRsZT0iQm9sw612YXIgTGliZXJ0YWRvciIgc3JjPSJpbWFnZXNcQm9sw612YXJfTGliZXJ0YWRvcl9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBMQ0RIIEV4Y2x1c2l2byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1MYV9HbG9yaWFfQ3ViYW5hIzI3MF9MQ0RIX0V4Y2x1c2l2byI+TGEgR2xvcmlhIEN1YmFuYSBJbm1lbnNvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxMCAtIExDREggRXhjbHVzaXZvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN1YmxpbWVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTQgeCAxNjQ8c3BhbiBpZD0iaTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RG91YmxlIFJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTGEgR2xvcmlhIEN1YmFuYSBJbm1lbnNvcyIgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgSW5tZW5zb3MiIHNyYz0iaW1hZ2VzXExhX0dsb3JpYV9DdWJhbmFfSW5tZW5zb3NfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUmFtw7NuIEFsbG9uZXMgTENESCBFeGNsdXNpdm8gMjAxMCIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYW18b25fQWxsb25lcyMyNjRfTENESF9FeGNsdXNpdm9fMjAxMCI+UmFtw7NuIEFsbG9uZXMgQWxsb25lcyBTdXBlcmlvcmVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDEwIC0gTENESCBFeGNsdXNpdm8gMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzIEdvcmRhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ2IHggMTQzPHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdyYW5kIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYW3Ds24gQWxsb25lcyBBbGxvbmVzIFN1cGVyaW9yZXMiIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBBbGxvbmVzIFN1cGVyaW9yZXMiIHNyYz0iaW1hZ2VzXFJhbcOzbl9BbGxvbmVzX0FsbG9uZXNfU3VwZXJpb3Jlc19jaWdhcl9zbWFsbF83LmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJCb2zDrXZhciA1dGggQXZlbnVlIEdlcm1hbnkiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjMjZfNXRoX0F2ZW51ZV9HZXJtYW55Ij5Cb2zDrXZhciBHb2xkIE1lZGFsPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA0IC0gNXRoIEF2ZW51ZSBHZXJtYW55PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNlcnZhbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTY1PHNwYW4gaWQ9Imk1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkJvbMOtdmFyIEdvbGQgTWVkYWwiIHRpdGxlPSJCb2zDrXZhciBHb2xkIE1lZGFsIiBzcmM9ImltYWdlc1xCb2zDrXZhcl9Hb2xkX01lZGFsX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IExDREggRXhjbHVzaXZvIDIwMTIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SG95b19kZV9Nb250ZXJyZXkjMzA0X0xDREhfRXhjbHVzaXZvXzIwMTIiPkhveW8gZGUgTW9udGVycmV5IEVwaWN1cmUgZGUgTHV4ZTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxMiAtIExDREggRXhjbHVzaXZvIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TcOhZ2ljb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDExNTxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBSb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkhveW8gZGUgTW9udGVycmV5IEVwaWN1cmUgZGUgTHV4ZSIgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IEVwaWN1cmUgZGUgTHV4ZSIgc3JjPSJpbWFnZXNcSG95b19kZV9Nb250ZXJyZXlfRXBpY3VyZV9kZV9MdXhlX2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJvbMOtdmFyIDEwMCBBbml2ZXJzYXJpbyBMQ0RIIEh1bWlkb3IiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjMTJfMTAwX0FuaXZlcnNhcmlvX0xDREhfSHVtaWRvciI+Qm9sw612YXIgQmVsaWNvc29zIEZpbm9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA0IC0gMTAwIEFuaXZlcnNhcmlvIExDREggSHVtaWRvcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYW1wYW5hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTQwPHNwYW4gaWQ9Imk3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlB5cmFtaWQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQm9sw612YXIgQmVsaWNvc29zIEZpbm9zIiB0aXRsZT0iQm9sw612YXIgQmVsaWNvc29zIEZpbm9zIiBzcmM9ImltYWdlc1xCb2zDrXZhcl9CZWxpY29zb3NfRmlub3NfY2lnYXJfc21hbGxfNS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBMYSBDYXNhIGRlIEhhYmFubyAyNXRoIEFuaXZlcnNhcmlvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUxhX0dsb3JpYV9DdWJhbmEjNDEzX0xhX0Nhc2FfZGVfSGFiYW5vXzI1dGhfQW5pdmVyc2FyaW8iPkxhIEdsb3JpYSBDdWJhbmEgUGlyw6FtaWRlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxNSAtIExhIENhc2EgZGUgSGFiYW5vIDI1dGggQW5pdmVyc2FyaW88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTU2PHNwYW4gaWQ9Imk4IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlB5cmFtaWQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTGEgR2xvcmlhIEN1YmFuYSBQaXLDoW1pZGVzIiB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBQaXLDoW1pZGVzIiBzcmM9ImltYWdlc1xMYV9HbG9yaWFfQ3ViYW5hX1BpcsOhbWlkZXNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBMYSBDYXNhIGRlIEhhYmFubyAyNXRoIEFuaXZlcnNhcmlvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUxhX0dsb3JpYV9DdWJhbmEjNDEzX0xhX0Nhc2FfZGVfSGFiYW5vXzI1dGhfQW5pdmVyc2FyaW8iPkxhIEdsb3JpYSBDdWJhbmEgUm9idXN0b3MgRXh0cmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTUgLSBMYSBDYXNhIGRlIEhhYmFubyAyNXRoIEFuaXZlcnNhcmlvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhcnRhZ8OhcyBOby4yMDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ4IHggMTcwPHNwYW4gaWQ9Imk5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG8gRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTGEgR2xvcmlhIEN1YmFuYSBSb2J1c3RvcyBFeHRyYSIgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgUm9idXN0b3MgRXh0cmEiIHNyYz0iaW1hZ2VzXExhX0dsb3JpYV9DdWJhbmFfUm9idXN0b3NfRXh0cmFfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBMYSBDYXNhIGRlbCBIYWJhbm8gRXhjbHVzaXZlIDIwMTUiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Um9tZW9feV9KdWxpZXRhIzQyMV9MYV9DYXNhX2RlbF9IYWJhbm9fRXhjbHVzaXZlXzIwMTUiPlJvbWVvIHkgSnVsaWV0YSBDZWRyb3MgZGUgTHV4ZTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxNCAtIExhIENhc2EgZGVsIEhhYmFubyBFeGNsdXNpdmUgMjAxNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Hb3JkaXRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTQxPHNwYW4gaWQ9ImkxMCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJvbWVvIHkgSnVsaWV0YSBDZWRyb3MgZGUgTHV4ZSIgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBDZWRyb3MgZGUgTHV4ZSIgc3JjPSJpbWFnZXNcUm9tZW9feV9KdWxpZXRhX0NlZHJvc19kZV9MdXhlX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJILiBVcG1hbm4gTENESCBFeGNsdXNpdm8gMjAxMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1ILl9VcG1hbm4jMjk2X0xDREhfRXhjbHVzaXZvXzIwMTEiPkguIFVwbWFubiBSb3lhbCBSb2J1c3RvPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDExIC0gTENESCBFeGNsdXNpdm8gMjAxMTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5FZG11bmRvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTIgeCAxMzU8c3BhbiBpZD0iaTExIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIFJveWFsIFJvYnVzdG8iIHRpdGxlPSJILiBVcG1hbm4gUm95YWwgUm9idXN0byIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX1JveWFsX1JvYnVzdG9fY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGR3Daj+qnQ9qFsnhhG0F/yBShrAZGBGRK8rIWq6gLa2Kg==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dLCDH_Exclusive_Release%3b%26includeimages%3dTrue%26sortorder%3dcommonname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=LCDH_Exclusive_Release;&includeimages=True&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=LCDH_Exclusive_Release;&includeimages=True&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=LCDH_Exclusive_Release;&includeimages=True&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=LCDH_Exclusive_Release;&includeimages=True&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=LCDH_Exclusive_Release;&includeimages=True&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar 100 Aniversario LCDH Humidor" href="brand.aspx?brand=Bol|ivar#12_100_Aniversario_LCDH_Humidor">Bolívar Hermosos No.4</a>&nbsp;<span class="subcontent">2004 - 100 Aniversario LCDH Humidor</span></td><td class="bordered-cell-L">Hermosos No.4</td><td class="bordered-cell-L">48 x 127<span id="i0" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Corona Extra</td><td class="bordered-cell-L"><img alt="Bolívar Hermosos No.4" title="Bolívar Hermosos No.4" src="images\Bolívar_Hermosos_No.4_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann LCDH Exclusivo Glass Jar" href="brand.aspx?brand=H._Upmann#255_LCDH_Exclusivo_Glass_Jar">H. Upmann Noellas</a>&nbsp;<span class="subcontent">2009 - LCDH Exclusivo Glass Jar</span></td><td class="bordered-cell-L">Cosacos</td><td class="bordered-cell-L">42 x 135<span id="i1" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="H. Upmann Noellas" title="H. Upmann Noellas" src="images\H._Upmann_Noellas_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar LCDH Exclusivo 2013" href="brand.aspx?brand=Bol|ivar#371_LCDH_Exclusivo_2013">Bolívar Libertador</a>&nbsp;<span class="subcontent">2013 - LCDH Exclusivo 2013</span></td><td class="bordered-cell-L">Sublimes</td><td class="bordered-cell-L">54 x 164<span id="i2" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="Bolívar Libertador" title="Bolívar Libertador" src="images\Bolívar_Libertador_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana LCDH Exclusivo" href="brand.aspx?brand=La_Gloria_Cubana#270_LCDH_Exclusivo">La Gloria Cubana Inmensos</a>&nbsp;<span class="subcontent">2010 - LCDH Exclusivo</span></td><td class="bordered-cell-L">Sublimes</td><td class="bordered-cell-L">54 x 164<span id="i3" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Inmensos" title="La Gloria Cubana Inmensos" src="images\La_Gloria_Cubana_Inmensos_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones LCDH Exclusivo 2010" href="brand.aspx?brand=Ram|on_Allones#264_LCDH_Exclusivo_2010">Ramón Allones Allones Superiores</a>&nbsp;<span class="subcontent">2010 - LCDH Exclusivo 2010</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i4" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Ramón Allones Allones Superiores" title="Ramón Allones Allones Superiores" src="images\Ramón_Allones_Allones_Superiores_cigar_small_7.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar 5th Avenue Germany" href="brand.aspx?brand=Bol|ivar#26_5th_Avenue_Germany">Bolívar Gold Medal</a>&nbsp;<span class="subcontent">2004 - 5th Avenue Germany</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i5" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Bolívar Gold Medal" title="Bolívar Gold Medal" src="images\Bolívar_Gold_Medal_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey LCDH Exclusivo 2012" href="brand.aspx?brand=Hoyo_de_Monterrey#304_LCDH_Exclusivo_2012">Hoyo de Monterrey Epicure de Luxe</a>&nbsp;<span class="subcontent">2012 - LCDH Exclusivo 2012</span></td><td class="bordered-cell-L">Mágicos</td><td class="bordered-cell-L">52 x 115<span id="i6" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Petit Robusto</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Epicure de Luxe" title="Hoyo de Monterrey Epicure de Luxe" src="images\Hoyo_de_Monterrey_Epicure_de_Luxe_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar 100 Aniversario LCDH Humidor" href="brand.aspx?brand=Bol|ivar#12_100_Aniversario_LCDH_Humidor">Bolívar Belicosos Finos</a>&nbsp;<span class="subcontent">2004 - 100 Aniversario LCDH Humidor</span></td><td class="bordered-cell-L">Campanas</td><td class="bordered-cell-L">52 x 140<span id="i7" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Bolívar Belicosos Finos" title="Bolívar Belicosos Finos" src="images\Bolívar_Belicosos_Finos_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana La Casa de Habano 25th Aniversario" href="brand.aspx?brand=La_Gloria_Cubana#413_La_Casa_de_Habano_25th_Aniversario">La Gloria Cubana Pirámides</a>&nbsp;<span class="subcontent">2015 - La Casa de Habano 25th Aniversario</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i8" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Pirámides" title="La Gloria Cubana Pirámides" src="images\La_Gloria_Cubana_Pirámides_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana La Casa de Habano 25th Aniversario" href="brand.aspx?brand=La_Gloria_Cubana#413_La_Casa_de_Habano_25th_Aniversario">La Gloria Cubana Robustos Extra</a>&nbsp;<span class="subcontent">2015 - La Casa de Habano 25th Aniversario</span></td><td class="bordered-cell-L">Partagás No.20</td><td class="bordered-cell-L">48 x 170<span id="i9" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Robustos Extra" title="La Gloria Cubana Robustos Extra" src="images\La_Gloria_Cubana_Robustos_Extra_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta La Casa del Habano Exclusive 2015" href="brand.aspx?brand=Romeo_y_Julieta#421_La_Casa_del_Habano_Exclusive_2015">Romeo y Julieta Cedros de Luxe</a>&nbsp;<span class="subcontent">2014 - La Casa del Habano Exclusive 2015</span></td><td class="bordered-cell-L">Gorditos</td><td class="bordered-cell-L">50 x 141<span id="i10" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Cedros de Luxe" title="Romeo y Julieta Cedros de Luxe" src="images\Romeo_y_Julieta_Cedros_de_Luxe_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann LCDH Exclusivo 2011" href="brand.aspx?brand=H._Upmann#296_LCDH_Exclusivo_2011">H. Upmann Royal Robusto</a>&nbsp;<span class="subcontent">2011 - LCDH Exclusivo 2011</span></td><td class="bordered-cell-L">Edmundo</td><td class="bordered-cell-L">52 x 135<span id="i11" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="H. Upmann Royal Robusto" title="H. Upmann Royal Robusto" src="images\H._Upmann_Royal_Robusto_cigar_small_0.jpg"/></td></tr></table></span>
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
