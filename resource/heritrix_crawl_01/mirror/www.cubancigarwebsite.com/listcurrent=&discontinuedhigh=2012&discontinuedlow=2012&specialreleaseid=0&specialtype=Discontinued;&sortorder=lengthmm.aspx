


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2012 Deletions
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
var inchLimit = 15;
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2012&amp;discontinuedlow=2012&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=lengthmm" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE1Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPjIwMTIgRGVsZXRpb25zPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEF30w8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAxMiZkaXNjb250aW51ZWRsb3c9MjAxMiZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEyJmRpc2NvbnRpbnVlZGxvdz0yMDEyJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEyJmRpc2NvbnRpbnVlZGxvdz0yMDEyJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMTImZGlzY29udGludWVkbG93PTIwMTImc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEyJmRpc2NvbnRpbnVlZGxvdz0yMDEyJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFBldGl0IFByaW5jZXNzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJvbWVvX3lfSnVsaWV0YSNQZXRpdF9QcmluY2VzcyI+Um9tZW8geSBKdWxpZXRhIFBldGl0IFByaW5jZXNzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBlcmxhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTAyPHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSb21lbyB5IEp1bGlldGEgUGV0aXQgUHJpbmNlc3MiIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgUGV0aXQgUHJpbmNlc3MiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9QZXRpdF9QcmluY2Vzc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ3VhYmEgVHJhZGljaW9uYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DdWFiYSNUcmFkaWNpb25hbGVzIj5DdWFiYSBUcmFkaWNpb25hbGVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk2IC0gRGlzY29udGludWVkIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RmF2b3JpdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjA8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUGVyZmVjdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ3VhYmEgVHJhZGljaW9uYWxlcyIgdGl0bGU9IkN1YWJhIFRyYWRpY2lvbmFsZXMiIHNyYz0iaW1hZ2VzXEN1YWJhX1RyYWRpY2lvbmFsZXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlRyaW5pZGFkIFJvYnVzdG9zIFQiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VHJpbmlkYWQjUm9idXN0b3NfVCI+VHJpbmlkYWQgUm9idXN0b3MgVDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOSAtIERpc2NvbnRpbnVlZCAyMDEyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRlbCBWYWxsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTI0PHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVHJpbmlkYWQgUm9idXN0b3MgVCIgdGl0bGU9IlRyaW5pZGFkIFJvYnVzdG9zIFQiIHNyYz0iaW1hZ2VzXFRyaW5pZGFkX1JvYnVzdG9fVF9jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWd1ZXJvcyBTZW9hbmUiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VmVndWVyb3MjU2VvYW5lIj5WZWd1ZXJvcyBTZW9hbmU8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TZW9hbmU8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNiB4IDEyNTxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJWZWd1ZXJvcyBTZW9hbmUiIHRpdGxlPSJWZWd1ZXJvcyBTZW9hbmUiIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX1Nlb2FuZV9jaWdhcl9zbWFsbF8xLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJFbCBSZXkgZGVsIE11bmRvIFBldGl0IENvcm9uYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9RWxfUmV5X2RlbF9NdW5kbyNQZXRpdF9Db3JvbmFzIj5FbCBSZXkgZGVsIE11bmRvIFBldGl0IENvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJFbCBSZXkgZGVsIE11bmRvIFBldGl0IENvcm9uYXMiIHRpdGxlPSJFbCBSZXkgZGVsIE11bmRvIFBldGl0IENvcm9uYXMiIHNyYz0iaW1hZ2VzXEVsX1JleV9kZWxfTXVuZG9fUGV0aXRfQ29yb25hc19jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQdW5jaCBQZXRpdCBDb3JvbmFzIGRlbCBQdW5jaCIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNQZXRpdF9Db3JvbmFzX2RlbF9QdW5jaCI+UHVuY2ggUGV0aXQgQ29yb25hcyBkZWwgUHVuY2g8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9Imk1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQdW5jaCBQZXRpdCBDb3JvbmFzIGRlbCBQdW5jaCIgdGl0bGU9IlB1bmNoIFBldGl0IENvcm9uYXMgZGVsIFB1bmNoIiBzcmM9ImltYWdlc1xQdW5jaF9QZXRpdF9Db3JvbmFzX2RlbF9QdW5jaF9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWd1ZXJvcyBNYXJldmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ3Vlcm9zI01hcmV2YXMiPlZlZ3Vlcm9zIE1hcmV2YXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTYiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ3Vlcm9zIE1hcmV2YXMiIHRpdGxlPSJWZWd1ZXJvcyBNYXJldmFzIiBzcmM9ImltYWdlc1xWZWd1ZXJvc19NYXJldmFzX2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVJvbWVvX3lfSnVsaWV0YSNDb3JvbmFzIj5Sb21lbyB5IEp1bGlldGEgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJvbWVvIHkgSnVsaWV0YSBDb3JvbmFzIiB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIENvcm9uYXMiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9Db3JvbmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWdhcyBSb2JhaW5hIEZhbWlsaWFyIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ2FzX1JvYmFpbmEjRmFtaWxpYXIiPlZlZ2FzIFJvYmFpbmEgRmFtaWxpYXI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ2FzIFJvYmFpbmEgRmFtaWxpYXIiIHRpdGxlPSJWZWdhcyBSb2JhaW5hIEZhbWlsaWFyIiBzcmM9ImltYWdlc1xWZWdhc19Sb2JhaW5hX0ZhbWlsaWFyX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJCb2zDrXZhciBDb3JvbmFzIEV4dHJhIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJvbHxpdmFyI0Nvcm9uYXNfRXh0cmEiPkJvbMOtdmFyIENvcm9uYXMgRXh0cmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RnJhbmNpc2NvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ0IHggMTQzPHNwYW4gaWQ9Imk5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCb2zDrXZhciBDb3JvbmFzIEV4dHJhIiB0aXRsZT0iQm9sw612YXIgQ29yb25hcyBFeHRyYSIgc3JjPSJpbWFnZXNcQm9sw612YXJfQ29yb25hc19FeHRyYV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVHJpbmlkYWQgUm9idXN0b3MgRXh0cmEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VHJpbmlkYWQjUm9idXN0b3NfRXh0cmEiPlRyaW5pZGFkIFJvYnVzdG9zIEV4dHJhPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA0IC0gRGlzY29udGludWVkIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RG9ibGVzIChUKTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTU1PHNwYW4gaWQ9ImkxMCIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlRyaW5pZGFkIFJvYnVzdG9zIEV4dHJhIiB0aXRsZT0iVHJpbmlkYWQgUm9idXN0b3MgRXh0cmEiIHNyYz0iaW1hZ2VzXFRyaW5pZGFkX1JvYnVzdG9fRXh0cmFfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkZvbnNlY2EgRm9uc2VjYSBOby4xIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUZvbnNlY2EjRm9uc2VjYV9Oby4xIj5Gb25zZWNhIEZvbnNlY2EgTm8uMTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYXphZG9yZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MyB4IDE2MjxzcGFuIGlkPSJpMTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi40Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uc2RhbGU8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRm9uc2VjYSBGb25zZWNhIE5vLjEiIHRpdGxlPSJGb25zZWNhIEZvbnNlY2EgTm8uMSIgc3JjPSJpbWFnZXNcRm9uc2VjYV9Gb25zZWNhX05vLjFfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iU2FuY2hvIFBhbnphIE1vbGlub3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FuY2hvX1BhbnphI01vbGlub3MiPlNhbmNobyBQYW56YSBNb2xpbm9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNlcnZhbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTY1PHNwYW4gaWQ9ImkxMiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYW5jaG8gUGFuemEgTW9saW5vcyIgdGl0bGU9IlNhbmNobyBQYW56YSBNb2xpbm9zIiBzcmM9ImltYWdlc1xTYW5jaG9fUGFuemFfTW9saW5vc19jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWdhcyBSb2JhaW5hIENsw6FzaWNvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1WZWdhc19Sb2JhaW5hI0NsfGFzaWNvcyI+VmVnYXMgUm9iYWluYSBDbMOhc2ljb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DZXJ2YW50ZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE2NTxzcGFuIGlkPSJpMTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uc2RhbGU8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVmVnYXMgUm9iYWluYSBDbMOhc2ljb3MiIHRpdGxlPSJWZWdhcyBSb2JhaW5hIENsw6FzaWNvcyIgc3JjPSJpbWFnZXNcVmVnYXNfUm9iYWluYV9DbMOhc2ljb3NfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgQ2h1cmNoaWxscyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSNDaHVyY2hpbGxzIj5Ib3lvIGRlIE1vbnRlcnJleSBDaHVyY2hpbGxzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkp1bGlldGEgTm8uMjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ3IHggMTc4PHNwYW4gaWQ9ImkxNCIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaHVyY2hpbGw8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgQ2h1cmNoaWxscyIgdGl0bGU9IkhveW8gZGUgTW9udGVycmV5IENodXJjaGlsbHMiIHNyYz0iaW1hZ2VzXEhveW9fZGVfTW9udGVycmV5X0NodXJjaGlsbHNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgVGHDrW5vcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1MYV9HbG9yaWFfQ3ViYW5hI1RhfGlub3MiPkxhIEdsb3JpYSBDdWJhbmEgVGHDrW5vczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDE3ODxzcGFuIGlkPSJpMTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2h1cmNoaWxsPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkxhIEdsb3JpYSBDdWJhbmEgVGHDrW5vcyIgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgVGHDrW5vcyIgc3JjPSJpbWFnZXNcTGFfR2xvcmlhX0N1YmFuYV9UYcOtbm9zX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjwvdGFibGU+ZGRkuEWyQ02X5Fe9qZNRcpvEGQ1aR3AwXoOGaRvaoNdH7xc=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2012%26discontinuedlow%3d2012%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dlengthmm ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2012 Deletions</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2012&discontinuedlow=2012&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2012&discontinuedlow=2012&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2012&discontinuedlow=2012&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2012&discontinuedlow=2012&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2012&discontinuedlow=2012&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Petit Princess" href="brand.aspx?brand=Romeo_y_Julieta#Petit_Princess">Romeo y Julieta Petit Princess</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i0" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Petit Princess" title="Romeo y Julieta Petit Princess" src="images\Romeo_y_Julieta_Petit_Princess_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba Tradicionales" href="brand.aspx?brand=Cuaba#Tradicionales">Cuaba Tradicionales</a>&nbsp;<span class="subcontent">1996 - Discontinued 2012</span></td><td class="bordered-cell-L">Favoritos</td><td class="bordered-cell-L">42 x 120<span id="i1" class="inch">&nbsp;(4.7")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Tradicionales" title="Cuaba Tradicionales" src="images\Cuaba_Tradicionales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad Robustos T" href="brand.aspx?brand=Trinidad#Robustos_T">Trinidad Robustos T</a>&nbsp;<span class="subcontent">2009 - Discontinued 2012</span></td><td class="bordered-cell-L">Del Valle</td><td class="bordered-cell-L">50 x 124<span id="i2" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Trinidad Robustos T" title="Trinidad Robustos T" src="images\Trinidad_Robusto_T_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Seoane" href="brand.aspx?brand=Vegueros#Seoane">Vegueros Seoane</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Seoane</td><td class="bordered-cell-L">36 x 125<span id="i3" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Seoane" title="Vegueros Seoane" src="images\Vegueros_Seoane_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Petit Coronas" href="brand.aspx?brand=El_Rey_del_Mundo#Petit_Coronas">El Rey del Mundo Petit Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i4" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Petit Coronas" title="El Rey del Mundo Petit Coronas" src="images\El_Rey_del_Mundo_Petit_Coronas_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Petit Coronas del Punch" href="brand.aspx?brand=Punch#Petit_Coronas_del_Punch">Punch Petit Coronas del Punch</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i5" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Punch Petit Coronas del Punch" title="Punch Petit Coronas del Punch" src="images\Punch_Petit_Coronas_del_Punch_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Marevas" href="brand.aspx?brand=Vegueros#Marevas">Vegueros Marevas</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i6" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Vegueros Marevas" title="Vegueros Marevas" src="images\Vegueros_Marevas_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Coronas" href="brand.aspx?brand=Romeo_y_Julieta#Coronas">Romeo y Julieta Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i7" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Coronas" title="Romeo y Julieta Coronas" src="images\Romeo_y_Julieta_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Familiar" href="brand.aspx?brand=Vegas_Robaina#Familiar">Vegas Robaina Familiar</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i8" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Vegas Robaina Familiar" title="Vegas Robaina Familiar" src="images\Vegas_Robaina_Familiar_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Coronas Extra" href="brand.aspx?brand=Bol|ivar#Coronas_Extra">Bolívar Coronas Extra</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Franciscos</td><td class="bordered-cell-L">44 x 143<span id="i9" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Bolívar Coronas Extra" title="Bolívar Coronas Extra" src="images\Bolívar_Coronas_Extra_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad Robustos Extra" href="brand.aspx?brand=Trinidad#Robustos_Extra">Trinidad Robustos Extra</a>&nbsp;<span class="subcontent">2004 - Discontinued 2012</span></td><td class="bordered-cell-L">Dobles (T)</td><td class="bordered-cell-L">50 x 155<span id="i10" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Trinidad Robustos Extra" title="Trinidad Robustos Extra" src="images\Trinidad_Robusto_Extra_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Fonseca Fonseca No.1" href="brand.aspx?brand=Fonseca#Fonseca_No.1">Fonseca Fonseca No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Cazadores</td><td class="bordered-cell-L">43 x 162<span id="i11" class="inch">&nbsp;(6.4")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Fonseca Fonseca No.1" title="Fonseca Fonseca No.1" src="images\Fonseca_Fonseca_No.1_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Sancho Panza Molinos" href="brand.aspx?brand=Sancho_Panza#Molinos">Sancho Panza Molinos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i12" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Sancho Panza Molinos" title="Sancho Panza Molinos" src="images\Sancho_Panza_Molinos_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Clásicos" href="brand.aspx?brand=Vegas_Robaina#Cl|asicos">Vegas Robaina Clásicos</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i13" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Vegas Robaina Clásicos" title="Vegas Robaina Clásicos" src="images\Vegas_Robaina_Clásicos_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey Churchills" href="brand.aspx?brand=Hoyo_de_Monterrey#Churchills">Hoyo de Monterrey Churchills</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i14" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Churchills" title="Hoyo de Monterrey Churchills" src="images\Hoyo_de_Monterrey_Churchills_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana Taínos" href="brand.aspx?brand=La_Gloria_Cubana#Ta|inos">La Gloria Cubana Taínos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2012</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i15" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Taínos" title="La Gloria Cubana Taínos" src="images\La_Gloria_Cubana_Taínos_cigar_small_0.jpg"/></td></tr></table></span>
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
