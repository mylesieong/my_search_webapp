


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2005 Deletions
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
var inchLimit = 18;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2005&amp;discontinuedlow=2005&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=fullname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE4Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBfkGPHNwYW4gY2xhc3M9ImhlYWQxIj4yMDA1IERlbGV0aW9uczwvc3Bhbj48YnIgLz48YnIgLz48ZGl2IGlkPSJwcmludEhlYWREcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IGJsb2NrOyB0ZXh0LWFsaWduOmNlbnRlcjsiPiAgPHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIiBzZWxlY3RlZD0ic2VsZWN0ZWQiPkJyYW5kczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQmVsaW5kYSI+QmVsaW5kYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNCb2zDrXZhciI+Qm9sw612YXI8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ2FiYcOxYXMiPkNhYmHDsWFzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0dpc3BlcnQiPkdpc3BlcnQ8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTG9zX1N0YXRvc19kZV9MdXhlIj5Mb3MgU3RhdG9zIGRlIEx1eGU8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGFydGFnw6FzIj5QYXJ0YWfDoXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUG9yX0xhcnJhw7FhZ2EiPlBvciBMYXJyYcOxYWdhPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1B1bmNoIj5QdW5jaDwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNRdWludGVybyI+UXVpbnRlcm88L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUmFtw7NuX0FsbG9uZXMiPlJhbcOzbiBBbGxvbmVzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1Ryb3lhIj5Ucm95YTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjwvZGl2PmRkAgIPDxYCHwEFhGM8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAwNSZkaXNjb250aW51ZWRsb3c9MjAwNSZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA1JmRpc2NvbnRpbnVlZGxvdz0yMDA1JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA1JmRpc2NvbnRpbnVlZGxvdz0yMDA1JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDUmZGlzY29udGludWVkbG93PTIwMDUmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA1JmRpc2NvbnRpbnVlZGxvdz0yMDA1JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJCZWxpbmRhIj5CZWxpbmRhPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBJVEMgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJlbGluZGEgQ29yb25hcyAoMSkiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9QmVsaW5kYSNDb3JvbmFzXygxKSI+Q29yb25hcyAoMSk8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DcmVtYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDE0MDxzcGFuIGlkPSJpMCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQmVsaW5kYSBDb3JvbmFzICgxKSIgdGl0bGU9IkJlbGluZGEgQ29yb25hcyAoMSkiIHNyYz0iaW1hZ2VzXEJlbGluZGFfQ29yb25hc18oMSlfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJlbGluZGEgRGVtaSBUYXNzZSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1CZWxpbmRhI0RlbWlfVGFzc2UiPkRlbWkgVGFzc2U8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5EZW1pIFRhc3NlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzIgeCAxMDA8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoMy45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U21hbGwgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQmVsaW5kYSBEZW1pIFRhc3NlIiB0aXRsZT0iQmVsaW5kYSBEZW1pIFRhc3NlIiBzcmM9ImltYWdlc1xCZWxpbmRhX0RlbWlfVGFzc2Vfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJlbGluZGEgUGV0aXQgQ29yb25hcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1CZWxpbmRhI1BldGl0X0Nvcm9uYXMiPlBldGl0IENvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkJlbGluZGEgUGV0aXQgQ29yb25hcyIgdGl0bGU9IkJlbGluZGEgUGV0aXQgQ29yb25hcyIgc3JjPSJpbWFnZXNcQmVsaW5kYV9QZXRpdF9Db3JvbmFzX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IkJvbMOtdmFyIj5Cb2zDrXZhcjwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTXVsdGlMb2NhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQm9sw612YXIgQ2hpY29zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJvbHxpdmFyI0NoaWNvcyI+Q2hpY29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCb2zDrXZhciBDaGljb3MiIHRpdGxlPSJCb2zDrXZhciBDaGljb3MiIHNyYz0iaW1hZ2VzXEJvbMOtdmFyX0NoaWNvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJDYWJhw7FhcyI+Q2FiYcOxYXM8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IERpc2NvbnRpbnVlZCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ2FiYcOxYXMgQmVsdmVkZXJlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYWJhfG5hcyNCZWx2ZWRlcmVzIj5CZWx2ZWRlcmVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTg5IC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+QmVsdmVkZXJlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM5IHggMTI1PHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNob3J0IFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhYmHDsWFzIEJlbHZlZGVyZXMiIHRpdGxlPSJDYWJhw7FhcyBCZWx2ZWRlcmVzIiBzcmM9ImltYWdlc1xDYWJhw7Fhc19CZWx2ZWRlcmVzX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNhYmHDsWFzIFByZWNpb3NhcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYWJhfG5hcyNQcmVjaW9zYXMiPlByZWNpb3NhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk4OSAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRlbWkgVGFzc2U8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zMiB4IDEwMDxzcGFuIGlkPSJpNSIgY2xhc3M9ImluY2giPiZuYnNwOygzLjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDYWJhw7FhcyBQcmVjaW9zYXMiIHRpdGxlPSJDYWJhw7FhcyBQcmVjaW9zYXMiIHNyYz0iaW1hZ2VzXENhYmHDsWFzX1ByZWNpb3Nhc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJHaXNwZXJ0Ij5HaXNwZXJ0PC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBEaXNjb250aW51ZWQgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ikdpc3BlcnQgSGFiYW5lcmFzIE5vLjIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9R2lzcGVydCNIYWJhbmVyYXNfTm8uMiI+SGFiYW5lcmFzIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPmMxOTgwIC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U3RhbmRhcmQgTWFubzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTIzPHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJHaXNwZXJ0IEhhYmFuZXJhcyBOby4yIiB0aXRsZT0iR2lzcGVydCBIYWJhbmVyYXMgTm8uMiIgc3JjPSJpbWFnZXNcR2lzcGVydF9IYWJhbmVyb3NfTm8uMl9jaWdhcl9zbWFsbF8xLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9Ikxvc19TdGF0b3NfZGVfTHV4ZSI+TG9zIFN0YXRvcyBkZSBMdXhlPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBEaXNjb250aW51ZWQgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkxvcyBTdGF0b3MgZGUgTHV4ZSBCcmV2YXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TG9zX1N0YXRvc19kZV9MdXhlI0JyZXZhcyI+QnJldmFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCBjMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5OYWNpb25hbGVzIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDE0MDxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTG9zIFN0YXRvcyBkZSBMdXhlIEJyZXZhcyIgdGl0bGU9IkxvcyBTdGF0b3MgZGUgTHV4ZSBCcmV2YXMiIHNyYz0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9CcmV2YXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkxvcyBTdGF0b3MgZGUgTHV4ZSBDcmVtYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TG9zX1N0YXRvc19kZV9MdXhlI0NyZW1hcyI+Q3JlbWFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCBjMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5OYWNpb25hbGVzIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDE0MDxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTG9zIFN0YXRvcyBkZSBMdXhlIENyZW1hcyIgdGl0bGU9IkxvcyBTdGF0b3MgZGUgTHV4ZSBDcmVtYXMiIHNyYz0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9DcmVtYXNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTG9zIFN0YXRvcyBkZSBMdXhlIERlbGlyaW9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUxvc19TdGF0b3NfZGVfTHV4ZSNEZWxpcmlvcyI+RGVsaXJpb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIGMyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEyMzxzcGFuIGlkPSJpOSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTG9zIFN0YXRvcyBkZSBMdXhlIERlbGlyaW9zIiB0aXRsZT0iTG9zIFN0YXRvcyBkZSBMdXhlIERlbGlyaW9zIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfRGVsaXJpb3NfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJQYXJ0YWfDoXMiPlBhcnRhZ8OhczwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgR2xvYmFsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgQ2hpY29zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyNDaGljb3MiPkNoaWNvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaGljb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4yOSB4IDEwNjxzcGFuIGlkPSJpMTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2lnYXJpbGxvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBDaGljb3MiIHRpdGxlPSJQYXJ0YWfDoXMgQ2hpY29zIiBzcmM9ImltYWdlc1xQYXJ0YWfDoXNfQ2hpY29zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlBvcl9MYXJyYcOxYWdhIj5Qb3IgTGFycmHDsWFnYTwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBvciBMYXJyYcOxYWdhIEp1YW5pdG9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBvcl9MYXJyYXxuYWdhI0p1YW5pdG9zIj5KdWFuaXRvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaGljb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4yOSB4IDEwNjxzcGFuIGlkPSJpMTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2lnYXJpbGxvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBvciBMYXJyYcOxYWdhIEp1YW5pdG9zIiB0aXRsZT0iUG9yIExhcnJhw7FhZ2EgSnVhbml0b3MiIHNyYz0iaW1hZ2VzXFBvcl9MYXJyYcOxYWdhX0p1YW5pdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlB1bmNoIj5QdW5jaDwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTXVsdGlMb2NhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUHVuY2ggQ2lnYXJpbGxvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNDaWdhcmlsbG9zIj5DaWdhcmlsbG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9ImkxMiIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaWdhcmlsbG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUHVuY2ggQ2lnYXJpbGxvcyIgdGl0bGU9IlB1bmNoIENpZ2FyaWxsb3MiIHNyYz0iaW1hZ2VzXFB1bmNoX0NpZ2FyaWxsb3NfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJRdWludGVybyI+UXVpbnRlcm88L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IE11bHRpTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlF1aW50ZXJvIFB1cml0b3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UXVpbnRlcm8jUHVyaXRvcyI+UHVyaXRvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgYzIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2hpY29zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjkgeCAxMDY8c3BhbiBpZD0iaTEzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJRdWludGVybyBQdXJpdG9zIiB0aXRsZT0iUXVpbnRlcm8gUHVyaXRvcyIgc3JjPSJpbWFnZXNcUXVpbnRlcm9fUHVyaXRvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJSYW3Ds25fQWxsb25lcyI+UmFtw7NuIEFsbG9uZXM8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBCZWx2ZWRlcmVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJhbXxvbl9BbGxvbmVzI0JlbHZlZGVyZXMiPkJlbHZlZGVyZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+QmVsdmVkZXJlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM5IHggMTI1PHNwYW4gaWQ9ImkxNCIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYW3Ds24gQWxsb25lcyBCZWx2ZWRlcmVzIiB0aXRsZT0iUmFtw7NuIEFsbG9uZXMgQmVsdmVkZXJlcyIgc3JjPSJpbWFnZXNcUmFtb25fQWxsb25lc19CZWx2ZWRlcmVzX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBCaXRzIG9mIEhhdmFuYSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYW18b25fQWxsb25lcyNCaXRzX29mX0hhdmFuYSI+Qml0cyBvZiBIYXZhbmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2hpY29zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjkgeCAxMDY8c3BhbiBpZD0iaTE1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYW3Ds24gQWxsb25lcyBCaXRzIG9mIEhhdmFuYSIgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEJpdHMgb2YgSGF2YW5hIiBzcmM9ImltYWdlc1xSYW1vbl9BbGxvbmVzX0JpdHNfb2ZfSGF2YW5hX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBNaWxsZSBGbGV1cnMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFtfG9uX0FsbG9uZXMjTWlsbGVfRmxldXJzIj5NaWxsZSBGbGV1cnM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9ImkxNiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUmFtw7NuIEFsbG9uZXMgTWlsbGUgRmxldXJzIiB0aXRsZT0iUmFtw7NuIEFsbG9uZXMgTWlsbGUgRmxldXJzIiBzcmM9ImltYWdlc1xSYW3Ds25fQWxsb25lc19NaWxsZV9GbGV1cnNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iVHJveWEiPlRyb3lhPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBJVEMgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlRyb3lhIENvcm9uYXMgQ2x1YiAoMSkiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VHJveWEjQ29yb25hc19DbHViXygxKSI+Q29yb25hcyBDbHViICgxKTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TdGFuZGFyZCBNYW5vPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMjM8c3BhbiBpZD0iaTE3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJUcm95YSBDb3JvbmFzIENsdWIgKDEpIiB0aXRsZT0iVHJveWEgQ29yb25hcyBDbHViICgxKSIgc3JjPSJpbWFnZXNcVHJveWFfQ29yb25hc19DbHViXygxKV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVHJveWEgVW5pdmVyc2FsZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VHJveWEjVW5pdmVyc2FsZXMiPlVuaXZlcnNhbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlVuaXZlcnNhbGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxMzQ8c3BhbiBpZD0iaTE4IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNob3J0IFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlRyb3lhIFVuaXZlcnNhbGVzIiB0aXRsZT0iVHJveWEgVW5pdmVyc2FsZXMiIHNyYz0iaW1hZ2VzXFRyb3lhX1VuaXZlcnNhbGVzX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjwvdGFibGU+ZGRkdHSVBttUk1txtKpcVZdeBvn/3sEd8dO8cOldhDwIuaM=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2005%26discontinuedlow%3d2005%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dfullname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2005 Deletions</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Belinda">Belinda</option><option value="#Bolívar">Bolívar</option><option value="#Cabañas">Cabañas</option><option value="#Gispert">Gispert</option><option value="#Los_Statos_de_Luxe">Los Statos de Luxe</option><option value="#Partagás">Partagás</option><option value="#Por_Larrañaga">Por Larrañaga</option><option value="#Punch">Punch</option><option value="#Quintero">Quintero</option><option value="#Ramón_Allones">Ramón Allones</option><option value="#Troya">Troya</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Belinda">Belinda</a><span class="brand-type">&nbsp; -&nbsp; ITC Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Coronas (1)" href="brand.aspx?brand=Belinda#Coronas_(1)">Coronas (1)</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Cremas</td><td class="bordered-cell-L">40 x 140<span id="i0" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Belinda Coronas (1)" title="Belinda Coronas (1)" src="images\Belinda_Coronas_(1)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Demi Tasse" href="brand.aspx?brand=Belinda#Demi_Tasse">Demi Tasse</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Demi Tasse</td><td class="bordered-cell-L">32 x 100<span id="i1" class="inch">&nbsp;(3.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Belinda Demi Tasse" title="Belinda Demi Tasse" src="images\Belinda_Demi_Tasse_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Petit Coronas" href="brand.aspx?brand=Belinda#Petit_Coronas">Petit Coronas</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Petit Coronas</td><td class="bordered-cell-L">42 x 129<span id="i2" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Belinda Petit Coronas" title="Belinda Petit Coronas" src="images\Belinda_Petit_Coronas_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Bolívar">Bolívar</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Chicos" href="brand.aspx?brand=Bol|ivar#Chicos">Chicos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i3" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Bolívar Chicos" title="Bolívar Chicos" src="images\Bolívar_Chicos_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Cabañas">Cabañas</a><span class="brand-type">&nbsp; -&nbsp; Discontinued Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Belvederes" href="brand.aspx?brand=Caba|nas#Belvederes">Belvederes</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i4" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Cabañas Belvederes" title="Cabañas Belvederes" src="images\Cabañas_Belvederes_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Preciosas" href="brand.aspx?brand=Caba|nas#Preciosas">Preciosas</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Demi Tasse</td><td class="bordered-cell-L">32 x 100<span id="i5" class="inch">&nbsp;(3.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Cabañas Preciosas" title="Cabañas Preciosas" src="images\Cabañas_Preciosas_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Gispert">Gispert</a><span class="brand-type">&nbsp; -&nbsp; Discontinued Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Gispert Habaneras No.2" href="brand.aspx?brand=Gispert#Habaneras_No.2">Habaneras No.2</a>&nbsp;<span class="subcontent">c1980 - Discontinued 2005</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i6" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Gispert Habaneras No.2" title="Gispert Habaneras No.2" src="images\Gispert_Habaneros_No.2_cigar_small_1.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Los_Statos_de_Luxe">Los Statos de Luxe</a><span class="brand-type">&nbsp; -&nbsp; Discontinued Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Los Statos de Luxe Brevas" href="brand.aspx?brand=Los_Statos_de_Luxe#Brevas">Brevas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Nacionales Mano</td><td class="bordered-cell-L">40 x 140<span id="i7" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Los Statos de Luxe Brevas" title="Los Statos de Luxe Brevas" src="images\Los_Statos_de_Luxe_Brevas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Los Statos de Luxe Cremas" href="brand.aspx?brand=Los_Statos_de_Luxe#Cremas">Cremas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Nacionales Mano</td><td class="bordered-cell-L">40 x 140<span id="i8" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Los Statos de Luxe Cremas" title="Los Statos de Luxe Cremas" src="images\Los_Statos_de_Luxe_Cremas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Los Statos de Luxe Delirios" href="brand.aspx?brand=Los_Statos_de_Luxe#Delirios">Delirios</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i9" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Los Statos de Luxe Delirios" title="Los Statos de Luxe Delirios" src="images\Los_Statos_de_Luxe_Delirios_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Partagás">Partagás</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Chicos" href="brand.aspx?brand=Partag|as#Chicos">Chicos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i10" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Partagás Chicos" title="Partagás Chicos" src="images\Partagás_Chicos_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Por_Larrañaga">Por Larrañaga</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Juanitos" href="brand.aspx?brand=Por_Larra|naga#Juanitos">Juanitos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i11" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Por Larrañaga Juanitos" title="Por Larrañaga Juanitos" src="images\Por_Larrañaga_Juanitos_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Punch">Punch</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Punch Cigarillos" href="brand.aspx?brand=Punch#Cigarillos">Cigarillos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i12" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Punch Cigarillos" title="Punch Cigarillos" src="images\Punch_Cigarillos_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Quintero">Quintero</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Quintero Puritos" href="brand.aspx?brand=Quintero#Puritos">Puritos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i13" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Quintero Puritos" title="Quintero Puritos" src="images\Quintero_Puritos_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Ramón_Allones">Ramón Allones</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Belvederes" href="brand.aspx?brand=Ram|on_Allones#Belvederes">Belvederes</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i14" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Ramón Allones Belvederes" title="Ramón Allones Belvederes" src="images\Ramon_Allones_Belvederes_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Bits of Havana" href="brand.aspx?brand=Ram|on_Allones#Bits_of_Havana">Bits of Havana</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i15" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Ramón Allones Bits of Havana" title="Ramón Allones Bits of Havana" src="images\Ramon_Allones_Bits_of_Havana_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Mille Fleurs" href="brand.aspx?brand=Ram|on_Allones#Mille_Fleurs">Mille Fleurs</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Petit Coronas</td><td class="bordered-cell-L">42 x 129<span id="i16" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Ramón Allones Mille Fleurs" title="Ramón Allones Mille Fleurs" src="images\Ramón_Allones_Mille_Fleurs_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Troya">Troya</a><span class="brand-type">&nbsp; -&nbsp; ITC Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Troya Coronas Club (1)" href="brand.aspx?brand=Troya#Coronas_Club_(1)">Coronas Club (1)</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i17" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Troya Coronas Club (1)" title="Troya Coronas Club (1)" src="images\Troya_Coronas_Club_(1)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Troya Universales" href="brand.aspx?brand=Troya#Universales">Universales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Universales</td><td class="bordered-cell-L">38 x 134<span id="i18" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Troya Universales" title="Troya Universales" src="images\Troya_Universales_cigar_small_0.jpg"/></td></tr></table></span>
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
