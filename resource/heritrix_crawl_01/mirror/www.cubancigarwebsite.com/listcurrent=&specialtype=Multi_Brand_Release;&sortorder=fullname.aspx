


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
var inchLimit = 14;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=Multi_Brand_Release%3b&amp;sortorder=fullname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE0Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBbEGPHNwYW4gY2xhc3M9ImhlYWQxIj5TZWFyY2ggUmVzdWx0czwvc3Bhbj48YnIgLz48YnIgLz48ZGl2IGlkPSJwcmludEhlYWREcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IGJsb2NrOyB0ZXh0LWFsaWduOmNlbnRlcjsiPiAgPHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIiBzZWxlY3RlZD0ic2VsZWN0ZWQiPkJyYW5kczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ29oaWJhIj5Db2hpYmE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ3VhYmEiPkN1YWJhPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0guX1VwbWFubiI+SC4gVXBtYW5uPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0hveW9fZGVfTW9udGVycmV5Ij5Ib3lvIGRlIE1vbnRlcnJleTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNNb250ZWNyaXN0byI+TW9udGVjcmlzdG88L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGFydGFnw6FzIj5QYXJ0YWfDoXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUm9tZW9feV9KdWxpZXRhIj5Sb21lbyB5IEp1bGlldGE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjU2FuX0NyaXN0w7NiYWwiPlNhbiBDcmlzdMOzYmFsPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1RyaW5pZGFkIj5UcmluaWRhZDwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjwvZGl2PmRkAgIPDxYCHwEFpFU8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPU11bHRpX0JyYW5kX1JlbGVhc2U7JnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1NdWx0aV9CcmFuZF9SZWxlYXNlOyZzb3J0b3JkZXI9ZmFjdG9yeW5hbWUiPkZhY3RvcnkgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgR2FsZXJhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPlNpemU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPU11bHRpX0JyYW5kX1JlbGVhc2U7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1NdWx0aV9CcmFuZF9SZWxlYXNlOyZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1NdWx0aV9CcmFuZF9SZWxlYXNlOyZzb3J0b3JkZXI9Y29tbW9ubmFtZSI+U2hhcGU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Q29tbW9uIE5hbWU8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+SW1hZ2U8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+UmVsYXRpdmUgU2NhbGU8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iQ29oaWJhIj5Db2hpYmE8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ29oaWJhIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+RXNwbMOpbmRpZG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDAzIC0gNTEwIEFuaXZlcnNhcmlvIEh1bWlkb3I8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SnVsaWV0YSBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAxNzg8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2h1cmNoaWxsPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBFc3Bsw6luZGlkb3MiIHRpdGxlPSJDb2hpYmEgRXNwbMOpbmRpZG9zIiBzcmM9ImltYWdlc1xDb2hpYmFfRXNwbMOpbmRpZG9zX2NpZ2FyX3NtYWxsXzUuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPkdlbmlvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOSAtIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HZW5pb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDE0MDxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBHZW5pb3MiIHRpdGxlPSJDb2hpYmEgR2VuaW9zIiBzcmM9ImltYWdlc1xDb2hpYmFfR2VuaW9zX2NpZ2FyX3NtYWxsXzIuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPlNpZ2xvIFZJPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNhw7FvbmF6bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTUwPHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG8gRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ29oaWJhIFNpZ2xvIFZJIiB0aXRsZT0iQ29oaWJhIFNpZ2xvIFZJIiBzcmM9ImltYWdlc1xDb2hpYmFfU2lnbG9fVklfY2lnYXJfc21hbGxfNC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJDdWFiYSI+Q3VhYmE8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IE5pY2hlIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDdWFiYSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q3VhYmEjMjA2X1hfRWRpY2l8b25fRmVzdGl2YWxfZGVsX0hhYmFubyI+R2VuZXJvc29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdlbmVyb3NvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTMyPHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBlcmZlY3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkN1YWJhIEdlbmVyb3NvcyIgdGl0bGU9IkN1YWJhIEdlbmVyb3NvcyIgc3JjPSJpbWFnZXNcQ3VhYmFfR2VuZXJvc29zX2NpZ2FyX3NtYWxsXzIuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iSC5fVXBtYW5uIj5ILiBVcG1hbm48L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSC4gVXBtYW5uIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1ILl9VcG1hbm4jMjA2X1hfRWRpY2l8b25fRmVzdGl2YWxfZGVsX0hhYmFubyI+TWFnbnVtIDUwPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBSb2J1c3RvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTYwPHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBSb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkguIFVwbWFubiBNYWdudW0gNTAiIHRpdGxlPSJILiBVcG1hbm4gTWFnbnVtIDUwIiBzcmM9ImltYWdlc1xILl9VcG1hbm5fTWFnbnVtXzUwX2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iSG95b19kZV9Nb250ZXJyZXkiPkhveW8gZGUgTW9udGVycmV5PC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5FcGljdXJlIEVzcGVjaWFsPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdvcmRpdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxNDE8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJIb3lvIGRlIE1vbnRlcnJleSBFcGljdXJlIEVzcGVjaWFsIiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgRXBpY3VyZSBFc3BlY2lhbCIgc3JjPSJpbWFnZXNcSG95b19kZV9Nb250ZXJyZXlfRXBpY3VyZV9Fc3BlY2lhbF9jaWdhcl9zbWFsbF8zLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+RXBpY3VyZSBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDAzIC0gNTEwIEFuaXZlcnNhcmlvIEh1bWlkb3I8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hcyBHb3JkYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NiB4IDE0MzxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgRXBpY3VyZSBOby4xIiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgRXBpY3VyZSBOby4xIiBzcmM9ImltYWdlc1xIb3lvX2RlX01vbnRlcnJleV9FcGljdXJlX05vLjFfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJNb250ZWNyaXN0byI+TW9udGVjcmlzdG88L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTW9udGVjcmlzdG8gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPU1vbnRlY3Jpc3RvIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPkVkbXVuZG88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RWRtdW5kbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTM1PHNwYW4gaWQ9Imk3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTW9udGVjcmlzdG8gRWRtdW5kbyIgdGl0bGU9Ik1vbnRlY3Jpc3RvIEVkbXVuZG8iIHNyYz0iaW1hZ2VzXE1vbnRlY3Jpc3RvX0VkbXVuZG9fY2lnYXJfc21hbGxfNS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTW9udGVjcmlzdG8gNTEwIEFuaXZlcnNhcmlvIEh1bWlkb3IiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TW9udGVjcmlzdG8jNTdfNTEwX0FuaXZlcnNhcmlvX0h1bWlkb3IiPk1vbnRlY3Jpc3RvIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDMgLSA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QaXLDoW1pZGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTIgeCAxNTY8c3BhbiBpZD0iaTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UHlyYW1pZDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBOby4yIiB0aXRsZT0iTW9udGVjcmlzdG8gTW9udGVjcmlzdG8gTm8uMiIgc3JjPSJpbWFnZXNcTW9udGVjcmlzdG9fTW9udGVjcmlzdG9fTm8uMl9jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlBhcnRhZ8OhcyI+UGFydGFnw6FzPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjNTdfNTEwX0FuaXZlcnNhcmlvX0h1bWlkb3IiPlJveWFscyBkZSBQYXJ0YWfDoXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDMgLSA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5GZWxpcGUgMjQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NSB4IDExNTxzcGFuIGlkPSJpOSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmEgRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFJveWFscyBkZSBQYXJ0YWfDoXMiIHRpdGxlPSJQYXJ0YWfDoXMgUm95YWxzIGRlIFBhcnRhZ8OhcyIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1JveWFsc19kZV9QYXJ0YWdhc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5TZXJpZSBQIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTU2PHNwYW4gaWQ9ImkxMCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QeXJhbWlkPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBTZXJpZSBQIE5vLjIiIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgUCBOby4yIiBzcmM9ImltYWdlc1xQYXJ0YWfDoXNfU2VyaWVfUF9Oby4yX2NpZ2FyX3NtYWxsXzMuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUm9tZW9feV9KdWxpZXRhIj5Sb21lbyB5IEp1bGlldGE8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IEdsb2JhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJvbWVvX3lfSnVsaWV0YSM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+SGVybW9zb3MgTm8uMzwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwMyAtIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkhlcm1vc29zIE5vLjM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OCB4IDE0MDxzcGFuIGlkPSJpMTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R3JhbmQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJvbWVvIHkgSnVsaWV0YSBIZXJtb3NvcyBOby4zIiB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIEhlcm1vc29zIE5vLjMiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9IZXJtb3Nvc19Oby4zX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Um9tZW9feV9KdWxpZXRhIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPlNob3J0IENodXJjaGlsbDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOSAtIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTI0PHNwYW4gaWQ9ImkxMiIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJvbWVvIHkgSnVsaWV0YSBTaG9ydCBDaHVyY2hpbGwiIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgU2hvcnQgQ2h1cmNoaWxsIiBzcmM9ImltYWdlc1xSb21lb195X0p1bGlldGFfU2hvcnRfQ2h1cmNoaWxsX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iU2FuX0NyaXN0w7NiYWwiPlNhbiBDcmlzdMOzYmFsPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBOaWNoZSBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iU2FuIENyaXN0w7NiYWwgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhbl9DcmlzdHxvYmFsIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPk1lcmNhZGVyZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SGVybW9zb3MgTm8uMTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ4IHggMTY3PHNwYW4gaWQ9ImkxMyIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FuIENyaXN0w7NiYWwgTWVyY2FkZXJlcyIgdGl0bGU9IlNhbiBDcmlzdMOzYmFsIE1lcmNhZGVyZXMiIHNyYz0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19NZXJjYWRlcmVzX2NpZ2FyX3NtYWxsXzUuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iVHJpbmlkYWQiPlRyaW5pZGFkPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBOaWNoZSBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVHJpbmlkYWQgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVRyaW5pZGFkIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPlJvYnVzdG9zIEV4dHJhPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvYmxlcyAoVCk8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MCB4IDE1NTxzcGFuIGlkPSJpMTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJUcmluaWRhZCBSb2J1c3RvcyBFeHRyYSIgdGl0bGU9IlRyaW5pZGFkIFJvYnVzdG9zIEV4dHJhIiBzcmM9ImltYWdlc1xUcmluaWRhZF9Sb2J1c3Rvc19FeHRyYV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48L3RhYmxlPmRkZAF2G6JIxh8ZQSeWiHKrNbuIKfjUg27PU/NIQRpw+DHu" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dMulti_Brand_Release%3b%26sortorder%3dfullname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">Search Results</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Cohiba">Cohiba</option><option value="#Cuaba">Cuaba</option><option value="#H._Upmann">H. Upmann</option><option value="#Hoyo_de_Monterrey">Hoyo de Monterrey</option><option value="#Montecristo">Montecristo</option><option value="#Partagás">Partagás</option><option value="#Romeo_y_Julieta">Romeo y Julieta</option><option value="#San_Cristóbal">San Cristóbal</option><option value="#Trinidad">Trinidad</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Cohiba">Cohiba</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba 510 Aniversario Humidor" href="brand.aspx?brand=Cohiba#57_510_Aniversario_Humidor">Espléndidos</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i0" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Cohiba Espléndidos" title="Cohiba Espléndidos" src="images\Cohiba_Espléndidos_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba X Edición Festival del Habano" href="brand.aspx?brand=Cohiba#206_X_Edici|on_Festival_del_Habano">Genios</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Genios</td><td class="bordered-cell-L">52 x 140<span id="i1" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Cohiba Genios" title="Cohiba Genios" src="images\Cohiba_Genios_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba X Edición Festival del Habano" href="brand.aspx?brand=Cohiba#206_X_Edici|on_Festival_del_Habano">Siglo VI</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Cañonazo</td><td class="bordered-cell-L">52 x 150<span id="i2" class="inch">&nbsp;(5.9")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Cohiba Siglo VI" title="Cohiba Siglo VI" src="images\Cohiba_Siglo_VI_cigar_small_4.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Cuaba">Cuaba</a><span class="brand-type">&nbsp; -&nbsp; Niche Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba X Edición Festival del Habano" href="brand.aspx?brand=Cuaba#206_X_Edici|on_Festival_del_Habano">Generosos</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Generosos</td><td class="bordered-cell-L">42 x 132<span id="i3" class="inch">&nbsp;(5.2")</span></td><td class="bordered-cell-L">Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Generosos" title="Cuaba Generosos" src="images\Cuaba_Generosos_cigar_small_2.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="H._Upmann">H. Upmann</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann X Edición Festival del Habano" href="brand.aspx?brand=H._Upmann#206_X_Edici|on_Festival_del_Habano">Magnum 50</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Double Robustos</td><td class="bordered-cell-L">50 x 160<span id="i4" class="inch">&nbsp;(6.3")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="H. Upmann Magnum 50" title="H. Upmann Magnum 50" src="images\H._Upmann_Magnum_50_cigar_small_1.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Hoyo_de_Monterrey">Hoyo de Monterrey</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey X Edición Festival del Habano" href="brand.aspx?brand=Hoyo_de_Monterrey#206_X_Edici|on_Festival_del_Habano">Epicure Especial</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Gorditos</td><td class="bordered-cell-L">50 x 141<span id="i5" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Epicure Especial" title="Hoyo de Monterrey Epicure Especial" src="images\Hoyo_de_Monterrey_Epicure_Especial_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey 510 Aniversario Humidor" href="brand.aspx?brand=Hoyo_de_Monterrey#57_510_Aniversario_Humidor">Epicure No.1</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i6" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Epicure No.1" title="Hoyo de Monterrey Epicure No.1" src="images\Hoyo_de_Monterrey_Epicure_No.1_cigar_small_1.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Montecristo">Montecristo</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo X Edición Festival del Habano" href="brand.aspx?brand=Montecristo#206_X_Edici|on_Festival_del_Habano">Edmundo</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Edmundo</td><td class="bordered-cell-L">52 x 135<span id="i7" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Montecristo Edmundo" title="Montecristo Edmundo" src="images\Montecristo_Edmundo_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo 510 Aniversario Humidor" href="brand.aspx?brand=Montecristo#57_510_Aniversario_Humidor">Montecristo No.2</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i8" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo No.2" title="Montecristo Montecristo No.2" src="images\Montecristo_Montecristo_No.2_cigar_small_2.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Partagás">Partagás</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás 510 Aniversario Humidor" href="brand.aspx?brand=Partag|as#57_510_Aniversario_Humidor">Royals de Partagás</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Felipe 24</td><td class="bordered-cell-L">45 x 115<span id="i9" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Corona Extra</td><td class="bordered-cell-L"><img alt="Partagás Royals de Partagás" title="Partagás Royals de Partagás" src="images\Partagás_Royals_de_Partagas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás X Edición Festival del Habano" href="brand.aspx?brand=Partag|as#206_X_Edici|on_Festival_del_Habano">Serie P No.2</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i10" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Partagás Serie P No.2" title="Partagás Serie P No.2" src="images\Partagás_Serie_P_No.2_cigar_small_3.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Romeo_y_Julieta">Romeo y Julieta</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta 510 Aniversario Humidor" href="brand.aspx?brand=Romeo_y_Julieta#57_510_Aniversario_Humidor">Hermosos No.3</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Hermosos No.3</td><td class="bordered-cell-L">48 x 140<span id="i11" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Hermosos No.3" title="Romeo y Julieta Hermosos No.3" src="images\Romeo_y_Julieta_Hermosos_No.3_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta X Edición Festival del Habano" href="brand.aspx?brand=Romeo_y_Julieta#206_X_Edici|on_Festival_del_Habano">Short Churchill</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i12" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Short Churchill" title="Romeo y Julieta Short Churchill" src="images\Romeo_y_Julieta_Short_Churchill_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="San_Cristóbal">San Cristóbal</a><span class="brand-type">&nbsp; -&nbsp; Niche Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="San Cristóbal X Edición Festival del Habano" href="brand.aspx?brand=San_Crist|obal#206_X_Edici|on_Festival_del_Habano">Mercaderes</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Hermosos No.1</td><td class="bordered-cell-L">48 x 167<span id="i13" class="inch">&nbsp;(6.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="San Cristóbal Mercaderes" title="San Cristóbal Mercaderes" src="images\San_Cristóbal__Mercaderes_cigar_small_5.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Trinidad">Trinidad</a><span class="brand-type">&nbsp; -&nbsp; Niche Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad X Edición Festival del Habano" href="brand.aspx?brand=Trinidad#206_X_Edici|on_Festival_del_Habano">Robustos Extra</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Dobles (T)</td><td class="bordered-cell-L">50 x 155<span id="i14" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Trinidad Robustos Extra" title="Trinidad Robustos Extra" src="images\Trinidad_Robustos_Extra_cigar_small_0.jpg"/></td></tr></table></span>
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
