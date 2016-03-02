


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2009 Deletions
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
var inchLimit = 9;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2009&amp;discontinuedlow=2009&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=lengthmm" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU+PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDk7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFNTxzcGFuIGNsYXNzPSJoZWFkMSI+MjAwOSBEZWxldGlvbnM8L3NwYW4+PGJyIC8+PGJyIC8+ZGQCAg8PFgIfAQWrMjx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA5JmRpc2NvbnRpbnVlZGxvdz0yMDA5JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDkmZGlzY29udGludWVkbG93PTIwMDkmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDkmZGlzY29udGludWVkbG93PTIwMDkmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAwOSZkaXNjb250aW51ZWRsb3c9MjAwOSZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDkmZGlzY29udGludWVkbG93PTIwMDkmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQdW5jaCBQZXRpdCBQdW5jaCIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNQZXRpdF9QdW5jaCI+UHVuY2ggUGV0aXQgUHVuY2g8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVybGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMDI8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIFBldGl0IFB1bmNoIiB0aXRsZT0iUHVuY2ggUGV0aXQgUHVuY2giIHNyYz0iaW1hZ2VzXFB1bmNoX1BldGl0X1B1bmNoX2NpZ2FyX3NtYWxsXzQuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkVsIFJleSBkZWwgTXVuZG8gTHVuY2ggQ2x1YiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1FbF9SZXlfZGVsX011bmRvI0x1bmNoX0NsdWIiPkVsIFJleSBkZWwgTXVuZG8gTHVuY2ggQ2x1YjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwOTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5GcmFuY2lzY2Fub3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDExNjxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRWwgUmV5IGRlbCBNdW5kbyBMdW5jaCBDbHViIiB0aXRsZT0iRWwgUmV5IGRlbCBNdW5kbyBMdW5jaCBDbHViIiBzcmM9ImltYWdlc1xFbF9SZXlfZGVsX011bmRvX0x1bmNoX0NsdWJfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUHVuY2ggTWFyZ2FyaXRhcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNNYXJnYXJpdGFzIj5QdW5jaCBNYXJnYXJpdGFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA5PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNhcm9saW5hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI2IHggMTIxPHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNtYWxsIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIE1hcmdhcml0YXMiIHRpdGxlPSJQdW5jaCBNYXJnYXJpdGFzIiBzcmM9ImltYWdlc1xQdW5jaF9NYXJnYXJpdGFzX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJvbMOtdmFyIEJvbml0YXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjQm9uaXRhcyI+Qm9sw612YXIgQm9uaXRhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwOTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25kcmVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMjY8c3BhbiBpZD0iaTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkJvbMOtdmFyIEJvbml0YXMiIHRpdGxlPSJCb2zDrXZhciBCb25pdGFzIiBzcmM9ImltYWdlc1xCb2zDrXZhcl9Cb25pdGFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgUHJpbmNlc3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzI1ByaW5jZXNzIj5QYXJ0YWfDoXMgUHJpbmNlc3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29uY2hpdGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzUgeCAxMjc8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2hvcnQgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFByaW5jZXNzIiB0aXRsZT0iUGFydGFnw6FzIFByaW5jZXNzIiBzcmM9ImltYWdlc1xQYXJ0YWfDoXNfUHJpbmNlc3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IExlIEhveW8gZHUgUm9pIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUhveW9fZGVfTW9udGVycmV5I0xlX0hveW9fZHVfUm9pIj5Ib3lvIGRlIE1vbnRlcnJleSBMZSBIb3lvIGR1IFJvaTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwOTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkhveW8gZGUgTW9udGVycmV5IExlIEhveW8gZHUgUm9pIiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgTGUgSG95byBkdSBSb2kiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X0xlX0hveW9fZHVfUm9pX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQdW5jaCBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVB1bmNoI0Nvcm9uYXMiPlB1bmNoIENvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTQyPHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQdW5jaCBDb3JvbmFzIiB0aXRsZT0iUHVuY2ggQ29yb25hcyIgc3JjPSJpbWFnZXNcUHVuY2hfQ29yb25hc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQdW5jaCBTdXBlciBTZWxlY3Rpb24gTm8uMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNTdXBlcl9TZWxlY3Rpb25fTm8uMSI+UHVuY2ggU3VwZXIgU2VsZWN0aW9uIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hcyBHcmFuZGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNTU8c3BhbiBpZD0iaTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUHVuY2ggU3VwZXIgU2VsZWN0aW9uIE5vLjEiIHRpdGxlPSJQdW5jaCBTdXBlciBTZWxlY3Rpb24gTm8uMSIgc3JjPSJpbWFnZXNcUHVuY2hfU3VwZXJfU2VsZWN0aW9uX05vLjFfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQm9sw612YXIgSW5tZW5zYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Qm9sfGl2YXIjSW5tZW5zYXMiPkJvbMOtdmFyIElubWVuc2FzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA5PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRhbGlhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQzIHggMTcwPHNwYW4gaWQ9Imk4IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkJvbMOtdmFyIElubWVuc2FzIiB0aXRsZT0iQm9sw612YXIgSW5tZW5zYXMiIHNyYz0iaW1hZ2VzXEJvbMOtdmFyX0lubWVuc2FzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJILiBVcG1hbm4gTW9uYXJjYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SC5fVXBtYW5uI01vbmFyY2FzIj5ILiBVcG1hbm4gTW9uYXJjYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SnVsaWV0YSBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAxNzg8c3BhbiBpZD0iaTkiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2h1cmNoaWxsPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkguIFVwbWFubiBNb25hcmNhcyIgdGl0bGU9IkguIFVwbWFubiBNb25hcmNhcyIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX01vbmFyY2hzX2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjwvdGFibGU+ZGRkEnuFtl8H1/CQqPrF8g5EKgYH5VhutKSfNVMniuZRibc=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2009%26discontinuedlow%3d2009%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dlengthmm ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2009 Deletions</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2009&discontinuedlow=2009&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2009&discontinuedlow=2009&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2009&discontinuedlow=2009&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2009&discontinuedlow=2009&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2009&discontinuedlow=2009&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Punch Petit Punch" href="brand.aspx?brand=Punch#Petit_Punch">Punch Petit Punch</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i0" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Punch Petit Punch" title="Punch Petit Punch" src="images\Punch_Petit_Punch_cigar_small_4.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Lunch Club" href="brand.aspx?brand=El_Rey_del_Mundo#Lunch_Club">El Rey del Mundo Lunch Club</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Franciscanos</td><td class="bordered-cell-L">40 x 116<span id="i1" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Lunch Club" title="El Rey del Mundo Lunch Club" src="images\El_Rey_del_Mundo_Lunch_Club_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Margaritas" href="brand.aspx?brand=Punch#Margaritas">Punch Margaritas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Carolinas</td><td class="bordered-cell-L">26 x 121<span id="i2" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Punch Margaritas" title="Punch Margaritas" src="images\Punch_Margaritas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Bonitas" href="brand.aspx?brand=Bol|ivar#Bonitas">Bolívar Bonitas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Londres</td><td class="bordered-cell-L">40 x 126<span id="i3" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Bolívar Bonitas" title="Bolívar Bonitas" src="images\Bolívar_Bonitas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Princess" href="brand.aspx?brand=Partag|as#Princess">Partagás Princess</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Conchitas</td><td class="bordered-cell-L">35 x 127<span id="i4" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Partagás Princess" title="Partagás Princess" src="images\Partagás_Princess_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Le Hoyo du Roi" href="brand.aspx?brand=Hoyo_de_Monterrey#Le_Hoyo_du_Roi">Hoyo de Monterrey Le Hoyo du Roi</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i5" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Le Hoyo du Roi" title="Hoyo de Monterrey Le Hoyo du Roi" src="images\Hoyo_de_Monterrey_Le_Hoyo_du_Roi_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Coronas" href="brand.aspx?brand=Punch#Coronas">Punch Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i6" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Punch Coronas" title="Punch Coronas" src="images\Punch_Coronas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Super Selection No.1" href="brand.aspx?brand=Punch#Super_Selection_No.1">Punch Super Selection No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Coronas Grandes</td><td class="bordered-cell-L">42 x 155<span id="i7" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Punch Super Selection No.1" title="Punch Super Selection No.1" src="images\Punch_Super_Selection_No.1_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Inmensas" href="brand.aspx?brand=Bol|ivar#Inmensas">Bolívar Inmensas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Dalias</td><td class="bordered-cell-L">43 x 170<span id="i8" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Bolívar Inmensas" title="Bolívar Inmensas" src="images\Bolívar_Inmensas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Monarcas" href="brand.aspx?brand=H._Upmann#Monarcas">H. Upmann Monarcas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2009</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i9" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="H. Upmann Monarcas" title="H. Upmann Monarcas" src="images\H._Upmann_Monarchs_cigar_small_1.jpg"/></td></tr></table></span>
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
