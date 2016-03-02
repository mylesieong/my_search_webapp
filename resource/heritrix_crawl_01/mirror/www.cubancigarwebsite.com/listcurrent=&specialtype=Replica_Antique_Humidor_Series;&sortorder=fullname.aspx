


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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=Replica_Antique_Humidor_Series%3b&amp;sortorder=fullname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU+PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDc7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFugU8c3BhbiBjbGFzcz0iaGVhZDEiPlNlYXJjaCBSZXN1bHRzPC9zcGFuPjxiciAvPjxiciAvPjxkaXYgaWQ9InByaW50SGVhZERyb3Bkb3duIiBzdHlsZT0iZGlzcGxheTogYmxvY2s7IHRleHQtYWxpZ246Y2VudGVyOyI+ICA8c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMSIgbmFtZT0iRDEiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iIHNlbGVjdGVkPSJzZWxlY3RlZCI+QnJhbmRzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNILl9VcG1hbm4iPkguIFVwbWFubjwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNIb3lvX2RlX01vbnRlcnJleSI+SG95byBkZSBNb250ZXJyZXk8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTW9udGVjcmlzdG8iPk1vbnRlY3Jpc3RvPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1BhcnRhZ8OhcyI+UGFydGFnw6FzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1JhbcOzbl9BbGxvbmVzIj5SYW3Ds24gQWxsb25lczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNSb21lb195X0p1bGlldGEiPlJvbWVvIHkgSnVsaWV0YTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjwvZGl2PmRkAgIPDxYCHwEF9DI8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVJlcGxpY2FfQW50aXF1ZV9IdW1pZG9yX1Nlcmllczsmc29ydG9yZGVyPWZ1bGxuYW1lIj5DaWdhciBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBTYWxpZGE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVJlcGxpY2FfQW50aXF1ZV9IdW1pZG9yX1Nlcmllczsmc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1SZXBsaWNhX0FudGlxdWVfSHVtaWRvcl9TZXJpZXM7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1SZXBsaWNhX0FudGlxdWVfSHVtaWRvcl9TZXJpZXM7JnNvcnRvcmRlcj1sZW5ndGhtbSI+bW08L2E+PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVJlcGxpY2FfQW50aXF1ZV9IdW1pZG9yX1Nlcmllczsmc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IkguX1VwbWFubiI+SC4gVXBtYW5uPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkguIFVwbWFubiBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SC5fVXBtYW5uIzQwM19SfGVwbGljYV9kZV9IdW1pZG9yX0FudGlndW8iPlN1cHJlbWFzIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTQgLSBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjU4IHggMTgwPHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBQZXJmZWN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJILiBVcG1hbm4gU3VwcmVtYXMgTm8uMiIgdGl0bGU9IkguIFVwbWFubiBTdXByZW1hcyBOby4yIiBzcmM9ImltYWdlc1xILl9VcG1hbm5fU3VwcmVtYXNfTm8uMl9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSC4gVXBtYW5uIFLDqXBsaWNhIGRlIEh1bWlkb3IgQW50aWd1byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1ILl9VcG1hbm4jODRfUnxlcGxpY2FfZGVfSHVtaWRvcl9BbnRpZ3VvIj5UYWNvcyBJbXBlcmlhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA2IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlRhY29zIEltcGVyaWFsZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OSB4IDE2ODxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSC4gVXBtYW5uIFRhY29zIEltcGVyaWFsZXMiIHRpdGxlPSJILiBVcG1hbm4gVGFjb3MgSW1wZXJpYWxlcyIgc3JjPSJpbWFnZXNcSC5fVXBtYW5uX1RhY29zX0ltcGVyaWFsZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iSG95b19kZV9Nb250ZXJyZXkiPkhveW8gZGUgTW9udGVycmV5PC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IFLDqXBsaWNhIGRlIEh1bWlkb3IgQW50aWd1byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSMzMjZfUnxlcGxpY2FfZGVfSHVtaWRvcl9BbnRpZ3VvIj5Nb250ZXJyZXk8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTEgLSBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyYXZpbGxhcyBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTUgeCAxODI8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RG91YmxlIFJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgTW9udGVycmV5IiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgTW9udGVycmV5IiBzcmM9ImltYWdlc1xIb3lvX2RlX01vbnRlcnJleV9Nb250ZXJyZXlfY2lnYXJfc21hbGxfMy5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJNb250ZWNyaXN0byI+TW9udGVjcmlzdG88L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTW9udGVjcmlzdG8gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPU1vbnRlY3Jpc3RvIzIwMl9SfGVwbGljYV9kZV9IdW1pZG9yX0FudGlndW8iPkRvdWJsZSBDb3JvbmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UHJvbWluZW50ZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OSB4IDE5NDxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Eb3VibGUgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ik1vbnRlY3Jpc3RvIERvdWJsZSBDb3JvbmEiIHRpdGxlPSJNb250ZWNyaXN0byBEb3VibGUgQ29yb25hIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19Eb3VibGVfQ29yb25hX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUGFydGFnw6FzIj5QYXJ0YWfDoXM8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIDE3MCBBbml2ZXJzYXJpbyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjNDEyXzE3MF9Bbml2ZXJzYXJpbyI+UGFydGFnw6FzIDE3MDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAxNSAtIDE3MCBBbml2ZXJzYXJpbzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYXJ0YWfDoXMgMTcwPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTYgeCAxNzA8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RG91YmxlIFJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFBhcnRhZ8OhcyAxNzAiIHRpdGxlPSJQYXJ0YWfDoXMgUGFydGFnw6FzIDE3MCIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1BhcnRhZ8Ohc18xNzBfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzIzEyN19SfGVwbGljYV9kZV9IdW1pZG9yX0FudGlndW8iPlNvYnJlc2FsaWVudGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA3IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNvYnJlc2FsaWVudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTMgeCAxNTM8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU29icmVzYWxpZW50ZXMiIHRpdGxlPSJQYXJ0YWfDoXMgU29icmVzYWxpZW50ZXMiIHNyYz0iaW1hZ2VzXFBhcnRhZ8Ohc19Tb2JyZXNhbGllbnRlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJSYW3Ds25fQWxsb25lcyI+UmFtw7NuIEFsbG9uZXM8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW8gMjAxMiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYW18b25fQWxsb25lcyMzNDZfUnxlcGxpY2FfZGVfSHVtaWRvcl9BbnRpZ3VvXzIwMTIiPkltcGVyaWFsZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMTIgLSBSw6lwbGljYSBkZSBIdW1pZG9yIEFudGlndW8gMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYXJ0YWfDoXMgTm8uMTU8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OCB4IDE2NTxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUmFtw7NuIEFsbG9uZXMgSW1wZXJpYWxlcyIgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEltcGVyaWFsZXMiIHNyYz0iaW1hZ2VzXFJhbcOzbl9BbGxvbmVzX0ltcGVyaWFsZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUm9tZW9feV9KdWxpZXRhIj5Sb21lbyB5IEp1bGlldGE8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFLDqXBsaWNhIGRlIEh1bWlkb3IgQW50aWd1byIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Sb21lb195X0p1bGlldGEjMTYyX1J8ZXBsaWNhX2RlX0h1bWlkb3JfQW50aWd1byI+Um9tZW9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA4IC0gUsOpcGxpY2EgZGUgSHVtaWRvciBBbnRpZ3VvPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvbWVvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTIgeCAxNjI8c3BhbiBpZD0iaTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi40Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVyZmVjdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIFJvbWVvcyIgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBSb21lb3MiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9Sb21lb3NfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGQeG0qgelCcU48jRQsCoO+CWzdMgjwWcBmrQiKDOy5nTQ==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dReplica_Antique_Humidor_Series%3b%26sortorder%3dfullname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">Search Results</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#H._Upmann">H. Upmann</option><option value="#Hoyo_de_Monterrey">Hoyo de Monterrey</option><option value="#Montecristo">Montecristo</option><option value="#Partagás">Partagás</option><option value="#Ramón_Allones">Ramón Allones</option><option value="#Romeo_y_Julieta">Romeo y Julieta</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Replica_Antique_Humidor_Series;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="H._Upmann">H. Upmann</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Réplica de Humidor Antiguo" href="brand.aspx?brand=H._Upmann#403_R|eplica_de_Humidor_Antiguo">Supremas No.2</a>&nbsp;<span class="subcontent">2014 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Unknown</td><td class="bordered-cell-L">58 x 180<span id="i0" class="inch">&nbsp;(7.1")</span></td><td class="bordered-cell-L">Double Perfecto</td><td class="bordered-cell-L"><img alt="H. Upmann Supremas No.2" title="H. Upmann Supremas No.2" src="images\H._Upmann_Supremas_No.2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann Réplica de Humidor Antiguo" href="brand.aspx?brand=H._Upmann#84_R|eplica_de_Humidor_Antiguo">Tacos Imperiales</a>&nbsp;<span class="subcontent">2006 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Tacos Imperiales</td><td class="bordered-cell-L">49 x 168<span id="i1" class="inch">&nbsp;(6.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="H. Upmann Tacos Imperiales" title="H. Upmann Tacos Imperiales" src="images\H._Upmann_Tacos_Imperiales_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Hoyo_de_Monterrey">Hoyo de Monterrey</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Réplica de Humidor Antiguo" href="brand.aspx?brand=Hoyo_de_Monterrey#326_R|eplica_de_Humidor_Antiguo">Monterrey</a>&nbsp;<span class="subcontent">2011 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Maravillas No.1</td><td class="bordered-cell-L">55 x 182<span id="i2" class="inch">&nbsp;(7.2")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Monterrey" title="Hoyo de Monterrey Monterrey" src="images\Hoyo_de_Monterrey_Monterrey_cigar_small_3.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Montecristo">Montecristo</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo Réplica de Humidor Antiguo" href="brand.aspx?brand=Montecristo#202_R|eplica_de_Humidor_Antiguo">Double Corona</a>&nbsp;<span class="subcontent">2009 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Prominentes</td><td class="bordered-cell-L">49 x 194<span id="i3" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="Montecristo Double Corona" title="Montecristo Double Corona" src="images\Montecristo_Double_Corona_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Partagás">Partagás</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás 170 Aniversario" href="brand.aspx?brand=Partag|as#412_170_Aniversario">Partagás 170</a>&nbsp;<span class="subcontent">2015 - 170 Aniversario</span></td><td class="bordered-cell-L">Partagás 170</td><td class="bordered-cell-L">56 x 170<span id="i4" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="Partagás Partagás 170" title="Partagás Partagás 170" src="images\Partagás_Partagás_170_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Réplica de Humidor Antiguo" href="brand.aspx?brand=Partag|as#127_R|eplica_de_Humidor_Antiguo">Sobresalientes</a>&nbsp;<span class="subcontent">2007 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Sobresalientes</td><td class="bordered-cell-L">53 x 153<span id="i5" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Partagás Sobresalientes" title="Partagás Sobresalientes" src="images\Partagás_Sobresalientes_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Ramón_Allones">Ramón Allones</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Réplica de Humidor Antiguo 2012" href="brand.aspx?brand=Ram|on_Allones#346_R|eplica_de_Humidor_Antiguo_2012">Imperiales</a>&nbsp;<span class="subcontent">2012 - Réplica de Humidor Antiguo 2012</span></td><td class="bordered-cell-L">Partagás No.15</td><td class="bordered-cell-L">48 x 165<span id="i6" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Ramón Allones Imperiales" title="Ramón Allones Imperiales" src="images\Ramón_Allones_Imperiales_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Romeo_y_Julieta">Romeo y Julieta</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Réplica de Humidor Antiguo" href="brand.aspx?brand=Romeo_y_Julieta#162_R|eplica_de_Humidor_Antiguo">Romeos</a>&nbsp;<span class="subcontent">2008 - Réplica de Humidor Antiguo</span></td><td class="bordered-cell-L">Romeo</td><td class="bordered-cell-L">52 x 162<span id="i7" class="inch">&nbsp;(6.4")</span></td><td class="bordered-cell-L">Perfecto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Romeos" title="Romeo y Julieta Romeos" src="images\Romeo_y_Julieta_Romeos_cigar_small_1.jpg"/></td></tr></table></span>
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
