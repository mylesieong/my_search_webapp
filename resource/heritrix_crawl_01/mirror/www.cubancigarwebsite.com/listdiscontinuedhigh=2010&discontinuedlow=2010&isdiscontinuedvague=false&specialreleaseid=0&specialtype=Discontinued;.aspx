


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2010 Deletions
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
    <form name="aspnetForm" method="post" action="list.aspx?discontinuedhigh=2010&amp;discontinuedlow=2010&amp;isdiscontinuedvague=false&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE4Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBdMGPHNwYW4gY2xhc3M9ImhlYWQxIj4yMDEwIERlbGV0aW9uczwvc3Bhbj48YnIgLz48YnIgLz48ZGl2IGlkPSJwcmludEhlYWREcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IGJsb2NrOyB0ZXh0LWFsaWduOmNlbnRlcjsiPiAgPHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIiBzZWxlY3RlZD0ic2VsZWN0ZWQiPkJyYW5kczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjRGlwbG9tw6F0aWNvcyI+RGlwbG9tw6F0aWNvczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNFbF9SZXlfZGVsX011bmRvIj5FbCBSZXkgZGVsIE11bmRvPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0xhX0dsb3JpYV9DdWJhbmEiPkxhIEdsb3JpYSBDdWJhbmE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGFydGFnw6FzIj5QYXJ0YWfDoXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUHVuY2giPlB1bmNoPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1F1YWlfZF9PcnNheSI+UXVhaSBkJiMzOTtPcnNheTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNSYWZhZWxfR29uesOhbGV6Ij5SYWZhZWwgR29uesOhbGV6PC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1NhaW50X0x1aXNfUmV5Ij5TYWludCBMdWlzIFJleTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNWZWd1ZXJvcyI+VmVndWVyb3M8L29wdGlvbj48L3NlbGVjdD48YnIgLz48L2Rpdj5kZAICDw8WAh8BBetnPHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSI+PHRyPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMTAmZGlzY29udGludWVkbG93PTIwMTAmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWZ1bGxuYW1lIj5DaWdhciBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBTYWxpZGE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAxMCZkaXNjb250aW51ZWRsb3c9MjAxMCZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZmFjdG9yeW5hbWUiPkZhY3RvcnkgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgR2FsZXJhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPlNpemU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAxMCZkaXNjb250aW51ZWRsb3c9MjAxMCZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9cmluZyI+UmluZzwvYT4geCA8YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEwJmRpc2NvbnRpbnVlZGxvdz0yMDEwJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1sZW5ndGhtbSI+bW08L2E+PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAxMCZkaXNjb250aW51ZWRsb3c9MjAxMCZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9Y29tbW9ubmFtZSI+U2hhcGU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Q29tbW9uIE5hbWU8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+SW1hZ2U8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+UmVsYXRpdmUgU2NhbGU8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iRGlwbG9tw6F0aWNvcyI+RGlwbG9tw6F0aWNvczwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby40IiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPURpcGxvbXxhdGljb3MjRGlwbG9tfGF0aWNvc19Oby40Ij5EaXBsb23DoXRpY29zIE5vLjQ8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjYgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby40IiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjQiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby40X2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uNSI+RGlwbG9tw6F0aWNvcyBOby41PC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTY2IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVybGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMDI8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby41IiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjUiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby41X2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IkVsX1JleV9kZWxfTXVuZG8iPkVsIFJleSBkZWwgTXVuZG88L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJFbCBSZXkgZGVsIE11bmRvIEdyYW5kZXMgZGUgRXNwYcOxYSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1FbF9SZXlfZGVsX011bmRvI0dyYW5kZXNfZGVfRXNwYXxuYSI+R3JhbmRlcyBkZSBFc3Bhw7FhPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRlbGljYWRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM4IHggMTkyPHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRWwgUmV5IGRlbCBNdW5kbyBHcmFuZGVzIGRlIEVzcGHDsWEiIHRpdGxlPSJFbCBSZXkgZGVsIE11bmRvIEdyYW5kZXMgZGUgRXNwYcOxYSIgc3JjPSJpbWFnZXNcRWxfUmV5X2RlbF9NdW5kb19HcmFuZGVzX2RlX0VzcGHDsWFfY2lnYXJfc21hbGxfMy5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJMYV9HbG9yaWFfQ3ViYW5hIj5MYSBHbG9yaWEgQ3ViYW5hPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBMb2NhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBNZWRhaWxsZSBkJiMzOTtPciBOby4xIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUxhX0dsb3JpYV9DdWJhbmEjTWVkYWlsbGVfZHwtfHgzOTtPcl9Oby4xIj5NZWRhaWxsZSBkJiMzOTtPciBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRlbGljYWRvcyBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM2IHggMTg1PHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTGEgR2xvcmlhIEN1YmFuYSBNZWRhaWxsZSBkJiMzOTtPciBOby4xIiB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBNZWRhaWxsZSBkJiMzOTtPciBOby4xIiBzcmM9ImltYWdlc1xMYV9HbG9yaWFfQ3ViYW5hX01lZGFpbGxlX2RPcl9Oby4xX2NpZ2FyX3NtYWxsXzIuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgTWVkYWlsbGUgZCYjMzk7T3IgTm8uMyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1MYV9HbG9yaWFfQ3ViYW5hI01lZGFpbGxlX2R8LXx4Mzk7T3JfTm8uMyI+TWVkYWlsbGUgZCYjMzk7T3IgTm8uMzwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYW5ldGVsYXMgTGFyZ2FzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjggeCAxNzU8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2xpbSBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJMYSBHbG9yaWEgQ3ViYW5hIE1lZGFpbGxlIGQmIzM5O09yIE5vLjMiIHRpdGxlPSJMYSBHbG9yaWEgQ3ViYW5hIE1lZGFpbGxlIGQmIzM5O09yIE5vLjMiIHNyYz0iaW1hZ2VzXExhX0dsb3JpYV9DdWJhbmFfTWVkYWlsbGVfZE9yX05vLjNfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJQYXJ0YWfDoXMiPlBhcnRhZ8OhczwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgR2xvYmFsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjU2VyaWVfQ29ubmFpc3NldXJfTm8uMSI+U2VyaWUgQ29ubmFpc3NldXIgTm8uMTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5EZWxpY2Fkb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE5MjxzcGFuIGlkPSJpNSIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4xIiB0aXRsZT0iUGFydGFnw6FzIFNlcmllIENvbm5haXNzZXVyIE5vLjEiIHNyYz0iaW1hZ2VzXFBhcnRhZ2FzX1NlcmllX0Nvbm5haXNzZXVyX05vLjFfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyNTZXJpZV9Db25uYWlzc2V1cl9Oby4yIj5TZXJpZSBDb25uYWlzc2V1ciBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhcmVqb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE2NjxzcGFuIGlkPSJpNiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMiIgdGl0bGU9IlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4yIiBzcmM9ImltYWdlc1xQYXJ0YWdhc19TZXJpZV9Db25uYWlzc2V1cl9Oby4yX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjU2VyaWVfQ29ubmFpc3NldXJfTm8uMyI+U2VyaWUgQ29ubmFpc3NldXIgTm8uMzwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYXJsb3RhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM1IHggMTQzPHNwYW4gaWQ9Imk3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4zIiB0aXRsZT0iUGFydGFnw6FzIFNlcmllIENvbm5haXNzZXVyIE5vLjMiIHNyYz0iaW1hZ2VzXFBhcnRhZ2FzX1NlcmllX0Nvbm5haXNzZXVyX05vLjNfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUHVuY2giPlB1bmNoPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBNdWx0aUxvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQdW5jaCBDaHVyY2hpbGxzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVB1bmNoI0NodXJjaGlsbHMiPkNodXJjaGlsbHM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SnVsaWV0YSBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAxNzg8c3BhbiBpZD0iaTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2h1cmNoaWxsPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIENodXJjaGlsbHMiIHRpdGxlPSJQdW5jaCBDaHVyY2hpbGxzIiBzcmM9ImltYWdlc1xQdW5jaF9DaHVyY2hpbGxzX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNSb3lhbF9TZWxlY3Rpb25fTm8uMTEiPlJveWFsIFNlbGVjdGlvbiBOby4xMTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzIEdvcmRhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ2IHggMTQzPHNwYW4gaWQ9Imk5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdyYW5kIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQdW5jaCBSb3lhbCBTZWxlY3Rpb24gTm8uMTEiIHRpdGxlPSJQdW5jaCBSb3lhbCBTZWxlY3Rpb24gTm8uMTEiIHNyYz0iaW1hZ2VzXFB1bmNoX1JveWFsX1NlbGVjdGlvbl9Oby4xMV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUHVuY2ggUm95YWwgU2VsZWN0aW9uIE5vLjEyIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVB1bmNoI1JveWFsX1NlbGVjdGlvbl9Oby4xMiI+Um95YWwgU2VsZWN0aW9uIE5vLjEyPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk1hcmV2YXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEyOTxzcGFuIGlkPSJpMTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMiIgdGl0bGU9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMiIgc3JjPSJpbWFnZXNcUHVuY2hfUm95YWxfU2VsZWN0aW9uX05vLjEyX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlF1YWlfZF9PcnNheSI+UXVhaSBkJiMzOTtPcnNheTwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlF1YWkgZCYjMzk7T3JzYXkgUGFuZXRlbGFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1YWlfZHwtfHgzOTtPcnNheSNQYW5ldGVsYXMiPlBhbmV0ZWxhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk3NCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk5pbmZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjMzIHggMTc4PHNwYW4gaWQ9ImkxMSIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbGltIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlF1YWkgZCYjMzk7T3JzYXkgUGFuZXRlbGFzIiB0aXRsZT0iUXVhaSBkJiMzOTtPcnNheSBQYW5ldGVsYXMiIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9QYW5ldGVsYXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iUmFmYWVsX0dvbnrDoWxleiI+UmFmYWVsIEdvbnrDoWxlejwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJhZmFlbCBHb256w6FsZXogQ2lnYXJyaXRvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYWZhZWxfR29uenxhbGV6I0NpZ2Fycml0b3MiPkNpZ2Fycml0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjYgeCAxMTU8c3BhbiBpZD0iaTEyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNtYWxsIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJhZmFlbCBHb256w6FsZXogQ2lnYXJyaXRvcyIgdGl0bGU9IlJhZmFlbCBHb256w6FsZXogQ2lnYXJyaXRvcyIgc3JjPSJpbWFnZXNcUmFmYWVsX0dvbnrDoWxlel9DaWdhcnJpdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYWZhZWwgR29uesOhbGV6IENvcm9uYXMgRXh0cmEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFmYWVsX0dvbnp8YWxleiNDb3JvbmFzX0V4dHJhIj5Db3JvbmFzIEV4dHJhPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXMgR29yZGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDYgeCAxNDM8c3BhbiBpZD0iaTEzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdyYW5kIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYWZhZWwgR29uesOhbGV6IENvcm9uYXMgRXh0cmEiIHRpdGxlPSJSYWZhZWwgR29uesOhbGV6IENvcm9uYXMgRXh0cmEiIHNyYz0iaW1hZ2VzXFJhZmFlbF9Hb256w6FsZXpfQ29yb25hc19FeHRyYV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJTYWludF9MdWlzX1JleSI+U2FpbnQgTHVpcyBSZXk8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYWludCBMdWlzIFJleSBDaHVyY2hpbGxzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhaW50X0x1aXNfUmV5I0NodXJjaGlsbHMiPkNodXJjaGlsbHM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SnVsaWV0YSBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAxNzg8c3BhbiBpZD0iaTE0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNodXJjaGlsbDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYWludCBMdWlzIFJleSBDaHVyY2hpbGxzIiB0aXRsZT0iU2FpbnQgTHVpcyBSZXkgQ2h1cmNoaWxscyIgc3JjPSJpbWFnZXNcU2FpbnRfTHVpc19SZXlfQ2h1cmNoaWxsc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYWludCBMdWlzIFJleSBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhaW50X0x1aXNfUmV5I0Nvcm9uYXMiPkNvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTQyPHNwYW4gaWQ9ImkxNSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FpbnQgTHVpcyBSZXkgQ29yb25hcyIgdGl0bGU9IlNhaW50IEx1aXMgUmV5IENvcm9uYXMiIHNyYz0iaW1hZ2VzXFNhaW50X0x1aXNfUmV5X0Nvcm9uYXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlNhaW50IEx1aXMgUmV5IFBldGl0IENvcm9uYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FpbnRfTHVpc19SZXkjUGV0aXRfQ29yb25hcyI+UGV0aXQgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTE2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYWludCBMdWlzIFJleSBQZXRpdCBDb3JvbmFzIiB0aXRsZT0iU2FpbnQgTHVpcyBSZXkgUGV0aXQgQ29yb25hcyIgc3JjPSJpbWFnZXNcU2FpbnRfTHVpc19SZXlfUGV0aXRfQ29yb25hc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJWZWd1ZXJvcyI+VmVndWVyb3M8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VmVndWVyb3MjRXNwZWNpYWxlc19Oby4xIj5Fc3BlY2lhbGVzIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE5MjxzcGFuIGlkPSJpMTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIHRpdGxlPSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVmVndWVyb3MgRXNwZWNpYWxlcyBOby4yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ3Vlcm9zI0VzcGVjaWFsZXNfTm8uMiI+RXNwZWNpYWxlcyBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxNTI8c3BhbiBpZD0iaTE4IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ3Vlcm9zIEVzcGVjaWFsZXMgTm8uMiIgdGl0bGU9IlZlZ3Vlcm9zIEVzcGVjaWFsZXMgTm8uMiIgc3JjPSJpbWFnZXNcVmVndWVyb3NfRXNwZWNpYWxlc19Oby4yX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48L3RhYmxlPmRkZOGMkCJschdWh9DAZLsuyPFdtCw5dsestLapy6d+OaGg" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fdiscontinuedhigh%3d2010%26discontinuedlow%3d2010%26isdiscontinuedvague%3dfalse%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2010 Deletions</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Diplomáticos">Diplomáticos</option><option value="#El_Rey_del_Mundo">El Rey del Mundo</option><option value="#La_Gloria_Cubana">La Gloria Cubana</option><option value="#Partagás">Partagás</option><option value="#Punch">Punch</option><option value="#Quai_d_Orsay">Quai d&#39;Orsay</option><option value="#Rafael_González">Rafael González</option><option value="#Saint_Luis_Rey">Saint Luis Rey</option><option value="#Vegueros">Vegueros</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Diplomáticos">Diplomáticos</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.4" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.4">Diplomáticos No.4</a>&nbsp;<span class="subcontent">1966 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i0" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.4" title="Diplomáticos Diplomáticos No.4" src="images\Diplomáticos_Diplomáticos_No.4_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.5" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.5">Diplomáticos No.5</a>&nbsp;<span class="subcontent">1966 - Discontinued 2010</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i1" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.5" title="Diplomáticos Diplomáticos No.5" src="images\Diplomáticos_Diplomáticos_No.5_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="El_Rey_del_Mundo">El Rey del Mundo</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Grandes de España" href="brand.aspx?brand=El_Rey_del_Mundo#Grandes_de_Espa|na">Grandes de España</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Delicados</td><td class="bordered-cell-L">38 x 192<span id="i2" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Grandes de España" title="El Rey del Mundo Grandes de España" src="images\El_Rey_del_Mundo_Grandes_de_España_cigar_small_3.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="La_Gloria_Cubana">La Gloria Cubana</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana Medaille d&#39;Or No.1" href="brand.aspx?brand=La_Gloria_Cubana#Medaille_d|-|x39;Or_No.1">Medaille d&#39;Or No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Delicados Extra</td><td class="bordered-cell-L">36 x 185<span id="i3" class="inch">&nbsp;(7.3")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Medaille d&#39;Or No.1" title="La Gloria Cubana Medaille d&#39;Or No.1" src="images\La_Gloria_Cubana_Medaille_dOr_No.1_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana Medaille d&#39;Or No.3" href="brand.aspx?brand=La_Gloria_Cubana#Medaille_d|-|x39;Or_No.3">Medaille d&#39;Or No.3</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Panetelas Largas</td><td class="bordered-cell-L">28 x 175<span id="i4" class="inch">&nbsp;(6.9")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Medaille d&#39;Or No.3" title="La Gloria Cubana Medaille d&#39;Or No.3" src="images\La_Gloria_Cubana_Medaille_dOr_No.3_cigar_small_1.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Partagás">Partagás</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie Connaisseur No.1" href="brand.aspx?brand=Partag|as#Serie_Connaisseur_No.1">Serie Connaisseur No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Delicados</td><td class="bordered-cell-L">38 x 192<span id="i5" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Partagás Serie Connaisseur No.1" title="Partagás Serie Connaisseur No.1" src="images\Partagas_Serie_Connaisseur_No.1_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie Connaisseur No.2" href="brand.aspx?brand=Partag|as#Serie_Connaisseur_No.2">Serie Connaisseur No.2</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Parejos</td><td class="bordered-cell-L">38 x 166<span id="i6" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Partagás Serie Connaisseur No.2" title="Partagás Serie Connaisseur No.2" src="images\Partagas_Serie_Connaisseur_No.2_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie Connaisseur No.3" href="brand.aspx?brand=Partag|as#Serie_Connaisseur_No.3">Serie Connaisseur No.3</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Carlotas</td><td class="bordered-cell-L">35 x 143<span id="i7" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Partagás Serie Connaisseur No.3" title="Partagás Serie Connaisseur No.3" src="images\Partagas_Serie_Connaisseur_No.3_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Punch">Punch</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Punch Churchills" href="brand.aspx?brand=Punch#Churchills">Churchills</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i8" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Punch Churchills" title="Punch Churchills" src="images\Punch_Churchills_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Royal Selection No.11" href="brand.aspx?brand=Punch#Royal_Selection_No.11">Royal Selection No.11</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i9" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Punch Royal Selection No.11" title="Punch Royal Selection No.11" src="images\Punch_Royal_Selection_No.11_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Royal Selection No.12" href="brand.aspx?brand=Punch#Royal_Selection_No.12">Royal Selection No.12</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i10" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Punch Royal Selection No.12" title="Punch Royal Selection No.12" src="images\Punch_Royal_Selection_No.12_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Quai_d_Orsay">Quai d&#39;Orsay</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Panetelas" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Panetelas">Panetelas</a>&nbsp;<span class="subcontent">1974 - Discontinued 2010</span></td><td class="bordered-cell-L">Ninfas</td><td class="bordered-cell-L">33 x 178<span id="i11" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Panetelas" title="Quai d&#39;Orsay Panetelas" src="images\Quai_d'Orsay_Panetelas_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Rafael_González">Rafael González</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Cigarritos" href="brand.aspx?brand=Rafael_Gonz|alez#Cigarritos">Cigarritos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.3</td><td class="bordered-cell-L">26 x 115<span id="i12" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Rafael González Cigarritos" title="Rafael González Cigarritos" src="images\Rafael_González_Cigarritos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Coronas Extra" href="brand.aspx?brand=Rafael_Gonz|alez#Coronas_Extra">Coronas Extra</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i13" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Rafael González Coronas Extra" title="Rafael González Coronas Extra" src="images\Rafael_González_Coronas_Extra_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Saint_Luis_Rey">Saint Luis Rey</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Churchills" href="brand.aspx?brand=Saint_Luis_Rey#Churchills">Churchills</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i14" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Churchills" title="Saint Luis Rey Churchills" src="images\Saint_Luis_Rey_Churchills_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Coronas" href="brand.aspx?brand=Saint_Luis_Rey#Coronas">Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i15" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Coronas" title="Saint Luis Rey Coronas" src="images\Saint_Luis_Rey_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Petit Coronas" href="brand.aspx?brand=Saint_Luis_Rey#Petit_Coronas">Petit Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i16" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Petit Coronas" title="Saint Luis Rey Petit Coronas" src="images\Saint_Luis_Rey_Petit_Coronas_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Vegueros">Vegueros</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Especiales No.1" href="brand.aspx?brand=Vegueros#Especiales_No.1">Especiales No.1</a>&nbsp;<span class="subcontent">1997 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i17" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Especiales No.1" title="Vegueros Especiales No.1" src="images\Vegueros_Especiales_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Especiales No.2" href="brand.aspx?brand=Vegueros#Especiales_No.2">Especiales No.2</a>&nbsp;<span class="subcontent">1997 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i18" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Especiales No.2" title="Vegueros Especiales No.2" src="images\Vegueros_Especiales_No.2_cigar_small.jpg"/></td></tr></table></span>
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
