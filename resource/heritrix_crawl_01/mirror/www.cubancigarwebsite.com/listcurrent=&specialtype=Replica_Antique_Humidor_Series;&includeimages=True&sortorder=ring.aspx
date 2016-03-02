


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
var inchLimit = 7;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=Replica_Antique_Humidor_Series%3b&amp;includeimages=True&amp;sortorder=ring" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU+PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDc7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFNTxzcGFuIGNsYXNzPSJoZWFkMSI+U2VhcmNoIFJlc3VsdHM8L3NwYW4+PGJyIC8+PGJyIC8+ZGQCAg8PFgIfAQW1LTx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9UmVwbGljYV9BbnRpcXVlX0h1bWlkb3JfU2VyaWVzOyZpbmNsdWRlaW1hZ2VzPVRydWUmc29ydG9yZGVyPWZ1bGxuYW1lIj5DaWdhciBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBTYWxpZGE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVJlcGxpY2FfQW50aXF1ZV9IdW1pZG9yX1NlcmllczsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9UmVwbGljYV9BbnRpcXVlX0h1bWlkb3JfU2VyaWVzOyZpbmNsdWRlaW1hZ2VzPVRydWUmc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVJlcGxpY2FfQW50aXF1ZV9IdW1pZG9yX1NlcmllczsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1sZW5ndGhtbSI+bW08L2E+PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVJlcGxpY2FfQW50aXF1ZV9IdW1pZG9yX1NlcmllczsmaW5jbHVkZWltYWdlcz1UcnVlJnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUmFtw7NuIEFsbG9uZXMgUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvIDIwMTIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFtfG9uX0FsbG9uZXMjMzQ2X1J8ZXBsaWNhX2RlX0h1bWlkb3JfQW50aWd1b18yMDEyIj5SYW3Ds24gQWxsb25lcyBJbXBlcmlhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDEyIC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFydGFnw6FzIE5vLjE1PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDggeCAxNjU8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R3JhbmQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJhbcOzbiBBbGxvbmVzIEltcGVyaWFsZXMiIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBJbXBlcmlhbGVzIiBzcmM9ImltYWdlc1xSYW3Ds25fQWxsb25lc19JbXBlcmlhbGVzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJILiBVcG1hbm4gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUguX1VwbWFubiM4NF9SfGVwbGljYV9kZV9IdW1pZG9yX0FudGlndW8iPkguIFVwbWFubiBUYWNvcyBJbXBlcmlhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA2IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlRhY29zIEltcGVyaWFsZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OSB4IDE2ODxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIFRhY29zIEltcGVyaWFsZXMiIHRpdGxlPSJILiBVcG1hbm4gVGFjb3MgSW1wZXJpYWxlcyIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX1RhY29zX0ltcGVyaWFsZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIFLDqXBsaWNhIGRlIEh1bWlkb3IgQW50aWd1byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Nb250ZWNyaXN0byMyMDJfUnxlcGxpY2FfZGVfSHVtaWRvcl9BbnRpZ3VvIj5Nb250ZWNyaXN0byBEb3VibGUgQ29yb25hPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlByb21pbmVudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDkgeCAxOTQ8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RG91YmxlIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJNb250ZWNyaXN0byBEb3VibGUgQ29yb25hIiB0aXRsZT0iTW9udGVjcmlzdG8gRG91YmxlIENvcm9uYSIgc3JjPSJpbWFnZXNcTW9udGVjcmlzdG9fRG91YmxlX0Nvcm9uYV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJvbWVvX3lfSnVsaWV0YSMxNjJfUnxlcGxpY2FfZGVfSHVtaWRvcl9BbnRpZ3VvIj5Sb21lbyB5IEp1bGlldGEgUm9tZW9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA4IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvbWVvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTIgeCAxNjI8c3BhbiBpZD0iaTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi40Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVyZmVjdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIFJvbWVvcyIgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBSb21lb3MiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9Sb21lb3NfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIFLDqXBsaWNhIGRlIEh1bWlkb3IgQW50aWd1byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjMTI3X1J8ZXBsaWNhX2RlX0h1bWlkb3JfQW50aWd1byI+UGFydGFnw6FzIFNvYnJlc2FsaWVudGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA3IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNvYnJlc2FsaWVudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTMgeCAxNTM8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU29icmVzYWxpZW50ZXMiIHRpdGxlPSJQYXJ0YWfDoXMgU29icmVzYWxpZW50ZXMiIHNyYz0iaW1hZ2VzXFBhcnRhZ8Ohc19Tb2JyZXNhbGllbnRlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUhveW9fZGVfTW9udGVycmV5IzMyNl9SfGVwbGljYV9kZV9IdW1pZG9yX0FudGlndW8iPkhveW8gZGUgTW9udGVycmV5IE1vbnRlcnJleTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxMSAtIFLDqXBsaWNhIGRlIEh1bWlkb3IgQW50aWd1bzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJhdmlsbGFzIE5vLjE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41NSB4IDE4MjxzcGFuIGlkPSJpNSIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Eb3VibGUgUm9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJIb3lvIGRlIE1vbnRlcnJleSBNb250ZXJyZXkiIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBNb250ZXJyZXkiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X01vbnRlcnJleV9jaWdhcl9zbWFsbF8zLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgMTcwIEFuaXZlcnNhcmlvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyM0MTJfMTcwX0FuaXZlcnNhcmlvIj5QYXJ0YWfDoXMgUGFydGFnw6FzIDE3MDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxNSAtIDE3MCBBbml2ZXJzYXJpbzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYXJ0YWfDoXMgMTcwPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTYgeCAxNzA8c3BhbiBpZD0iaTYiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RG91YmxlIFJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFBhcnRhZ8OhcyAxNzAiIHRpdGxlPSJQYXJ0YWfDoXMgUGFydGFnw6FzIDE3MCIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1BhcnRhZ8Ohc18xNzBfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkguIFVwbWFubiBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SC5fVXBtYW5uIzQwM19SfGVwbGljYV9kZV9IdW1pZG9yX0FudGlndW8iPkguIFVwbWFubiBTdXByZW1hcyBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDE0IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41OCB4IDE4MDxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Eb3VibGUgUGVyZmVjdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIFN1cHJlbWFzIE5vLjIiIHRpdGxlPSJILiBVcG1hbm4gU3VwcmVtYXMgTm8uMiIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX1N1cHJlbWFzX05vLjJfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjwvdGFibGU+ZGRkHEWkCwPFxW/nB+695j1gYVk5PckUBasZyUK/ypYNQHE=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dReplica_Antique_Humidor_Series%3b%26includeimages%3dTrue%26sortorder%3dring ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&includeimages=True&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&includeimages=True&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&includeimages=True&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&includeimages=True&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&includeimages=True&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Réplica de Humidor Antiguo 2012" href="brand.aspx?brand=Ram|on_Allones#346_R|eplica_de_Humidor_Antiguo_2012">Ramón Allones Imperiales</a>&nbsp;<span class="subcontent">2012 - Réplica de Humidor Antiguo 2012</span></td><td class="bordered-cell-L">Partagás No.15</td><td class="bordered-cell-L">48 x 165<span id="i0" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Ramón Allones Imperiales" title="Ramón Allones Imperiales" src="images\Ramón_Allones_Imperiales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Réplica de Humidor Antiguo" href="brand.aspx?brand=H._Upmann#84_R|eplica_de_Humidor_Antiguo">H. Upmann Tacos Imperiales</a>&nbsp;<span class="subcontent">2006 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Tacos Imperiales</td><td class="bordered-cell-L">49 x 168<span id="i1" class="inch">&nbsp;(6.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="H. Upmann Tacos Imperiales" title="H. Upmann Tacos Imperiales" src="images\H._Upmann_Tacos_Imperiales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Réplica de Humidor Antiguo" href="brand.aspx?brand=Montecristo#202_R|eplica_de_Humidor_Antiguo">Montecristo Double Corona</a>&nbsp;<span class="subcontent">2009 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Prominentes</td><td class="bordered-cell-L">49 x 194<span id="i2" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="Montecristo Double Corona" title="Montecristo Double Corona" src="images\Montecristo_Double_Corona_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Réplica de Humidor Antiguo" href="brand.aspx?brand=Romeo_y_Julieta#162_R|eplica_de_Humidor_Antiguo">Romeo y Julieta Romeos</a>&nbsp;<span class="subcontent">2008 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Romeo</td><td class="bordered-cell-L">52 x 162<span id="i3" class="inch">&nbsp;(6.4")</span></td><td class="bordered-cell-L">Perfecto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Romeos" title="Romeo y Julieta Romeos" src="images\Romeo_y_Julieta_Romeos_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Réplica de Humidor Antiguo" href="brand.aspx?brand=Partag|as#127_R|eplica_de_Humidor_Antiguo">Partagás Sobresalientes</a>&nbsp;<span class="subcontent">2007 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Sobresalientes</td><td class="bordered-cell-L">53 x 153<span id="i4" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Partagás Sobresalientes" title="Partagás Sobresalientes" src="images\Partagás_Sobresalientes_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Réplica de Humidor Antiguo" href="brand.aspx?brand=Hoyo_de_Monterrey#326_R|eplica_de_Humidor_Antiguo">Hoyo de Monterrey Monterrey</a>&nbsp;<span class="subcontent">2011 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Maravillas No.1</td><td class="bordered-cell-L">55 x 182<span id="i5" class="inch">&nbsp;(7.2")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Monterrey" title="Hoyo de Monterrey Monterrey" src="images\Hoyo_de_Monterrey_Monterrey_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás 170 Aniversario" href="brand.aspx?brand=Partag|as#412_170_Aniversario">Partagás Partagás 170</a>&nbsp;<span class="subcontent">2015 - 170 Aniversario</span></td><td class="bordered-cell-L">Partagás 170</td><td class="bordered-cell-L">56 x 170<span id="i6" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="Partagás Partagás 170" title="Partagás Partagás 170" src="images\Partagás_Partagás_170_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Réplica de Humidor Antiguo" href="brand.aspx?brand=H._Upmann#403_R|eplica_de_Humidor_Antiguo">H. Upmann Supremas No.2</a>&nbsp;<span class="subcontent">2014 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">58 x 180<span id="i7" class="inch">&nbsp;(7.1")</span></td><td class="bordered-cell-L">Double Perfecto</td><td class="bordered-cell-L"><img alt="H. Upmann Supremas No.2" title="H. Upmann Supremas No.2" src="images\H._Upmann_Supremas_No.2_cigar_small.jpg"/></td></tr></table></span>
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
