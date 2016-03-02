


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 1960 - 1969 Releases
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
var inchLimit = 20;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;releasehigh=1969&amp;releaselow=1960&amp;specialreleaseid=0&amp;isreleasevague=true&amp;sortorder=factoryname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDIwOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTs8c3BhbiBjbGFzcz0iaGVhZDEiPjE5NjAgLSAxOTY5IFJlbGVhc2VzPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEFkGM8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnJlbGVhc2VoaWdoPTE5NjkmcmVsZWFzZWxvdz0xOTYwJnNwZWNpYWxyZWxlYXNlaWQ9MCZpc3JlbGVhc2V2YWd1ZT10cnVlJnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0xOTY5JnJlbGVhc2Vsb3c9MTk2MCZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9dHJ1ZSZzb3J0b3JkZXI9ZmFjdG9yeW5hbWUiPkZhY3RvcnkgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgR2FsZXJhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPlNpemU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnJlbGVhc2VoaWdoPTE5NjkmcmVsZWFzZWxvdz0xOTYwJnNwZWNpYWxyZWxlYXNlaWQ9MCZpc3JlbGVhc2V2YWd1ZT10cnVlJnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0xOTY5JnJlbGVhc2Vsb3c9MTk2MCZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9dHJ1ZSZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0xOTY5JnJlbGVhc2Vsb3c9MTk2MCZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9dHJ1ZSZzb3J0b3JkZXI9Y29tbW9ubmFtZSI+U2hhcGU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Q29tbW9uIE5hbWU8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+SW1hZ2U8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+UmVsYXRpdmUgU2NhbGU8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4xIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURpcGxvbXxhdGljb3MjRGlwbG9tfGF0aWNvc19Oby4xIj5EaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uMTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2NiAtIERpc2NvbnRpbnVlZCAyMDA2PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNlcnZhbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTY1PHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4xIiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjEiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4xX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiBDaMOidGVhdSBMYXRvdXIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjQ2jDonRlYXVfTGF0b3VyIj5EYXZpZG9mZiBDaMOidGVhdSBMYXRvdXI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjkgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRhdmlkb2ZmIENow6J0ZWF1IExhdG91ciIgdGl0bGU9IkRhdmlkb2ZmIENow6J0ZWF1IExhdG91ciIgc3JjPSJpbWFnZXNcRGF2aWRvZmZfQ2jDonRlYXVfTGF0b3VyX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uMyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uMyI+RGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjYgLSBEaXNjb250aW51ZWQgMjAwNjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4zIiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjMiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiBDaMOidGVhdSBMYWZpdGUgKFJvdGhzY2hpbGQpIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURhdmlkb2ZmI0Now6J0ZWF1X0xhZml0ZV8oUm90aHNjaGlsZCkiPkRhdmlkb2ZmIENow6J0ZWF1IExhZml0ZSAoUm90aHNjaGlsZCk8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjkgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5GcmFuY2lzY2Fub3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDExNjxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgQ2jDonRlYXUgTGFmaXRlIChSb3Roc2NoaWxkKSIgdGl0bGU9IkRhdmlkb2ZmIENow6J0ZWF1IExhZml0ZSAoUm90aHNjaGlsZCkiIHNyYz0iaW1hZ2VzXERhdmlkb2ZmX0Now6J0ZWF1X0xhZml0ZV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgTGFuY2Vyb3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhI0xhbmNlcm9zIj5Db2hpYmEgTGFuY2Vyb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjQgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxhZ3VpdG8gTm8uMTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM4IHggMTkyPHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ29oaWJhIExhbmNlcm9zIiB0aXRsZT0iQ29oaWJhIExhbmNlcm9zIiBzcmM9ImltYWdlc1xDb2hpYmFfTGFuY2Vyb3NfY2lnYXJfc21hbGxfNS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRGF2aWRvZmYgTm8uMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EYXZpZG9mZiNOby4xIj5EYXZpZG9mZiBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY5IC0gRGlzY29udGludWVkIDE5OTE8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJEYXZpZG9mZiBOby4xIiB0aXRsZT0iRGF2aWRvZmYgTm8uMSIgc3JjPSJpbWFnZXNcRGF2aWRvZmZfTm8uMV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTW9udGVjcmlzdG8gTW9udGVjcmlzdG8gRXNwZWNpYWwgTm8uMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Nb250ZWNyaXN0byNNb250ZWNyaXN0b19Fc3BlY2lhbF9Oby4xIj5Nb250ZWNyaXN0byBNb250ZWNyaXN0byBFc3BlY2lhbCBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY5IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE5MjxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEVzcGVjaWFsIE5vLjEiIHRpdGxlPSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBFc3BlY2lhbCBOby4xIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19Nb250ZWNyaXN0b19Fc3BlY2lhbF9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ29oaWJhIENvcm9uYXMgRXNwZWNpYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Db2hpYmEjQ29yb25hc19Fc3BlY2lhbGVzIj5Db2hpYmEgQ29yb25hcyBFc3BlY2lhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY3IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE1MjxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgQ29yb25hcyBFc3BlY2lhbGVzIiB0aXRsZT0iQ29oaWJhIENvcm9uYXMgRXNwZWNpYWxlcyIgc3JjPSJpbWFnZXNcQ29oaWJhX0Nvcm9uYXNfRXNwZWNpYWxlc19jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiBOby4yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURhdmlkb2ZmI05vLjIiPkRhdmlkb2ZmIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjkgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE1MjxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJEYXZpZG9mZiBOby4yIiB0aXRsZT0iRGF2aWRvZmYgTm8uMiIgc3JjPSJpbWFnZXNcRGF2aWRvZmZfTm8uMl9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRGF2aWRvZmYgVHVib3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjVHVib3MiPkRhdmlkb2ZmIFR1Ym9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY5IC0gRGlzY29udGludWVkIDE5OTE8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxNTI8c3BhbiBpZD0iaTkiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgVHVib3MiIHRpdGxlPSJEYXZpZG9mZiBUdWJvcyIgc3JjPSJpbWFnZXNcRGF2aWRvZmZfVHVib3Nfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEVzcGVjaWFsIE5vLjIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TW9udGVjcmlzdG8jTW9udGVjcmlzdG9fRXNwZWNpYWxfTm8uMiI+TW9udGVjcmlzdG8gTW9udGVjcmlzdG8gRXNwZWNpYWwgTm8uMjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2OSAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxNTI8c3BhbiBpZD0iaTEwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIEVzcGVjaWFsIE5vLjIiIHRpdGxlPSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBFc3BlY2lhbCBOby4yIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19Nb250ZWNyaXN0b19Fc3BlY2lhbF9Oby4yX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgUGFuZXRlbGFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSNQYW5ldGVsYXMiPkNvaGliYSBQYW5ldGVsYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjcgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxhZ3VpdG8gTm8uMzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI2IHggMTE1PHNwYW4gaWQ9ImkxMSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgUGFuZXRlbGFzIiB0aXRsZT0iQ29oaWJhIFBhbmV0ZWxhcyIgc3JjPSJpbWFnZXNcQ29oaWJhX1BhbmV0ZWxhc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiBBbWJhc3NhZHJpY2UiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjQW1iYXNzYWRyaWNlIj5EYXZpZG9mZiBBbWJhc3NhZHJpY2U8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjkgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4yNiB4IDExNTxzcGFuIGlkPSJpMTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U21hbGwgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgQW1iYXNzYWRyaWNlIiB0aXRsZT0iRGF2aWRvZmYgQW1iYXNzYWRyaWNlIiBzcmM9ImltYWdlc1xEYXZpZG9mZl9BbWJhc3NhZHJpY2VfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIEpveWl0YXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TW9udGVjcmlzdG8jSm95aXRhcyI+TW9udGVjcmlzdG8gSm95aXRhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2OSAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjYgeCAxMTU8c3BhbiBpZD0iaTEzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNtYWxsIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ik1vbnRlY3Jpc3RvIEpveWl0YXMiIHRpdGxlPSJNb250ZWNyaXN0byBKb3lpdGFzIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19Kb3lpdGFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEYXZpZG9mZiBDaMOidGVhdSBNYXJnYXV4IiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURhdmlkb2ZmI0Now6J0ZWF1X01hcmdhdXgiPkRhdmlkb2ZmIENow6J0ZWF1IE1hcmdhdXg8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjkgLSBEaXNjb250aW51ZWQgMTk5MTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTE0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJEYXZpZG9mZiBDaMOidGVhdSBNYXJnYXV4IiB0aXRsZT0iRGF2aWRvZmYgQ2jDonRlYXUgTWFyZ2F1eCIgc3JjPSJpbWFnZXNcRGF2aWRvZmZfQ2jDonRlYXVfTWFyZ2F1eF9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjQiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGlwbG9tfGF0aWNvcyNEaXBsb218YXRpY29zX05vLjQiPkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby40PC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY2IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9ImkxNSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjQiIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNCIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjRfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRhdmlkb2ZmIENow6J0ZWF1IEhhdXQtQnJpb24iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RGF2aWRvZmYjQ2jDonRlYXVfSGF1dC1CcmlvbiI+RGF2aWRvZmYgQ2jDonRlYXUgSGF1dC1CcmlvbjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2OSAtIERpc2NvbnRpbnVlZCAxOTkxPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBlcmxhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTAyPHNwYW4gaWQ9ImkxNiIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgQ2jDonRlYXUgSGF1dC1CcmlvbiIgdGl0bGU9IkRhdmlkb2ZmIENow6J0ZWF1IEhhdXQtQnJpb24iIHNyYz0iaW1hZ2VzXERhdmlkb2ZmX0Now6J0ZWF1X0hhdXQtQnJpb25fY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby41IiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURpcGxvbXxhdGljb3MjRGlwbG9tfGF0aWNvc19Oby41Ij5EaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2NiAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBlcmxhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTAyPHNwYW4gaWQ9ImkxNyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjUiIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNSIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjVfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURpcGxvbXxhdGljb3MjRGlwbG9tfGF0aWNvc19Oby4yIj5EaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uMjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTU2PHNwYW4gaWQ9ImkxOCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QeXJhbWlkPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby4yIiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjIiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4yX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJMYSBFc2NlcGNpw7NuIEV4Y2VwY2lvbmFsZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TGFfRXNjZXBjaXxvbiNFeGNlcGNpb25hbGVzIj5MYSBFc2NlcGNpw7NuIEV4Y2VwY2lvbmFsZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjBzIC0gRGlzY29udGludWVkIDE5ODBzPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEyMzxzcGFuIGlkPSJpMTkiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC44Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkxhIEVzY2VwY2nDs24gRXhjZXBjaW9uYWxlcyIgdGl0bGU9IkxhIEVzY2VwY2nDs24gRXhjZXBjaW9uYWxlcyIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjaW9uX0V4Y2VwY2lvbmFsZXNfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRhdmlkb2ZmIENow6J0ZWF1IFlxdWVtIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURhdmlkb2ZmI0Now6J0ZWF1X1lxdWVtIj5EYXZpZG9mZiBDaMOidGVhdSBZcXVlbTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2OSAtIERpc2NvbnRpbnVlZCAxOTgyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE1MjxzcGFuIGlkPSJpMjAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRGF2aWRvZmYgQ2jDonRlYXUgWXF1ZW0iIHRpdGxlPSJEYXZpZG9mZiBDaMOidGVhdSBZcXVlbSIgc3JjPSJpbWFnZXNcRGF2aWRvZmZfQ2jDonRlYXVfWXF1ZW1fY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjwvdGFibGU+ZGRkF/u5XCM3sInbJ5MCBs2ROUEWEp+HzzaM+aKAFT0QEyQ=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26releasehigh%3d1969%26releaselow%3d1960%26specialreleaseid%3d0%26isreleasevague%3dtrue%26sortorder%3dfactoryname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">1960 - 1969 Releases</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&releasehigh=1969&releaselow=1960&specialreleaseid=0&isreleasevague=true&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=1969&releaselow=1960&specialreleaseid=0&isreleasevague=true&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&releasehigh=1969&releaselow=1960&specialreleaseid=0&isreleasevague=true&sortorder=ring">Ring</a> x <a href="list.aspx?current=&releasehigh=1969&releaselow=1960&specialreleaseid=0&isreleasevague=true&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=1969&releaselow=1960&specialreleaseid=0&isreleasevague=true&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.1" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.1">Diplomáticos Diplomáticos No.1</a>&nbsp;<span class="subcontent">1966 - Discontinued 2006</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i0" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.1" title="Diplomáticos Diplomáticos No.1" src="images\Diplomáticos_Diplomáticos_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Château Latour" href="brand.aspx?brand=Davidoff#Château_Latour">Davidoff Château Latour</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i1" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Davidoff Château Latour" title="Davidoff Château Latour" src="images\Davidoff_Château_Latour_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.3" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.3">Diplomáticos Diplomáticos No.3</a>&nbsp;<span class="subcontent">1966 - Discontinued 2006</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i2" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.3" title="Diplomáticos Diplomáticos No.3" src="images\Diplomáticos_Diplomáticos_No.3_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Château Lafite (Rothschild)" href="brand.aspx?brand=Davidoff#Château_Lafite_(Rothschild)">Davidoff Château Lafite (Rothschild)</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Franciscanos</td><td class="bordered-cell-L">40 x 116<span id="i3" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Davidoff Château Lafite (Rothschild)" title="Davidoff Château Lafite (Rothschild)" src="images\Davidoff_Château_Lafite_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Lanceros" href="brand.aspx?brand=Cohiba#Lanceros">Cohiba Lanceros</a>&nbsp;<span class="subcontent">1964 - Current</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i4" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Cohiba Lanceros" title="Cohiba Lanceros" src="images\Cohiba_Lanceros_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff No.1" href="brand.aspx?brand=Davidoff#No.1">Davidoff No.1</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i5" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Davidoff No.1" title="Davidoff No.1" src="images\Davidoff_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Montecristo Especial No.1" href="brand.aspx?brand=Montecristo#Montecristo_Especial_No.1">Montecristo Montecristo Especial No.1</a>&nbsp;<span class="subcontent">1969 - Current</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i6" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo Especial No.1" title="Montecristo Montecristo Especial No.1" src="images\Montecristo_Montecristo_Especial_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Coronas Especiales" href="brand.aspx?brand=Cohiba#Coronas_Especiales">Cohiba Coronas Especiales</a>&nbsp;<span class="subcontent">1967 - Current</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i7" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Cohiba Coronas Especiales" title="Cohiba Coronas Especiales" src="images\Cohiba_Coronas_Especiales_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff No.2" href="brand.aspx?brand=Davidoff#No.2">Davidoff No.2</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i8" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Davidoff No.2" title="Davidoff No.2" src="images\Davidoff_No.2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Tubos" href="brand.aspx?brand=Davidoff#Tubos">Davidoff Tubos</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i9" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Davidoff Tubos" title="Davidoff Tubos" src="images\Davidoff_Tubos_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Montecristo Especial No.2" href="brand.aspx?brand=Montecristo#Montecristo_Especial_No.2">Montecristo Montecristo Especial No.2</a>&nbsp;<span class="subcontent">1969 - Current</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i10" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo Especial No.2" title="Montecristo Montecristo Especial No.2" src="images\Montecristo_Montecristo_Especial_No.2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Panetelas" href="brand.aspx?brand=Cohiba#Panetelas">Cohiba Panetelas</a>&nbsp;<span class="subcontent">1967 - Current</span></td><td class="bordered-cell-L">Laguito No.3</td><td class="bordered-cell-L">26 x 115<span id="i11" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Cohiba Panetelas" title="Cohiba Panetelas" src="images\Cohiba_Panetelas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Ambassadrice" href="brand.aspx?brand=Davidoff#Ambassadrice">Davidoff Ambassadrice</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Laguito No.3</td><td class="bordered-cell-L">26 x 115<span id="i12" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Davidoff Ambassadrice" title="Davidoff Ambassadrice" src="images\Davidoff_Ambassadrice_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Joyitas" href="brand.aspx?brand=Montecristo#Joyitas">Montecristo Joyitas</a>&nbsp;<span class="subcontent">1969 - Current</span></td><td class="bordered-cell-L">Laguito No.3</td><td class="bordered-cell-L">26 x 115<span id="i13" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Montecristo Joyitas" title="Montecristo Joyitas" src="images\Montecristo_Joyitas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Château Margaux" href="brand.aspx?brand=Davidoff#Château_Margaux">Davidoff Château Margaux</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i14" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Davidoff Château Margaux" title="Davidoff Château Margaux" src="images\Davidoff_Château_Margaux_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.4" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.4">Diplomáticos Diplomáticos No.4</a>&nbsp;<span class="subcontent">1966 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i15" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.4" title="Diplomáticos Diplomáticos No.4" src="images\Diplomáticos_Diplomáticos_No.4_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Château Haut-Brion" href="brand.aspx?brand=Davidoff#Château_Haut-Brion">Davidoff Château Haut-Brion</a>&nbsp;<span class="subcontent">1969 - Discontinued 1991</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i16" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Davidoff Château Haut-Brion" title="Davidoff Château Haut-Brion" src="images\Davidoff_Château_Haut-Brion_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.5" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.5">Diplomáticos Diplomáticos No.5</a>&nbsp;<span class="subcontent">1966 - Discontinued 2010</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i17" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.5" title="Diplomáticos Diplomáticos No.5" src="images\Diplomáticos_Diplomáticos_No.5_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.2" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.2">Diplomáticos Diplomáticos No.2</a>&nbsp;<span class="subcontent">1966 - Current</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i18" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.2" title="Diplomáticos Diplomáticos No.2" src="images\Diplomáticos_Diplomáticos_No.2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Escepción Excepcionales" href="brand.aspx?brand=La_Escepci|on#Excepcionales">La Escepción Excepcionales</a>&nbsp;<span class="subcontent">1960s - Discontinued 1980s</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i19" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="La Escepción Excepcionales" title="La Escepción Excepcionales" src="images\La_Escepcion_Excepcionales_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Davidoff Château Yquem" href="brand.aspx?brand=Davidoff#Château_Yquem">Davidoff Château Yquem</a>&nbsp;<span class="subcontent">1969 - Discontinued 1982</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">42 x 152<span id="i20" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Davidoff Château Yquem" title="Davidoff Château Yquem" src="images\Davidoff_Château_Yquem_cigar_small.jpg"/></td></tr></table></span>
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
