


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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2005&amp;discontinuedlow=2005&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=factoryname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE4Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPjIwMDUgRGVsZXRpb25zPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEFllg8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAwNSZkaXNjb250aW51ZWRsb3c9MjAwNSZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9ZnVsbG5hbWUiPkNpZ2FyIE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIFNhbGlkYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA1JmRpc2NvbnRpbnVlZGxvdz0yMDA1JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA1JmRpc2NvbnRpbnVlZGxvdz0yMDA1JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDUmZGlzY29udGludWVkbG93PTIwMDUmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWxlbmd0aG1tIj5tbTwvYT48L3NwYW4+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDA1JmRpc2NvbnRpbnVlZGxvdz0yMDA1JnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ2FiYcOxYXMgQmVsdmVkZXJlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DYWJhfG5hcyNCZWx2ZWRlcmVzIj5DYWJhw7FhcyBCZWx2ZWRlcmVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTg5IC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+QmVsdmVkZXJlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM5IHggMTI1PHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlNob3J0IFBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNhYmHDsWFzIEJlbHZlZGVyZXMiIHRpdGxlPSJDYWJhw7FhcyBCZWx2ZWRlcmVzIiBzcmM9ImltYWdlc1xDYWJhw7Fhc19CZWx2ZWRlcmVzX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEJlbHZlZGVyZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFtfG9uX0FsbG9uZXMjQmVsdmVkZXJlcyI+UmFtw7NuIEFsbG9uZXMgQmVsdmVkZXJlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5CZWx2ZWRlcmVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzkgeCAxMjU8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2hvcnQgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUmFtw7NuIEFsbG9uZXMgQmVsdmVkZXJlcyIgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEJlbHZlZGVyZXMiIHNyYz0iaW1hZ2VzXFJhbW9uX0FsbG9uZXNfQmVsdmVkZXJlc19zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQm9sw612YXIgQ2hpY29zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJvbHxpdmFyI0NoaWNvcyI+Qm9sw612YXIgQ2hpY29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCb2zDrXZhciBDaGljb3MiIHRpdGxlPSJCb2zDrXZhciBDaGljb3MiIHNyYz0iaW1hZ2VzXEJvbMOtdmFyX0NoaWNvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIENoaWNvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjQ2hpY29zIj5QYXJ0YWfDoXMgQ2hpY29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgQ2hpY29zIiB0aXRsZT0iUGFydGFnw6FzIENoaWNvcyIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX0NoaWNvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUG9yIExhcnJhw7FhZ2EgSnVhbml0b3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UG9yX0xhcnJhfG5hZ2EjSnVhbml0b3MiPlBvciBMYXJyYcOxYWdhIEp1YW5pdG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQb3IgTGFycmHDsWFnYSBKdWFuaXRvcyIgdGl0bGU9IlBvciBMYXJyYcOxYWdhIEp1YW5pdG9zIiBzcmM9ImltYWdlc1xQb3JfTGFycmHDsWFnYV9KdWFuaXRvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUHVuY2ggQ2lnYXJpbGxvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QdW5jaCNDaWdhcmlsbG9zIj5QdW5jaCBDaWdhcmlsbG9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9Imk1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQdW5jaCBDaWdhcmlsbG9zIiB0aXRsZT0iUHVuY2ggQ2lnYXJpbGxvcyIgc3JjPSJpbWFnZXNcUHVuY2hfQ2lnYXJpbGxvc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJRdWludGVybyBQdXJpdG9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVF1aW50ZXJvI1B1cml0b3MiPlF1aW50ZXJvIFB1cml0b3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIGMyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJRdWludGVybyBQdXJpdG9zIiB0aXRsZT0iUXVpbnRlcm8gUHVyaXRvcyIgc3JjPSJpbWFnZXNcUXVpbnRlcm9fUHVyaXRvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUmFtw7NuIEFsbG9uZXMgQml0cyBvZiBIYXZhbmEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFtfG9uX0FsbG9uZXMjQml0c19vZl9IYXZhbmEiPlJhbcOzbiBBbGxvbmVzIEJpdHMgb2YgSGF2YW5hPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjI5IHggMTA2PHNwYW4gaWQ9Imk3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNpZ2FyaWxsbzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYW3Ds24gQWxsb25lcyBCaXRzIG9mIEhhdmFuYSIgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIEJpdHMgb2YgSGF2YW5hIiBzcmM9ImltYWdlc1xSYW1vbl9BbGxvbmVzX0JpdHNfb2ZfSGF2YW5hX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJCZWxpbmRhIENvcm9uYXMgKDEpIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJlbGluZGEjQ29yb25hc18oMSkiPkJlbGluZGEgQ29yb25hcyAoMSk8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5ODkgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DcmVtYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDE0MDxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQmVsaW5kYSBDb3JvbmFzICgxKSIgdGl0bGU9IkJlbGluZGEgQ29yb25hcyAoMSkiIHNyYz0iaW1hZ2VzXEJlbGluZGFfQ29yb25hc18oMSlfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkJlbGluZGEgRGVtaSBUYXNzZSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1CZWxpbmRhI0RlbWlfVGFzc2UiPkJlbGluZGEgRGVtaSBUYXNzZTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk4OSAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRlbWkgVGFzc2U8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zMiB4IDEwMDxzcGFuIGlkPSJpOSIgY2xhc3M9ImluY2giPiZuYnNwOygzLjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJCZWxpbmRhIERlbWkgVGFzc2UiIHRpdGxlPSJCZWxpbmRhIERlbWkgVGFzc2UiIHNyYz0iaW1hZ2VzXEJlbGluZGFfRGVtaV9UYXNzZV9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ2FiYcOxYXMgUHJlY2lvc2FzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNhYmF8bmFzI1ByZWNpb3NhcyI+Q2FiYcOxYXMgUHJlY2lvc2FzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTg5IC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RGVtaSBUYXNzZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjMyIHggMTAwPHNwYW4gaWQ9ImkxMCIgY2xhc3M9ImluY2giPiZuYnNwOygzLjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDYWJhw7FhcyBQcmVjaW9zYXMiIHRpdGxlPSJDYWJhw7FhcyBQcmVjaW9zYXMiIHNyYz0iaW1hZ2VzXENhYmHDsWFzX1ByZWNpb3Nhc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iTG9zIFN0YXRvcyBkZSBMdXhlIEJyZXZhcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Mb3NfU3RhdG9zX2RlX0x1eGUjQnJldmFzIj5Mb3MgU3RhdG9zIGRlIEx1eGUgQnJldmFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCBjMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5OYWNpb25hbGVzIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDE0MDxzcGFuIGlkPSJpMTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkxvcyBTdGF0b3MgZGUgTHV4ZSBCcmV2YXMiIHRpdGxlPSJMb3MgU3RhdG9zIGRlIEx1eGUgQnJldmFzIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfQnJldmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJMb3MgU3RhdG9zIGRlIEx1eGUgQ3JlbWFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUxvc19TdGF0b3NfZGVfTHV4ZSNDcmVtYXMiPkxvcyBTdGF0b3MgZGUgTHV4ZSBDcmVtYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIGMyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk5hY2lvbmFsZXMgTWFubzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTQwPHNwYW4gaWQ9ImkxMiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTG9zIFN0YXRvcyBkZSBMdXhlIENyZW1hcyIgdGl0bGU9IkxvcyBTdGF0b3MgZGUgTHV4ZSBDcmVtYXMiIHNyYz0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9DcmVtYXNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQmVsaW5kYSBQZXRpdCBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUJlbGluZGEjUGV0aXRfQ29yb25hcyI+QmVsaW5kYSBQZXRpdCBDb3JvbmFzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTg5IC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTI5PHNwYW4gaWQ9ImkxMyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQmVsaW5kYSBQZXRpdCBDb3JvbmFzIiB0aXRsZT0iQmVsaW5kYSBQZXRpdCBDb3JvbmFzIiBzcmM9ImltYWdlc1xCZWxpbmRhX1BldGl0X0Nvcm9uYXNfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIE1pbGxlIEZsZXVycyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1SYW18b25fQWxsb25lcyNNaWxsZV9GbGV1cnMiPlJhbcOzbiBBbGxvbmVzIE1pbGxlIEZsZXVyczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwNTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTE0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSYW3Ds24gQWxsb25lcyBNaWxsZSBGbGV1cnMiIHRpdGxlPSJSYW3Ds24gQWxsb25lcyBNaWxsZSBGbGV1cnMiIHNyYz0iaW1hZ2VzXFJhbcOzbl9BbGxvbmVzX01pbGxlX0ZsZXVyc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iR2lzcGVydCBIYWJhbmVyYXMgTm8uMiIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1HaXNwZXJ0I0hhYmFuZXJhc19Oby4yIj5HaXNwZXJ0IEhhYmFuZXJhcyBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5jMTk4MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEyMzxzcGFuIGlkPSJpMTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC44Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikdpc3BlcnQgSGFiYW5lcmFzIE5vLjIiIHRpdGxlPSJHaXNwZXJ0IEhhYmFuZXJhcyBOby4yIiBzcmM9ImltYWdlc1xHaXNwZXJ0X0hhYmFuZXJvc19Oby4yX2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkxvcyBTdGF0b3MgZGUgTHV4ZSBEZWxpcmlvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Mb3NfU3RhdG9zX2RlX0x1eGUjRGVsaXJpb3MiPkxvcyBTdGF0b3MgZGUgTHV4ZSBEZWxpcmlvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgYzIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U3RhbmRhcmQgTWFubzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTIzPHNwYW4gaWQ9ImkxNiIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTG9zIFN0YXRvcyBkZSBMdXhlIERlbGlyaW9zIiB0aXRsZT0iTG9zIFN0YXRvcyBkZSBMdXhlIERlbGlyaW9zIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfRGVsaXJpb3NfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVHJveWEgQ29yb25hcyBDbHViICgxKSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ucm95YSNDb3JvbmFzX0NsdWJfKDEpIj5Ucm95YSBDb3JvbmFzIENsdWIgKDEpPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDA1PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEyMzxzcGFuIGlkPSJpMTciIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC44Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlRyb3lhIENvcm9uYXMgQ2x1YiAoMSkiIHRpdGxlPSJUcm95YSBDb3JvbmFzIENsdWIgKDEpIiBzcmM9ImltYWdlc1xUcm95YV9Db3JvbmFzX0NsdWJfKDEpX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJUcm95YSBVbml2ZXJzYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ucm95YSNVbml2ZXJzYWxlcyI+VHJveWEgVW5pdmVyc2FsZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+VW5pdmVyc2FsZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDEzNDxzcGFuIGlkPSJpMTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U2hvcnQgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVHJveWEgVW5pdmVyc2FsZXMiIHRpdGxlPSJUcm95YSBVbml2ZXJzYWxlcyIgc3JjPSJpbWFnZXNcVHJveWFfVW5pdmVyc2FsZXNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGTA48om0foz7PZSwez6AhDV7ORO9/FhiE1w70dC+jD4Ig==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2005%26discontinuedlow%3d2005%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dfactoryname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2005 Deletions</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2005&discontinuedlow=2005&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Belvederes" href="brand.aspx?brand=Caba|nas#Belvederes">Cabañas Belvederes</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i0" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Cabañas Belvederes" title="Cabañas Belvederes" src="images\Cabañas_Belvederes_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Belvederes" href="brand.aspx?brand=Ram|on_Allones#Belvederes">Ramón Allones Belvederes</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Belvederes</td><td class="bordered-cell-L">39 x 125<span id="i1" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Ramón Allones Belvederes" title="Ramón Allones Belvederes" src="images\Ramon_Allones_Belvederes_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Bolívar Chicos" href="brand.aspx?brand=Bol|ivar#Chicos">Bolívar Chicos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i2" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Bolívar Chicos" title="Bolívar Chicos" src="images\Bolívar_Chicos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Chicos" href="brand.aspx?brand=Partag|as#Chicos">Partagás Chicos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i3" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Partagás Chicos" title="Partagás Chicos" src="images\Partagás_Chicos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Juanitos" href="brand.aspx?brand=Por_Larra|naga#Juanitos">Por Larrañaga Juanitos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i4" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Por Larrañaga Juanitos" title="Por Larrañaga Juanitos" src="images\Por_Larrañaga_Juanitos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Punch Cigarillos" href="brand.aspx?brand=Punch#Cigarillos">Punch Cigarillos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i5" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Punch Cigarillos" title="Punch Cigarillos" src="images\Punch_Cigarillos_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Quintero Puritos" href="brand.aspx?brand=Quintero#Puritos">Quintero Puritos</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i6" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Quintero Puritos" title="Quintero Puritos" src="images\Quintero_Puritos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Bits of Havana" href="brand.aspx?brand=Ram|on_Allones#Bits_of_Havana">Ramón Allones Bits of Havana</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Chicos</td><td class="bordered-cell-L">29 x 106<span id="i7" class="inch">&nbsp;(4.2")</span></td><td class="bordered-cell-L">Cigarillo</td><td class="bordered-cell-L"><img alt="Ramón Allones Bits of Havana" title="Ramón Allones Bits of Havana" src="images\Ramon_Allones_Bits_of_Havana_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Coronas (1)" href="brand.aspx?brand=Belinda#Coronas_(1)">Belinda Coronas (1)</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Cremas</td><td class="bordered-cell-L">40 x 140<span id="i8" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Belinda Coronas (1)" title="Belinda Coronas (1)" src="images\Belinda_Coronas_(1)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Demi Tasse" href="brand.aspx?brand=Belinda#Demi_Tasse">Belinda Demi Tasse</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Demi Tasse</td><td class="bordered-cell-L">32 x 100<span id="i9" class="inch">&nbsp;(3.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Belinda Demi Tasse" title="Belinda Demi Tasse" src="images\Belinda_Demi_Tasse_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cabañas Preciosas" href="brand.aspx?brand=Caba|nas#Preciosas">Cabañas Preciosas</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Demi Tasse</td><td class="bordered-cell-L">32 x 100<span id="i10" class="inch">&nbsp;(3.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Cabañas Preciosas" title="Cabañas Preciosas" src="images\Cabañas_Preciosas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Los Statos de Luxe Brevas" href="brand.aspx?brand=Los_Statos_de_Luxe#Brevas">Los Statos de Luxe Brevas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Nacionales Mano</td><td class="bordered-cell-L">40 x 140<span id="i11" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Los Statos de Luxe Brevas" title="Los Statos de Luxe Brevas" src="images\Los_Statos_de_Luxe_Brevas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Los Statos de Luxe Cremas" href="brand.aspx?brand=Los_Statos_de_Luxe#Cremas">Los Statos de Luxe Cremas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Nacionales Mano</td><td class="bordered-cell-L">40 x 140<span id="i12" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Los Statos de Luxe Cremas" title="Los Statos de Luxe Cremas" src="images\Los_Statos_de_Luxe_Cremas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Belinda Petit Coronas" href="brand.aspx?brand=Belinda#Petit_Coronas">Belinda Petit Coronas</a>&nbsp;<span class="subcontent">1989 - Discontinued 2005</span></td><td class="bordered-cell-L">Petit Coronas</td><td class="bordered-cell-L">42 x 129<span id="i13" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Belinda Petit Coronas" title="Belinda Petit Coronas" src="images\Belinda_Petit_Coronas_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Mille Fleurs" href="brand.aspx?brand=Ram|on_Allones#Mille_Fleurs">Ramón Allones Mille Fleurs</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Petit Coronas</td><td class="bordered-cell-L">42 x 129<span id="i14" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Ramón Allones Mille Fleurs" title="Ramón Allones Mille Fleurs" src="images\Ramón_Allones_Mille_Fleurs_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Gispert Habaneras No.2" href="brand.aspx?brand=Gispert#Habaneras_No.2">Gispert Habaneras No.2</a>&nbsp;<span class="subcontent">c1980 - Discontinued 2005</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i15" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Gispert Habaneras No.2" title="Gispert Habaneras No.2" src="images\Gispert_Habaneros_No.2_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Los Statos de Luxe Delirios" href="brand.aspx?brand=Los_Statos_de_Luxe#Delirios">Los Statos de Luxe Delirios</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued c2005</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i16" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Los Statos de Luxe Delirios" title="Los Statos de Luxe Delirios" src="images\Los_Statos_de_Luxe_Delirios_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Troya Coronas Club (1)" href="brand.aspx?brand=Troya#Coronas_Club_(1)">Troya Coronas Club (1)</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Standard Mano</td><td class="bordered-cell-L">40 x 123<span id="i17" class="inch">&nbsp;(4.8")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Troya Coronas Club (1)" title="Troya Coronas Club (1)" src="images\Troya_Coronas_Club_(1)_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Troya Universales" href="brand.aspx?brand=Troya#Universales">Troya Universales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2005</span></td><td class="bordered-cell-L">Universales</td><td class="bordered-cell-L">38 x 134<span id="i18" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="Troya Universales" title="Troya Universales" src="images\Troya_Universales_cigar_small_0.jpg"/></td></tr></table></span>
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
