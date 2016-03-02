


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2002 Releases
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
    <form name="aspnetForm" method="post" action="list.aspx?releaselow=2002&amp;releasehigh=2002&amp;isreleasevague=false&amp;specialreleaseid=0" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDExOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBfYEPHNwYW4gY2xhc3M9ImhlYWQxIj4yMDAyIFJlbGVhc2VzPC9zcGFuPjxiciAvPjxiciAvPjxkaXYgaWQ9InByaW50SGVhZERyb3Bkb3duIiBzdHlsZT0iZGlzcGxheTogYmxvY2s7IHRleHQtYWxpZ246Y2VudGVyOyI+ICA8c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMSIgbmFtZT0iRDEiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iIHNlbGVjdGVkPSJzZWxlY3RlZCI+QnJhbmRzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb2hpYmEiPkNvaGliYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNHdWFudGFuYW1lcmEiPkd1YW50YW5hbWVyYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNMYV9GbG9yX2RlX0Nhbm8iPkxhIEZsb3IgZGUgQ2Fubzwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQb3JfTGFycmHDsWFnYSI+UG9yIExhcnJhw7FhZ2E8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUXVpbnRlcm8iPlF1aW50ZXJvPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PC9kaXY+ZGQCAg8PFgIfAQWiPzx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mcmVsZWFzZWhpZ2g9MjAwMiZyZWxlYXNlbG93PTIwMDImc3BlY2lhbHJlbGVhc2VpZD0wJmlzcmVsZWFzZXZhZ3VlPWZhbHNlJnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0yMDAyJnJlbGVhc2Vsb3c9MjAwMiZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9ZmFsc2Umc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0yMDAyJnJlbGVhc2Vsb3c9MjAwMiZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9ZmFsc2Umc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnJlbGVhc2VoaWdoPTIwMDImcmVsZWFzZWxvdz0yMDAyJnNwZWNpYWxyZWxlYXNlaWQ9MCZpc3JlbGVhc2V2YWd1ZT1mYWxzZSZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZyZWxlYXNlaGlnaD0yMDAyJnJlbGVhc2Vsb3c9MjAwMiZzcGVjaWFscmVsZWFzZWlkPTAmaXNyZWxlYXNldmFndWU9ZmFsc2Umc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IkNvaGliYSI+Q29oaWJhPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBTaWdsbyBWSSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Db2hpYmEjU2lnbG9fVkkiPlNpZ2xvIFZJPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDAyIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYcOxb25hem88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDE1MDxzcGFuIGlkPSJpMCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBTaWdsbyBWSSIgdGl0bGU9IkNvaGliYSBTaWdsbyBWSSIgc3JjPSJpbWFnZXNcQ29oaWJhX1NpZ2xvX1ZJX2NpZ2FyX3NtYWxsXzIuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iR3VhbnRhbmFtZXJhIj5HdWFudGFuYW1lcmE8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IElUQyBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iR3VhbnRhbmFtZXJhIENvbXBheSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1HdWFudGFuYW1lcmEjQ29tcGF5Ij5Db21wYXk8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDIgLSBTdGF0dXMgdW5jZXJ0YWluPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEyMzxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iR3VhbnRhbmFtZXJhIENvbXBheSIgdGl0bGU9Ikd1YW50YW5hbWVyYSBDb21wYXkiIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9Db21wYXlfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ikd1YW50YW5hbWVyYSBDcmlzdGFsZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9R3VhbnRhbmFtZXJhI0NyaXN0YWxlcyI+Q3Jpc3RhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDAyIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DcmlzdGFsZXMgTWFubzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQxIHggMTUwPHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikd1YW50YW5hbWVyYSBDcmlzdGFsZXMiIHRpdGxlPSJHdWFudGFuYW1lcmEgQ3Jpc3RhbGVzIiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfQ3Jpc3RhbGVzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJHdWFudGFuYW1lcmEgRMOpY2ltb3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9R3VhbnRhbmFtZXJhI0R8ZWNpbW9zIj5Ew6ljaW1vczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwMiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+VW5pdmVyc2FsZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDEzNDxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJHdWFudGFuYW1lcmEgRMOpY2ltb3MiIHRpdGxlPSJHdWFudGFuYW1lcmEgRMOpY2ltb3MiIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9EZWNpbW9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJHdWFudGFuYW1lcmEgUHVyaXRvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1HdWFudGFuYW1lcmEjUHVyaXRvcyI+UHVyaXRvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwMiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2hpY29zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjkgeCAxMDY8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2lnYXJpbGxvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikd1YW50YW5hbWVyYSBQdXJpdG9zIiB0aXRsZT0iR3VhbnRhbmFtZXJhIFB1cml0b3MiIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9QdXJpdG9zX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iTGFfRmxvcl9kZV9DYW5vIj5MYSBGbG9yIGRlIENhbm88L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJMYSBGbG9yIGRlIENhbm8gUGV0aXQgQ29yb25hcyAoMikiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TGFfRmxvcl9kZV9DYW5vI1BldGl0X0Nvcm9uYXNfKDIpIj5QZXRpdCBDb3JvbmFzICgyKTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+YzIwMDIgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN0YW5kYXJkPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMjM8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC44Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkxhIEZsb3IgZGUgQ2FubyBQZXRpdCBDb3JvbmFzICgyKSIgdGl0bGU9IkxhIEZsb3IgZGUgQ2FubyBQZXRpdCBDb3JvbmFzICgyKSIgc3JjPSJpbWFnZXNcTGFfRmxvcl9kZV9DYW5vX1BldGl0X0Nvcm9uYXNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTGEgRmxvciBkZSBDYW5vIFNlbGVjdG9zICgyKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1MYV9GbG9yX2RlX0Nhbm8jU2VsZWN0b3NfKDIpIj5TZWxlY3RvcyAoMik8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPmMyMDAyIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DcmlzdGFsZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MSB4IDE1MDxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJMYSBGbG9yIGRlIENhbm8gU2VsZWN0b3MgKDIpIiB0aXRsZT0iTGEgRmxvciBkZSBDYW5vIFNlbGVjdG9zICgyKSIgc3JjPSJpbWFnZXNcTGFfRmxvcl9kZV9DYW5vX1NlbGVjdG9zX2NpZ2FyX3NtYWxsXzMuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUG9yX0xhcnJhw7FhZ2EiPlBvciBMYXJyYcOxYWdhPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBMb2NhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUG9yIExhcnJhw7FhZ2EgTW9udGVjYXJsb3MgKDIpIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBvcl9MYXJyYXxuYWdhI01vbnRlY2FybG9zXygyKSI+TW9udGVjYXJsb3MgKDIpPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5jMjAwMiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RGVsaWNpb3NvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjMzIHggMTU5PHNwYW4gaWQ9Imk3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNsaW0gUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUG9yIExhcnJhw7FhZ2EgTW9udGVjYXJsb3MgKDIpIiB0aXRsZT0iUG9yIExhcnJhw7FhZ2EgTW9udGVjYXJsb3MgKDIpIiBzcmM9ImltYWdlc1xQb3JfTGFycmHDsWFnYV9Nb250ZWNhcmxvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUG9yIExhcnJhw7FhZ2EgUGFuZXRlbGFzICgyKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Qb3JfTGFycmF8bmFnYSNQYW5ldGVsYXNfKDIpIj5QYW5ldGVsYXMgKDIpPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5jMjAwMiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+VmVndWVyaXRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM2IHggMTI3PHNwYW4gaWQ9Imk4IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNob3J0IFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBvciBMYXJyYcOxYWdhIFBhbmV0ZWxhcyAoMikiIHRpdGxlPSJQb3IgTGFycmHDsWFnYSBQYW5ldGVsYXMgKDIpIiBzcmM9ImltYWdlc1xQb3JfTGFycmHDsWFnYV9QYW5ldGVsYXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUXVpbnRlcm8iPlF1aW50ZXJvPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBNdWx0aUxvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJRdWludGVybyBCcmV2YXMgKDMpIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1aW50ZXJvI0JyZXZhc18oMykiPkJyZXZhcyAoMyk8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPmMyMDAyIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5OYWNpb25hbGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDEgeCAxNDA8c3BhbiBpZD0iaTkiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlF1aW50ZXJvIEJyZXZhcyAoMykiIHRpdGxlPSJRdWludGVybyBCcmV2YXMgKDMpIiBzcmM9ImltYWdlc1xRdWludGVyb19CcmV2YXNfKDMpX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJRdWludGVybyBOYWNpb25hbGVzICgyKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1RdWludGVybyNOYWNpb25hbGVzXygyKSI+TmFjaW9uYWxlcyAoMik8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPmMyMDAyIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5OYWNpb25hbGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDEgeCAxNDA8c3BhbiBpZD0iaTEwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJRdWludGVybyBOYWNpb25hbGVzICgyKSIgdGl0bGU9IlF1aW50ZXJvIE5hY2lvbmFsZXMgKDIpIiBzcmM9ImltYWdlc1xRdWludGVyb19OYWNpb25hbGVzXygyKV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUXVpbnRlcm8gUGFuZXRlbGFzICgyKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1RdWludGVybyNQYW5ldGVsYXNfKDIpIj5QYW5ldGVsYXMgKDIpPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5jMjAwMiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+VmVndWVyaXRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM2IHggMTI3PHNwYW4gaWQ9ImkxMSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJRdWludGVybyBQYW5ldGVsYXMgKDIpIiB0aXRsZT0iUXVpbnRlcm8gUGFuZXRlbGFzICgyKSIgc3JjPSJpbWFnZXNcUXVpbnRlcm9fUGFuZXRlbGFzXygyKV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGTmbRGSs3qD1Mf4DJfc/Il03ngx56MNyTTThdo387ECIA==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3freleaselow%3d2002%26releasehigh%3d2002%26isreleasevague%3dfalse%26specialreleaseid%3d0 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2002 Releases</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Cohiba">Cohiba</option><option value="#Guantanamera">Guantanamera</option><option value="#La_Flor_de_Cano">La Flor de Cano</option><option value="#Por_Larrañaga">Por Larrañaga</option><option value="#Quintero">Quintero</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&releasehigh=2002&releaselow=2002&specialreleaseid=0&isreleasevague=false&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=2002&releaselow=2002&specialreleaseid=0&isreleasevague=false&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&releasehigh=2002&releaselow=2002&specialreleaseid=0&isreleasevague=false&sortorder=ring">Ring</a> x <a href="list.aspx?current=&releasehigh=2002&releaselow=2002&specialreleaseid=0&isreleasevague=false&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=2002&releaselow=2002&specialreleaseid=0&isreleasevague=false&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Cohiba">Cohiba</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Siglo VI" href="brand.aspx?brand=Cohiba#Siglo_VI">Siglo VI</a>&nbsp;<span class="subcontent">2002 - Current</span></td><td class="bordered-cell-L">Cañonazo</td><td class="bordered-cell-L">52 x 150<span id="i0" class="inch">&nbsp;(5.9")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Cohiba Siglo VI" title="Cohiba Siglo VI" src="images\Cohiba_Siglo_VI_cigar_small_2.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Guantanamera">Guantanamera</a><span class="brand-type">&nbsp; -&nbsp; ITC Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Guantanamera Compay" href="brand.aspx?brand=Guantanamera#Compay">Compay</a>&nbsp;<span class="subcontent">2002 - Status uncertain</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i1" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Guantanamera Compay" title="Guantanamera Compay" src="images\Guantanamera_Compay_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Guantanamera Cristales" href="brand.aspx?brand=Guantanamera#Cristales">Cristales</a>&nbsp;<span class="subcontent">2002 - Current</span></td><td class="bordered-cell-L">Cristales Mano</td><td class="bordered-cell-L">41 x 150<span id="i2" class="inch">&nbsp;(5.9")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Guantanamera Cristales" title="Guantanamera Cristales" src="images\Guantanamera_Cristales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Guantanamera Décimos" href="brand.aspx?brand=Guantanamera#D|ecimos">Décimos</a>&nbsp;<span class="subcontent">2002 - Current</span></td><td class="bordered-cell-L">Universales</td><td class="bordered-cell-L">38 x 134<span id="i3" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Guantanamera Décimos" title="Guantanamera Décimos" src="images\Guantanamera_Decimos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Guantanamera Puritos" href="brand.aspx?brand=Guantanamera#Puritos">Puritos</a>&nbsp;<span class="subcontent">2002 - Current</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i4" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Guantanamera Puritos" title="Guantanamera Puritos" src="images\Guantanamera_Puritos_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="La_Flor_de_Cano">La Flor de Cano</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="La Flor de Cano Petit Coronas (2)" href="brand.aspx?brand=La_Flor_de_Cano#Petit_Coronas_(2)">Petit Coronas (2)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Standard</td><td class="bordered-cell-L">40 x 123<span id="i5" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="La Flor de Cano Petit Coronas (2)" title="La Flor de Cano Petit Coronas (2)" src="images\La_Flor_de_Cano_Petit_Coronas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Flor de Cano Selectos (2)" href="brand.aspx?brand=La_Flor_de_Cano#Selectos_(2)">Selectos (2)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Cristales</td><td class="bordered-cell-L">41 x 150<span id="i6" class="inch">&nbsp;(5.9")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="La Flor de Cano Selectos (2)" title="La Flor de Cano Selectos (2)" src="images\La_Flor_de_Cano_Selectos_cigar_small_3.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Por_Larrañaga">Por Larrañaga</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Montecarlos (2)" href="brand.aspx?brand=Por_Larra|naga#Montecarlos_(2)">Montecarlos (2)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Deliciosos</td><td class="bordered-cell-L">33 x 159<span id="i7" class="inch">&nbsp;(6.3")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="Por Larrañaga Montecarlos (2)" title="Por Larrañaga Montecarlos (2)" src="images\Por_Larrañaga_Montecarlos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Panetelas (2)" href="brand.aspx?brand=Por_Larra|naga#Panetelas_(2)">Panetelas (2)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Vegueritos</td><td class="bordered-cell-L">36 x 127<span id="i8" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Por Larrañaga Panetelas (2)" title="Por Larrañaga Panetelas (2)" src="images\Por_Larrañaga_Panetelas_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Quintero">Quintero</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Quintero Brevas (3)" href="brand.aspx?brand=Quintero#Brevas_(3)">Brevas (3)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Nacionales</td><td class="bordered-cell-L">41 x 140<span id="i9" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Quintero Brevas (3)" title="Quintero Brevas (3)" src="images\Quintero_Brevas_(3)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quintero Nacionales (2)" href="brand.aspx?brand=Quintero#Nacionales_(2)">Nacionales (2)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Nacionales</td><td class="bordered-cell-L">41 x 140<span id="i10" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Quintero Nacionales (2)" title="Quintero Nacionales (2)" src="images\Quintero_Nacionales_(2)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quintero Panetelas (2)" href="brand.aspx?brand=Quintero#Panetelas_(2)">Panetelas (2)</a>&nbsp;<span class="subcontent">c2002 - Current</span></td><td class="bordered-cell-L">Vegueritos</td><td class="bordered-cell-L">36 x 127<span id="i11" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Quintero Panetelas (2)" title="Quintero Panetelas (2)" src="images\Quintero_Panetelas_(2)_cigar_small.jpg"/></td></tr></table></span>
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
