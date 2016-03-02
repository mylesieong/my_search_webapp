


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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=Multi_Brand_Release%3b&amp;sortorder=ring" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDE0Ow0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBTU8c3BhbiBjbGFzcz0iaGVhZDEiPlNlYXJjaCBSZXN1bHRzPC9zcGFuPjxiciAvPjxiciAvPmRkAgIPDxYCHwEFs0w8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIj48dHI+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPU11bHRpX0JyYW5kX1JlbGVhc2U7JnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1NdWx0aV9CcmFuZF9SZWxlYXNlOyZzb3J0b3JkZXI9ZmFjdG9yeW5hbWUiPkZhY3RvcnkgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgR2FsZXJhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPlNpemU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPU11bHRpX0JyYW5kX1JlbGVhc2U7JnNvcnRvcmRlcj1yaW5nIj5SaW5nPC9hPiB4IDxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1NdWx0aV9CcmFuZF9SZWxlYXNlOyZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1NdWx0aV9CcmFuZF9SZWxlYXNlOyZzb3J0b3JkZXI9Y29tbW9ubmFtZSI+U2hhcGU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Q29tbW9uIE5hbWU8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+SW1hZ2U8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+UmVsYXRpdmUgU2NhbGU8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkN1YWJhIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DdWFiYSMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5DdWFiYSBHZW5lcm9zb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R2VuZXJvc29zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMzI8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVyZmVjdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ3VhYmEgR2VuZXJvc29zIiB0aXRsZT0iQ3VhYmEgR2VuZXJvc29zIiBzcmM9ImltYWdlc1xDdWFiYV9HZW5lcm9zb3NfY2lnYXJfc21hbGxfMi5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+UGFydGFnw6FzIFJveWFscyBkZSBQYXJ0YWfDoXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDMgLSA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvcjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5GZWxpcGUgMjQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NSB4IDExNTxzcGFuIGlkPSJpMSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmEgRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIFJveWFscyBkZSBQYXJ0YWfDoXMiIHRpdGxlPSJQYXJ0YWfDoXMgUm95YWxzIGRlIFBhcnRhZ8OhcyIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1JveWFsc19kZV9QYXJ0YWdhc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Ib3lvX2RlX01vbnRlcnJleSM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+SG95byBkZSBNb250ZXJyZXkgRXBpY3VyZSBOby4xPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDAzIC0gNTEwIEFuaXZlcnNhcmlvIEh1bWlkb3I8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hcyBHb3JkYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NiB4IDE0MzxzcGFuIGlkPSJpMiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSG95byBkZSBNb250ZXJyZXkgRXBpY3VyZSBOby4xIiB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgRXBpY3VyZSBOby4xIiBzcmM9ImltYWdlc1xIb3lvX2RlX01vbnRlcnJleV9FcGljdXJlX05vLjFfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ29oaWJhIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+Q29oaWJhIEVzcGzDqW5kaWRvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwMyAtIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkp1bGlldGEgTm8uMjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ3IHggMTc4PHNwYW4gaWQ9ImkzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNodXJjaGlsbDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgRXNwbMOpbmRpZG9zIiB0aXRsZT0iQ29oaWJhIEVzcGzDqW5kaWRvcyIgc3JjPSJpbWFnZXNcQ29oaWJhX0VzcGzDqW5kaWRvc19jaWdhcl9zbWFsbF81LmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgNTEwIEFuaXZlcnNhcmlvIEh1bWlkb3IiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Um9tZW9feV9KdWxpZXRhIzU3XzUxMF9Bbml2ZXJzYXJpb19IdW1pZG9yIj5Sb21lbyB5IEp1bGlldGEgSGVybW9zb3MgTm8uMzwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwMyAtIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkhlcm1vc29zIE5vLjM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40OCB4IDE0MDxzcGFuIGlkPSJpNCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIEhlcm1vc29zIE5vLjMiIHRpdGxlPSJSb21lbyB5IEp1bGlldGEgSGVybW9zb3MgTm8uMyIgc3JjPSJpbWFnZXNcUm9tZW9feV9KdWxpZXRhX0hlcm1vc29zX05vLjNfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iU2FuIENyaXN0w7NiYWwgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVNhbl9DcmlzdHxvYmFsIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPlNhbiBDcmlzdMOzYmFsIE1lcmNhZGVyZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+SGVybW9zb3MgTm8uMTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ4IHggMTY3PHNwYW4gaWQ9Imk1IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdyYW5kIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJTYW4gQ3Jpc3TDs2JhbCBNZXJjYWRlcmVzIiB0aXRsZT0iU2FuIENyaXN0w7NiYWwgTWVyY2FkZXJlcyIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX01lcmNhZGVyZXNfY2lnYXJfc21hbGxfNS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Sb21lb195X0p1bGlldGEjMjA2X1hfRWRpY2l8b25fRmVzdGl2YWxfZGVsX0hhYmFubyI+Um9tZW8geSBKdWxpZXRhIFNob3J0IENodXJjaGlsbDwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOSAtIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTI0PHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUm9tZW8geSBKdWxpZXRhIFNob3J0IENodXJjaGlsbCIgdGl0bGU9IlJvbWVvIHkgSnVsaWV0YSBTaG9ydCBDaHVyY2hpbGwiIHNyYz0iaW1hZ2VzXFJvbWVvX3lfSnVsaWV0YV9TaG9ydF9DaHVyY2hpbGxfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSG95byBkZSBNb250ZXJyZXkgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUhveW9fZGVfTW9udGVycmV5IzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPkhveW8gZGUgTW9udGVycmV5IEVwaWN1cmUgRXNwZWNpYWw8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDkgLSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm88L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+R29yZGl0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MCB4IDE0MTxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkhveW8gZGUgTW9udGVycmV5IEVwaWN1cmUgRXNwZWNpYWwiIHRpdGxlPSJIb3lvIGRlIE1vbnRlcnJleSBFcGljdXJlIEVzcGVjaWFsIiBzcmM9ImltYWdlc1xIb3lvX2RlX01vbnRlcnJleV9FcGljdXJlX0VzcGVjaWFsX2NpZ2FyX3NtYWxsXzMuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlRyaW5pZGFkIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1UcmluaWRhZCMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5UcmluaWRhZCBSb2J1c3RvcyBFeHRyYTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOSAtIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Eb2JsZXMgKFQpPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxNTU8c3BhbiBpZD0iaTgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJUcmluaWRhZCBSb2J1c3RvcyBFeHRyYSIgdGl0bGU9IlRyaW5pZGFkIFJvYnVzdG9zIEV4dHJhIiBzcmM9ImltYWdlc1xUcmluaWRhZF9Sb2J1c3Rvc19FeHRyYV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJILiBVcG1hbm4gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUguX1VwbWFubiMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5ILiBVcG1hbm4gTWFnbnVtIDUwPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBSb2J1c3RvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTYwPHNwYW4gaWQ9Imk5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBSb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkguIFVwbWFubiBNYWdudW0gNTAiIHRpdGxlPSJILiBVcG1hbm4gTWFnbnVtIDUwIiBzcmM9ImltYWdlc1xILl9VcG1hbm5fTWFnbnVtXzUwX2NpZ2FyX3NtYWxsXzEuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Nb250ZWNyaXN0byMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5Nb250ZWNyaXN0byBFZG11bmRvPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkVkbXVuZG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDEzNTxzcGFuIGlkPSJpMTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJNb250ZWNyaXN0byBFZG11bmRvIiB0aXRsZT0iTW9udGVjcmlzdG8gRWRtdW5kbyIgc3JjPSJpbWFnZXNcTW9udGVjcmlzdG9fRWRtdW5kb19jaWdhcl9zbWFsbF81LmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5Db2hpYmEgR2VuaW9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdlbmlvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTQwPHNwYW4gaWQ9ImkxMSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBHZW5pb3MiIHRpdGxlPSJDb2hpYmEgR2VuaW9zIiBzcmM9ImltYWdlc1xDb2hpYmFfR2VuaW9zX2NpZ2FyX3NtYWxsXzIuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBYIEVkaWNpw7NuIEZlc3RpdmFsIGRlbCBIYWJhbm8iIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhIzIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iPkNvaGliYSBTaWdsbyBWSTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwOSAtIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYcOxb25hem88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDE1MDxzcGFuIGlkPSJpMTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0byBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgU2lnbG8gVkkiIHRpdGxlPSJDb2hpYmEgU2lnbG8gVkkiIHNyYz0iaW1hZ2VzXENvaGliYV9TaWdsb19WSV9jaWdhcl9zbWFsbF80LmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJNb250ZWNyaXN0byA1MTAgQW5pdmVyc2FyaW8gSHVtaWRvciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Nb250ZWNyaXN0byM1N181MTBfQW5pdmVyc2FyaW9fSHVtaWRvciI+TW9udGVjcmlzdG8gTW9udGVjcmlzdG8gTm8uMjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MjAwMyAtIDUxMCBBbml2ZXJzYXJpbyBIdW1pZG9yPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBpcsOhbWlkZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDE1NjxzcGFuIGlkPSJpMTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UHlyYW1pZDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJNb250ZWNyaXN0byBNb250ZWNyaXN0byBOby4yIiB0aXRsZT0iTW9udGVjcmlzdG8gTW9udGVjcmlzdG8gTm8uMiIgc3JjPSJpbWFnZXNcTW9udGVjcmlzdG9fTW9udGVjcmlzdG9fTm8uMl9jaWdhcl9zbWFsbF8yLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJQYXJ0YWfDoXMgWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBhcnRhZ3xhcyMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj5QYXJ0YWfDoXMgU2VyaWUgUCBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBpcsOhbWlkZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDE1NjxzcGFuIGlkPSJpMTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UHlyYW1pZDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgU2VyaWUgUCBOby4yIiB0aXRsZT0iUGFydGFnw6FzIFNlcmllIFAgTm8uMiIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX1NlcmllX1BfTm8uMl9jaWdhcl9zbWFsbF8zLmpwZyIvPjwvdGQ+PC90cj48L3RhYmxlPmRkZJ1WqR8HBah5eBq+n8ARkXlPXnQTpo14W6l9ltD5FczH" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dMulti_Brand_Release%3b%26sortorder%3dring ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Multi_Brand_Release;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba X Edición Festival del Habano" href="brand.aspx?brand=Cuaba#206_X_Edici|on_Festival_del_Habano">Cuaba Generosos</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Generosos</td><td class="bordered-cell-L">42 x 132<span id="i0" class="inch">&nbsp;(5.2")</span></td><td class="bordered-cell-L">Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Generosos" title="Cuaba Generosos" src="images\Cuaba_Generosos_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás 510 Aniversario Humidor" href="brand.aspx?brand=Partag|as#57_510_Aniversario_Humidor">Partagás Royals de Partagás</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Felipe 24</td><td class="bordered-cell-L">45 x 115<span id="i1" class="inch">&nbsp;(4.5")</span></td><td class="bordered-cell-L">Corona Extra</td><td class="bordered-cell-L"><img alt="Partagás Royals de Partagás" title="Partagás Royals de Partagás" src="images\Partagás_Royals_de_Partagas_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey 510 Aniversario Humidor" href="brand.aspx?brand=Hoyo_de_Monterrey#57_510_Aniversario_Humidor">Hoyo de Monterrey Epicure No.1</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i2" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Epicure No.1" title="Hoyo de Monterrey Epicure No.1" src="images\Hoyo_de_Monterrey_Epicure_No.1_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba 510 Aniversario Humidor" href="brand.aspx?brand=Cohiba#57_510_Aniversario_Humidor">Cohiba Espléndidos</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Julieta No.2</td><td class="bordered-cell-L">47 x 178<span id="i3" class="inch">&nbsp;(7.0")</span></td><td class="bordered-cell-L">Churchill</td><td class="bordered-cell-L"><img alt="Cohiba Espléndidos" title="Cohiba Espléndidos" src="images\Cohiba_Espléndidos_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta 510 Aniversario Humidor" href="brand.aspx?brand=Romeo_y_Julieta#57_510_Aniversario_Humidor">Romeo y Julieta Hermosos No.3</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Hermosos No.3</td><td class="bordered-cell-L">48 x 140<span id="i4" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Hermosos No.3" title="Romeo y Julieta Hermosos No.3" src="images\Romeo_y_Julieta_Hermosos_No.3_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="San Cristóbal X Edición Festival del Habano" href="brand.aspx?brand=San_Crist|obal#206_X_Edici|on_Festival_del_Habano">San Cristóbal Mercaderes</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Hermosos No.1</td><td class="bordered-cell-L">48 x 167<span id="i5" class="inch">&nbsp;(6.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="San Cristóbal Mercaderes" title="San Cristóbal Mercaderes" src="images\San_Cristóbal__Mercaderes_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta X Edición Festival del Habano" href="brand.aspx?brand=Romeo_y_Julieta#206_X_Edici|on_Festival_del_Habano">Romeo y Julieta Short Churchill</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i6" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Short Churchill" title="Romeo y Julieta Short Churchill" src="images\Romeo_y_Julieta_Short_Churchill_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Hoyo de Monterrey X Edición Festival del Habano" href="brand.aspx?brand=Hoyo_de_Monterrey#206_X_Edici|on_Festival_del_Habano">Hoyo de Monterrey Epicure Especial</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Gorditos</td><td class="bordered-cell-L">50 x 141<span id="i7" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Hoyo de Monterrey Epicure Especial" title="Hoyo de Monterrey Epicure Especial" src="images\Hoyo_de_Monterrey_Epicure_Especial_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad X Edición Festival del Habano" href="brand.aspx?brand=Trinidad#206_X_Edici|on_Festival_del_Habano">Trinidad Robustos Extra</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Dobles (T)</td><td class="bordered-cell-L">50 x 155<span id="i8" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Trinidad Robustos Extra" title="Trinidad Robustos Extra" src="images\Trinidad_Robustos_Extra_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="H. Upmann X Edición Festival del Habano" href="brand.aspx?brand=H._Upmann#206_X_Edici|on_Festival_del_Habano">H. Upmann Magnum 50</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Double Robustos</td><td class="bordered-cell-L">50 x 160<span id="i9" class="inch">&nbsp;(6.3")</span></td><td class="bordered-cell-L">Double Robusto</td><td class="bordered-cell-L"><img alt="H. Upmann Magnum 50" title="H. Upmann Magnum 50" src="images\H._Upmann_Magnum_50_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo X Edición Festival del Habano" href="brand.aspx?brand=Montecristo#206_X_Edici|on_Festival_del_Habano">Montecristo Edmundo</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Edmundo</td><td class="bordered-cell-L">52 x 135<span id="i10" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Montecristo Edmundo" title="Montecristo Edmundo" src="images\Montecristo_Edmundo_cigar_small_5.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba X Edición Festival del Habano" href="brand.aspx?brand=Cohiba#206_X_Edici|on_Festival_del_Habano">Cohiba Genios</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Genios</td><td class="bordered-cell-L">52 x 140<span id="i11" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Cohiba Genios" title="Cohiba Genios" src="images\Cohiba_Genios_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba X Edición Festival del Habano" href="brand.aspx?brand=Cohiba#206_X_Edici|on_Festival_del_Habano">Cohiba Siglo VI</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Cañonazo</td><td class="bordered-cell-L">52 x 150<span id="i12" class="inch">&nbsp;(5.9")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Cohiba Siglo VI" title="Cohiba Siglo VI" src="images\Cohiba_Siglo_VI_cigar_small_4.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Montecristo 510 Aniversario Humidor" href="brand.aspx?brand=Montecristo#57_510_Aniversario_Humidor">Montecristo Montecristo No.2</a>&nbsp;<span class="subcontent">2003 - 510 Aniversario Humidor</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i13" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo No.2" title="Montecristo Montecristo No.2" src="images\Montecristo_Montecristo_No.2_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás X Edición Festival del Habano" href="brand.aspx?brand=Partag|as#206_X_Edici|on_Festival_del_Habano">Partagás Serie P No.2</a>&nbsp;<span class="subcontent">2009 - X Edición Festival del Habano</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i14" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Partagás Serie P No.2" title="Partagás Serie P No.2" src="images\Partagás_Serie_P_No.2_cigar_small_3.jpg"/></td></tr></table></span>
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
