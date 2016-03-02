


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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2010&amp;discontinuedlow=2010&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=factoryname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE4Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPjIwMTAgRGVsZXRpb25zPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEFnF88dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAxMCZkaXNjb250aW51ZWRsb3c9MjAxMCZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEwJmRpc2NvbnRpbnVlZGxvdz0yMDEwJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEwJmRpc2NvbnRpbnVlZGxvdz0yMDEwJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMTAmZGlzY29udGludWVkbG93PTIwMTAmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDEwJmRpc2NvbnRpbnVlZGxvdz0yMDEwJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIFNlcmllIENvbm5haXNzZXVyIE5vLjMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzI1NlcmllX0Nvbm5haXNzZXVyX05vLjMiPlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNhcmxvdGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzUgeCAxNDM8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFNlcmllIENvbm5haXNzZXVyIE5vLjMiIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMyIgc3JjPSJpbWFnZXNcUGFydGFnYXNfU2VyaWVfQ29ubmFpc3NldXJfTm8uM19zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUHVuY2ggUm95YWwgU2VsZWN0aW9uIE5vLjExIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVB1bmNoI1JveWFsX1NlbGVjdGlvbl9Oby4xMSI+UHVuY2ggUm95YWwgU2VsZWN0aW9uIE5vLjExPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXMgR29yZGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDYgeCAxNDM8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R3JhbmQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMSIgdGl0bGU9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMSIgc3JjPSJpbWFnZXNcUHVuY2hfUm95YWxfU2VsZWN0aW9uX05vLjExX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYWZhZWwgR29uesOhbGV6IENvcm9uYXMgRXh0cmEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFmYWVsX0dvbnp8YWxleiNDb3JvbmFzX0V4dHJhIj5SYWZhZWwgR29uesOhbGV6IENvcm9uYXMgRXh0cmE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hcyBHb3JkYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NiB4IDE0MzxzcGFuIGlkPSJpMiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUmFmYWVsIEdvbnrDoWxleiBDb3JvbmFzIEV4dHJhIiB0aXRsZT0iUmFmYWVsIEdvbnrDoWxleiBDb3JvbmFzIEV4dHJhIiBzcmM9ImltYWdlc1xSYWZhZWxfR29uesOhbGV6X0Nvcm9uYXNfRXh0cmFfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlNhaW50IEx1aXMgUmV5IENvcm9uYXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FpbnRfTHVpc19SZXkjQ29yb25hcyI+U2FpbnQgTHVpcyBSZXkgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNDI8c3BhbiBpZD0iaTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlNhaW50IEx1aXMgUmV5IENvcm9uYXMiIHRpdGxlPSJTYWludCBMdWlzIFJleSBDb3JvbmFzIiBzcmM9ImltYWdlc1xTYWludF9MdWlzX1JleV9Db3JvbmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJMYSBHbG9yaWEgQ3ViYW5hIE1lZGFpbGxlIGQmIzM5O09yIE5vLjEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TGFfR2xvcmlhX0N1YmFuYSNNZWRhaWxsZV9kfC18eDM5O09yX05vLjEiPkxhIEdsb3JpYSBDdWJhbmEgTWVkYWlsbGUgZCYjMzk7T3IgTm8uMTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5EZWxpY2Fkb3MgRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNiB4IDE4NTxzcGFuIGlkPSJpNCIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkxhIEdsb3JpYSBDdWJhbmEgTWVkYWlsbGUgZCYjMzk7T3IgTm8uMSIgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgTWVkYWlsbGUgZCYjMzk7T3IgTm8uMSIgc3JjPSJpbWFnZXNcTGFfR2xvcmlhX0N1YmFuYV9NZWRhaWxsZV9kT3JfTm8uMV9jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJFbCBSZXkgZGVsIE11bmRvIEdyYW5kZXMgZGUgRXNwYcOxYSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1FbF9SZXlfZGVsX011bmRvI0dyYW5kZXNfZGVfRXNwYXxuYSI+RWwgUmV5IGRlbCBNdW5kbyBHcmFuZGVzIGRlIEVzcGHDsWE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RGVsaWNhZG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJFbCBSZXkgZGVsIE11bmRvIEdyYW5kZXMgZGUgRXNwYcOxYSIgdGl0bGU9IkVsIFJleSBkZWwgTXVuZG8gR3JhbmRlcyBkZSBFc3Bhw7FhIiBzcmM9ImltYWdlc1xFbF9SZXlfZGVsX011bmRvX0dyYW5kZXNfZGVfRXNwYcOxYV9jaWdhcl9zbWFsbF8zLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjU2VyaWVfQ29ubmFpc3NldXJfTm8uMSI+UGFydGFnw6FzIFNlcmllIENvbm5haXNzZXVyIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RGVsaWNhZG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTYiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMSIgdGl0bGU9IlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4xIiBzcmM9ImltYWdlc1xQYXJ0YWdhc19TZXJpZV9Db25uYWlzc2V1cl9Oby4xX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQdW5jaCBDaHVyY2hpbGxzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVB1bmNoI0NodXJjaGlsbHMiPlB1bmNoIENodXJjaGlsbHM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SnVsaWV0YSBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDcgeCAxNzg8c3BhbiBpZD0iaTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2h1cmNoaWxsPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIENodXJjaGlsbHMiIHRpdGxlPSJQdW5jaCBDaHVyY2hpbGxzIiBzcmM9ImltYWdlc1xQdW5jaF9DaHVyY2hpbGxzX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlNhaW50IEx1aXMgUmV5IENodXJjaGlsbHMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FpbnRfTHVpc19SZXkjQ2h1cmNoaWxscyI+U2FpbnQgTHVpcyBSZXkgQ2h1cmNoaWxsczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NyB4IDE3ODxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DaHVyY2hpbGw8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FpbnQgTHVpcyBSZXkgQ2h1cmNoaWxscyIgdGl0bGU9IlNhaW50IEx1aXMgUmV5IENodXJjaGlsbHMiIHNyYz0iaW1hZ2VzXFNhaW50X0x1aXNfUmV5X0NodXJjaGlsbHNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVmVndWVyb3MgRXNwZWNpYWxlcyBOby4xIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ3Vlcm9zI0VzcGVjaWFsZXNfTm8uMSI+VmVndWVyb3MgRXNwZWNpYWxlcyBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTkiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIHRpdGxlPSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVmVndWVyb3MgRXNwZWNpYWxlcyBOby4yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ3Vlcm9zI0VzcGVjaWFsZXNfTm8uMiI+VmVndWVyb3MgRXNwZWNpYWxlcyBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxNTI8c3BhbiBpZD0iaTEwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ3Vlcm9zIEVzcGVjaWFsZXMgTm8uMiIgdGl0bGU9IlZlZ3Vlcm9zIEVzcGVjaWFsZXMgTm8uMiIgc3JjPSJpbWFnZXNcVmVndWVyb3NfRXNwZWNpYWxlc19Oby4yX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSYWZhZWwgR29uesOhbGV6IENpZ2Fycml0b3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFmYWVsX0dvbnp8YWxleiNDaWdhcnJpdG9zIj5SYWZhZWwgR29uesOhbGV6IENpZ2Fycml0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MjYgeCAxMTU8c3BhbiBpZD0iaTExIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNtYWxsIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlJhZmFlbCBHb256w6FsZXogQ2lnYXJyaXRvcyIgdGl0bGU9IlJhZmFlbCBHb256w6FsZXogQ2lnYXJyaXRvcyIgc3JjPSJpbWFnZXNcUmFmYWVsX0dvbnrDoWxlel9DaWdhcnJpdG9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNCIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uNCI+RGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjQ8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjYgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTEyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNCIgdGl0bGU9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby40IiBzcmM9ImltYWdlc1xEaXBsb23DoXRpY29zX0RpcGxvbcOhdGljb3NfTm8uNF9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUHVuY2ggUm95YWwgU2VsZWN0aW9uIE5vLjEyIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVB1bmNoI1JveWFsX1NlbGVjdGlvbl9Oby4xMiI+UHVuY2ggUm95YWwgU2VsZWN0aW9uIE5vLjEyPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDEwPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk1hcmV2YXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEyOTxzcGFuIGlkPSJpMTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMiIgdGl0bGU9IlB1bmNoIFJveWFsIFNlbGVjdGlvbiBOby4xMiIgc3JjPSJpbWFnZXNcUHVuY2hfUm95YWxfU2VsZWN0aW9uX05vLjEyX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYWludCBMdWlzIFJleSBQZXRpdCBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhaW50X0x1aXNfUmV5I1BldGl0X0Nvcm9uYXMiPlNhaW50IEx1aXMgUmV5IFBldGl0IENvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9ImkxNCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FpbnQgTHVpcyBSZXkgUGV0aXQgQ29yb25hcyIgdGl0bGU9IlNhaW50IEx1aXMgUmV5IFBldGl0IENvcm9uYXMiIHNyYz0iaW1hZ2VzXFNhaW50X0x1aXNfUmV5X1BldGl0X0Nvcm9uYXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlF1YWkgZCYjMzk7T3JzYXkgUGFuZXRlbGFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1YWlfZHwtfHgzOTtPcnNheSNQYW5ldGVsYXMiPlF1YWkgZCYjMzk7T3JzYXkgUGFuZXRlbGFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTc0IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TmluZmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzMgeCAxNzg8c3BhbiBpZD0iaTE1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNsaW0gUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUXVhaSBkJiMzOTtPcnNheSBQYW5ldGVsYXMiIHRpdGxlPSJRdWFpIGQmIzM5O09yc2F5IFBhbmV0ZWxhcyIgc3JjPSJpbWFnZXNcUXVhaV9kJ09yc2F5X1BhbmV0ZWxhc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTGEgR2xvcmlhIEN1YmFuYSBNZWRhaWxsZSBkJiMzOTtPciBOby4zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUxhX0dsb3JpYV9DdWJhbmEjTWVkYWlsbGVfZHwtfHgzOTtPcl9Oby4zIj5MYSBHbG9yaWEgQ3ViYW5hIE1lZGFpbGxlIGQmIzM5O09yIE5vLjM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGFzIExhcmdhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI4IHggMTc1PHNwYW4gaWQ9ImkxNiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbGltIFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkxhIEdsb3JpYSBDdWJhbmEgTWVkYWlsbGUgZCYjMzk7T3IgTm8uMyIgdGl0bGU9IkxhIEdsb3JpYSBDdWJhbmEgTWVkYWlsbGUgZCYjMzk7T3IgTm8uMyIgc3JjPSJpbWFnZXNcTGFfR2xvcmlhX0N1YmFuYV9NZWRhaWxsZV9kT3JfTm8uM19jaWdhcl9zbWFsbF8xLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjU2VyaWVfQ29ubmFpc3NldXJfTm8uMiI+UGFydGFnw6FzIFNlcmllIENvbm5haXNzZXVyIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFyZWpvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM4IHggMTY2PHNwYW4gaWQ9ImkxNyIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU2VyaWUgQ29ubmFpc3NldXIgTm8uMiIgdGl0bGU9IlBhcnRhZ8OhcyBTZXJpZSBDb25uYWlzc2V1ciBOby4yIiBzcmM9ImltYWdlc1xQYXJ0YWdhc19TZXJpZV9Db25uYWlzc2V1cl9Oby4yX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJEaXBsb23DoXRpY29zIERpcGxvbcOhdGljb3MgTm8uNSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1EaXBsb218YXRpY29zI0RpcGxvbXxhdGljb3NfTm8uNSI+RGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjU8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjYgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXJsYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEwMjxzcGFuIGlkPSJpMTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkRpcGxvbcOhdGljb3MgRGlwbG9tw6F0aWNvcyBOby41IiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBEaXBsb23DoXRpY29zIE5vLjUiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby41X2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48L3RhYmxlPmRkZA4/QsmjvV4UAkiA3mj8cT6wYTCyIqxPJXigUs3qn5pK" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2010%26discontinuedlow%3d2010%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dfactoryname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2010 Deletions</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2010&discontinuedlow=2010&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie Connaisseur No.3" href="brand.aspx?brand=Partag|as#Serie_Connaisseur_No.3">Partagás Serie Connaisseur No.3</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Carlotas</td><td class="bordered-cell-L">35 x 143<span id="i0" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Partagás Serie Connaisseur No.3" title="Partagás Serie Connaisseur No.3" src="images\Partagas_Serie_Connaisseur_No.3_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Royal Selection No.11" href="brand.aspx?brand=Punch#Royal_Selection_No.11">Punch Royal Selection No.11</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i1" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Punch Royal Selection No.11" title="Punch Royal Selection No.11" src="images\Punch_Royal_Selection_No.11_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Coronas Extra" href="brand.aspx?brand=Rafael_Gonz|alez#Coronas_Extra">Rafael González Coronas Extra</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i2" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Rafael González Coronas Extra" title="Rafael González Coronas Extra" src="images\Rafael_González_Coronas_Extra_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Coronas" href="brand.aspx?brand=Saint_Luis_Rey#Coronas">Saint Luis Rey Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i3" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Coronas" title="Saint Luis Rey Coronas" src="images\Saint_Luis_Rey_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana Medaille d&#39;Or No.1" href="brand.aspx?brand=La_Gloria_Cubana#Medaille_d|-|x39;Or_No.1">La Gloria Cubana Medaille d&#39;Or No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Delicados Extra</td><td class="bordered-cell-L">36 x 185<span id="i4" class="inch">&nbsp;(7.3")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Medaille d&#39;Or No.1" title="La Gloria Cubana Medaille d&#39;Or No.1" src="images\La_Gloria_Cubana_Medaille_dOr_No.1_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Grandes de España" href="brand.aspx?brand=El_Rey_del_Mundo#Grandes_de_Espa|na">El Rey del Mundo Grandes de España</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Delicados</td><td class="bordered-cell-L">38 x 192<span id="i5" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Grandes de España" title="El Rey del Mundo Grandes de España" src="images\El_Rey_del_Mundo_Grandes_de_España_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie Connaisseur No.1" href="brand.aspx?brand=Partag|as#Serie_Connaisseur_No.1">Partagás Serie Connaisseur No.1</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Delicados</td><td class="bordered-cell-L">38 x 192<span id="i6" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Partagás Serie Connaisseur No.1" title="Partagás Serie Connaisseur No.1" src="images\Partagas_Serie_Connaisseur_No.1_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Churchills" href="brand.aspx?brand=Punch#Churchills">Punch Churchills</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i7" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Punch Churchills" title="Punch Churchills" src="images\Punch_Churchills_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Churchills" href="brand.aspx?brand=Saint_Luis_Rey#Churchills">Saint Luis Rey Churchills</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i8" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Churchills" title="Saint Luis Rey Churchills" src="images\Saint_Luis_Rey_Churchills_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Especiales No.1" href="brand.aspx?brand=Vegueros#Especiales_No.1">Vegueros Especiales No.1</a>&nbsp;<span class="subcontent">1997 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i9" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Especiales No.1" title="Vegueros Especiales No.1" src="images\Vegueros_Especiales_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Especiales No.2" href="brand.aspx?brand=Vegueros#Especiales_No.2">Vegueros Especiales No.2</a>&nbsp;<span class="subcontent">1997 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i10" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Especiales No.2" title="Vegueros Especiales No.2" src="images\Vegueros_Especiales_No.2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Rafael González Cigarritos" href="brand.aspx?brand=Rafael_Gonz|alez#Cigarritos">Rafael González Cigarritos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.3</td><td class="bordered-cell-L">26 x 115<span id="i11" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Rafael González Cigarritos" title="Rafael González Cigarritos" src="images\Rafael_González_Cigarritos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.4" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.4">Diplomáticos Diplomáticos No.4</a>&nbsp;<span class="subcontent">1966 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i12" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.4" title="Diplomáticos Diplomáticos No.4" src="images\Diplomáticos_Diplomáticos_No.4_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Royal Selection No.12" href="brand.aspx?brand=Punch#Royal_Selection_No.12">Punch Royal Selection No.12</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i13" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Punch Royal Selection No.12" title="Punch Royal Selection No.12" src="images\Punch_Royal_Selection_No.12_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Saint Luis Rey Petit Coronas" href="brand.aspx?brand=Saint_Luis_Rey#Petit_Coronas">Saint Luis Rey Petit Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i14" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Saint Luis Rey Petit Coronas" title="Saint Luis Rey Petit Coronas" src="images\Saint_Luis_Rey_Petit_Coronas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quai d&#39;Orsay Panetelas" href="brand.aspx?brand=Quai_d|-|x39;Orsay#Panetelas">Quai d&#39;Orsay Panetelas</a>&nbsp;<span class="subcontent">1974 - Discontinued 2010</span></td><td class="bordered-cell-L">Ninfas</td><td class="bordered-cell-L">33 x 178<span id="i15" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="Quai d&#39;Orsay Panetelas" title="Quai d&#39;Orsay Panetelas" src="images\Quai_d'Orsay_Panetelas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="La Gloria Cubana Medaille d&#39;Or No.3" href="brand.aspx?brand=La_Gloria_Cubana#Medaille_d|-|x39;Or_No.3">La Gloria Cubana Medaille d&#39;Or No.3</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Panetelas Largas</td><td class="bordered-cell-L">28 x 175<span id="i16" class="inch">&nbsp;(6.9")</span></td><td class="bordered-cell-L">Slim Panetela</td><td class="bordered-cell-L"><img alt="La Gloria Cubana Medaille d&#39;Or No.3" title="La Gloria Cubana Medaille d&#39;Or No.3" src="images\La_Gloria_Cubana_Medaille_dOr_No.3_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Serie Connaisseur No.2" href="brand.aspx?brand=Partag|as#Serie_Connaisseur_No.2">Partagás Serie Connaisseur No.2</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2010</span></td><td class="bordered-cell-L">Parejos</td><td class="bordered-cell-L">38 x 166<span id="i17" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Partagás Serie Connaisseur No.2" title="Partagás Serie Connaisseur No.2" src="images\Partagas_Serie_Connaisseur_No.2_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Diplomáticos Diplomáticos No.5" href="brand.aspx?brand=Diplom|aticos#Diplom|aticos_No.5">Diplomáticos Diplomáticos No.5</a>&nbsp;<span class="subcontent">1966 - Discontinued 2010</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i18" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Diplomáticos Diplomáticos No.5" title="Diplomáticos Diplomáticos No.5" src="images\Diplomáticos_Diplomáticos_No.5_cigar_small.jpg"/></td></tr></table></span>
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
