


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website
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
var inchLimit = 8;
</script></span>
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="js/jquery.json-2.4.min.js"></script>
    <script type="text/javascript" src="js/lightbox-2.6.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/jquery.MetaData.js"></script>
    <script type="text/javascript" src="js/jquery.rating.pack.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>

    <link href="js/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="js/themes/base/jquery.rating.css" rel="stylesheet" />
    <script type="text/javascript" src="js/smokeone.js"></script>
    <script type="text/javascript" src="js/utilities.js"></script>
    <script type="text/javascript" src="js/box.js"></script>

    <link href="css/lightbox.css" rel="stylesheet" />
    <script type="text/javascript">
        
        $(document).ready(
    function () {

        $("#DetailedRating").dialog({
            width: 600,
            height: 400,
            autoOpen: false,
            modal: true,
            title: 'Detailed Ratings',
            resizable: false,
            closeOnEscape: true,
            appendTo: "form"
        });

    });

        function postSmokeOne(data){
            $("#SmokeOneNotes").val('')
            $("#BoxStockContent").html(data);
        };




        function showDetailedRating(cigarID) {

            $.ajax({
                type: "POST",
                url: "brand.aspx/DetailedRating",
                data: "{cigarID:'" + cigarID + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "html",
                success: function(data) {

                    var obj = $.parseJSON(data);  

                    var strength = obj[0]['strength'];            
                    var elegance = obj[0]['elegance'];
                    var complexity = obj[0]['complexity'];
                    var balance = obj[0]['balance'];
                    var aftertaste = obj[0]['aftertaste'];
                    var overall = obj[0]['overall'];
                    var tastingnotes = obj[0]['tastingnotes'];
                    var noofratings = obj[0]['numberofreviews'];
                  
                    $('input[name="pop-elegance"]').rating('enable'); 
                    $('input[name="pop-elegance"]').rating('select',elegance); 
                    $('input[name="pop-elegance"]').rating('disable'); 
                      
                    //$('input[name="pop-strength"]').prop('title','Average strength of ' + strength + ' from ' + noofratings + ' reviews.');                
                    $('input[name="pop-strength"]').rating('enable'); 
                    $('input[name="pop-strength"]').rating('select',strength); 
                    $('input[name="pop-strength"]').rating('disable'); 

                    $('input[name="pop-complexity"]').rating('enable'); 
                    $('input[name="pop-complexity"]').rating('select',complexity); 
                    $('input[name="pop-complexity"]').rating('disable'); 
                    //$('input[name="pop-complexity"]').prop('title','Average complexity of ' + complexity + ' from ' + noofratings + ' reviews.');

                    $('input[name="pop-balance"]').rating('enable'); 
                    $('input[name="pop-balance"]').rating('select',balance); 
                    $('input[name="pop-balance"]').rating('disable');
                    //$('input[name="pop-balance"]').prop('title','Average balance of ' + balance + ' from ' + noofratings + ' reviews.');

                    $('input[name="pop-aftertaste"]').rating('enable'); 
                    $('input[name="pop-aftertaste"]').rating('select',aftertaste); 
                    $('input[name="pop-aftertaste"]').rating('disable');
                    //$('input[name="pop-aftertaste"]').prop('title','Average aftertaste of ' + aftertaste + ' from ' + noofratings + ' reviews.');

                    $('input[name="pop-overall"]').rating('enable'); 
                    $('input[name="pop-overall"]').rating('select',overall); 
                    $('input[name="pop-overall"]').rating('disable');
                    //$('input[name="pop-overall"]').prop('title','Average overall of ' + overall + ' from ' + noofratings + ' reviews.');

                    $('#pop-tastingnotes').html(tastingnotes);

                    showPopup('DetailedRating', true);
                },
                error: function(xhr, status, error) {

                    var err = eval("(" + xhr.responseText + ")");
                    alert(err.Message);
                }
            });
        };





        
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

    </script>
</head>
<body>
    <form name="aspnetForm" method="post" action="brand.aspx?brand=27" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gODsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQW1Kjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPlF1YWkgZCYjMzk7T3JzYXk8L3NwYW4+PGJyIC8+PGJyIC8+PGEgZGF0YS1saWdodGJveD0iYnJhbmQiIGhyZWY9ImltYWdlc1xRdWFpX2QmIzM5O09yc2F5X2xvZ29fZnVsbC5qcGciPjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcUXVhaV9kJiMzOTtPcnNheV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iUXVhaSBkJiMzOTtPcnNheSIgdGl0bGU9IlF1YWkgZCYjMzk7T3JzYXkiPjwvYT48YnIgLz48YnIgLz48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMSIgbmFtZT0iRDEiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+Q3VycmVudCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0Nvcm9uYXNfQ2xhcm8iPkNvcm9uYXMgQ2xhcm88L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjSW1wZXJpYWxlcyI+SW1wZXJpYWxlczwvb3B0aW9uPgk8L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMyIgbmFtZT0iRDMiIGNsYXNzPSJkcm9wZG93biI+CTxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb3JvbmFzX0NsYXJvX0NsYXJvIj5Db3JvbmFzIENsYXJvIENsYXJvPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0dyYW5fQ29yb25hIj5HcmFuIENvcm9uYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQYW5ldGVsYXMiPlBhbmV0ZWxhczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDIiIG5hbWU9IkQyIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPlNwZWNpYWwgUmVsZWFzZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzMyMV9FZGljaXxvbl9SZWdpb25hbF9Bc2lhX1BhY2lmaWNvIj4yMDExIC0gRWRpY2nDs24gUmVnaW9uYWwgQXNpYSBQYWNpZmljbzwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMzMzhfRWRpY2l8b25fUmVnaW9uYWxfRnJhbmNpYSI+MjAxMSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEZyYW5jaWE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMzgxX0VkaWNpfG9uX1JlZ2lvbmFsX0ZyYW5jaWEiPjIwMTMgLSBFZGljacOzbiBSZWdpb25hbCBGcmFuY2lhPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzE0MjFfRWRpY2l8b25fUmVnaW9uYWxfRnJhbmNpYSI+MjAxNSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEZyYW5jaWE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PGJyIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iY2VsbC1DIj48dGQgY2xhc3M9ImNlbGwtQyI+PHNwYW4gY2xhc3M9aGVhZDM+QnJhbmQgTm90ZXM8L3NwYW4+PGJyIC8+PGJyIC8+PGI+U3RhdHVzPC9iPjxCUiAvPlF1YWkgZCYjMzk7T3JzYXkgaXMgYSBDdXJyZW50IHBvc3QtcmV2b2x1dGlvbiBicmFuZCwgZXN0YWJsaXNoZWQgaW4gMTk3MywgYW5kIGNvbW1lcmNpYWxseSBhdmFpbGFibGUgZnJvbSAxOTc0LjxCUiAvPjxCUiAvPjxiPkdlbmVyYWxseTwvYj48YnIgLz5JdCBpcyBjbGFzc2lmaWVkIGJ5IEhhYmFub3MgU0EgYXMgYSBMb2NhbCBicmFuZCwgYW5kIGhhcyBhIG1pbm9yIG1hcmtldCBzaGFyZSwgbWFpbmx5IHdpdGhpbiBGcmFuY2UuIDxCUiAvPlRoZSByYW5nZSBjb21wcmlzZXMgbGlnaHQgc3RyZW5ndGggY2lnYXJzIHVzaW5nIHRvYmFjY28gZnJvbSB0aGUgcHJlbWl1bSA8aT5WdWVsdGEgQWJham88L2k+IHJlZ2lvbi48QlIgLz48QlIgLz48Yj5SZWxlYXNlczwvYj48QlIgLz5UaGUgZmlyc3Qgc3BlY2lhbCByZWxlYXNlcyB3ZXJlIGluIDIwMTEuPGJyIC8+PGJyIC8+PGI+SGlzdG9yeTwvYj48QlIgLz5Qcm9kdWN0aW9uIHdhcyBzdGVwcGVkIHVwIGluIDIwMDUgaW4gYW4gZWZmb3J0IHRvIHJlLWVzdGFibGlzaCB0aGUgYnJhbmQuPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD0yNyI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcUXVhaV9kJ09yc2F5X2JhbmRfNjUyMzE4OTNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9iYW5kXzY1MjMxODkzc21hbGwuanBnIiBoZWlnaHQ9Ijk1IiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQTwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5Ob3QgZW1ib3NzZWQ8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+MTk3NCBvbiAtLSBDdXJyZW50PC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTI2cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xRdWFpX2QnT3JzYXlfcGFja2FnaW5nXzMwNGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIFF1YWkgZCYjMzk7T3JzYXkgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBRdWFpIGQmIzM5O09yc2F5IHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcUXVhaV9kJ09yc2F5X3BhY2thZ2luZ18zMDRzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTI2IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkNvcm9uYXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+U0JOMjUgLSBjMjAwMC8xMDwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMDVweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9wYWNrYWdpbmdfMTAzNWZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIFF1YWkgZCYjMzk7T3JzYXkgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBRdWFpIGQmIzM5O09yc2F5IHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcUXVhaV9kJ09yc2F5X3BhY2thZ2luZ18xMDM1c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEwNSIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5Db3JvbmFzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlNCTjI1ICAtIG1pZCAxOTcwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMThweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9wYWNrYWdpbmdfMzAxZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgUXVhaSBkJiMzOTtPcnNheSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIFF1YWkgZCYjMzk7T3JzYXkgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfcGFja2FnaW5nXzMwMXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMTgiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+R3JhbmQgQ29yb25hczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5TQk4yNSAtIGMyMDAwLzEwPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEwMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcUXVhaV9kJ09yc2F5X3BhY2thZ2luZ18zMDNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBRdWFpIGQmIzM5O09yc2F5IHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgUXVhaSBkJiMzOTtPcnNheSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9wYWNrYWdpbmdfMzAzc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEwMCIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5JbXBlcmlhbGVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlNCTjI1IC0gYzIwMDAvMTA8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPjwvdGFibGU+PGJyIC8+PC90ZD48L3RyPg0KZGQCAQ8PFgIfAQW3ggE8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5DdXJyZW50IFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ29yb25hc19DbGFybyI+UXVhaSBkJiMzOTtPcnNheTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db3JvbmFzIENsYXJvPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Db3JvbmFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDIgeCAxNDI8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTAiPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyNnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTgzOCIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9Db3JvbmFzX0NsYXJvX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcUXVhaV9kJ09yc2F5X0Nvcm9uYXNfQ2xhcm9fY2lnYXJfZnVsbC5qcGciIGFsdD0iQ29yb25hcyBDbGFybyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDb3JvbmFzIENsYXJvIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1MiIgd2lkdGg9IjQyNiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTc0IHJlbGVhc2UuIEN1cnJlbnQuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5UaGUgbmFtZSBvbiB0aGUgYm94IGlzICJDb3JvbmFzIiwgYW5kIHVudGlsIDE5OTUgaGFkICJDbGFybyIgc3RhbXBlZCBvbiB0aGUgYmFzZS48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iSW1wZXJpYWxlcyI+UXVhaSBkJiMzOTtPcnNheTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5JbXBlcmlhbGVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5KdWxpZXRhIE5vLjI8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NyB4IDE3ODxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkNodXJjaGlsbDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NTM0cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItNzc4IiBocmVmPSJpbWFnZXNcUXVhaV9kJ09yc2F5X0ltcGVyaWFsZXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfSW1wZXJpYWxlc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJJbXBlcmlhbGVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkltcGVyaWFsZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjYwIiB3aWR0aD0iNTM0Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5NzQgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2FyczwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNvcm9uYXNfQ2xhcm9fQ2xhcm8iPlF1YWkgZCYjMzk7T3JzYXk8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25hcyBDbGFybyBDbGFybzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTQyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjZweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04MzkiIGhyZWY9ImltYWdlc1xRdWFpX2QnT3JzYXlfQ29yb25hc19DbGFyb19DbGFyb19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9Db3JvbmFzX0NsYXJvX0NsYXJvX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNvcm9uYXMgQ2xhcm8gQ2xhcm8gLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ29yb25hcyBDbGFybyBDbGFybyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTIiIHdpZHRoPSI0MjYiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+U2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk3NCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk5NS4gTWluaW1hbCBwcm9kdWN0aW9uIGZyb20gbGF0ZSAxOTgwcy48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+VGhlIG5hbWUgb24gdGhlIGJveCBpcyAiQ29yb25hcyIsIGFuZCBoYXMgIkNsYXJpc2ltbyIgc3RhbXBlZCBvbiB0aGUgYm94IGJhc2UuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkdyYW5fQ29yb25hIj5RdWFpIGQmIzM5O09yc2F5PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkdyYW4gQ29yb25hPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Db3JvbmFzIEdyYW5kZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MiB4IDE1NTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbmcgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0NjVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04NDAiIGhyZWY9ImltYWdlc1xRdWFpX2QnT3JzYXlfR3Jhbl9Db3JvbmFfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfR3Jhbl9Db3JvbmFfY2lnYXJfZnVsbC5qcGciIGFsdD0iR3JhbiBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iR3JhbiBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUxIiB3aWR0aD0iNDY1Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5NzQgcmVsZWFzZS4gRGlzY29udGludWVkIG1pZCB0byBsYXRlLTIwMDYuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5PbiBuYW1lIG9uIHRoZSBib3ggaXMgIkdyYW5kIENvcm9uYXMiLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJQYW5ldGVsYXMiPlF1YWkgZCYjMzk7T3JzYXk8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGFuZXRlbGFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5OaW5mYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zMyB4IDE3ODxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNCI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNsaW0gUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjUzNHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTY5MCIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9QYW5ldGVsYXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfUGFuZXRlbGFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IlBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQYW5ldGVsYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQzIiB3aWR0aD0iNTM0Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5NzQgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMTAuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5TcGVjaWFsIFJlbGVhc2VzPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMzIxX0VkaWNpfG9uX1JlZ2lvbmFsX0FzaWFfUGFjaWZpY28iIGNsYXNzPSJlbnRyeWhlYWQiPlF1YWkgZCYjMzk7T3JzYXk8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDExIC0gRWRpY2nDs24gUmVnaW9uYWwgQXNpYSBQYWNpZmljbyA8c3BhbiBjbGFzcz0ic3JzdWIiPlJlZ2lvbmFsIEVkaXRpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+U3VwZXJpb3JlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Um9idXN0b3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41MCB4IDEyNDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNSI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlJvYnVzdG88L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM3MnB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTMyMSIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9TdXBlcmlvcmVzX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFF1YWlfZCdPcnNheV9TdXBlcmlvcmVzX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iU3VwZXJpb3JlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJTdXBlcmlvcmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2MSIgd2lkdGg9IjM3MiI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPlN1cGVyaW9yZXMgLSBhIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MjM2cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zMjEiIGhyZWY9ImltYWdlc1xRdWFpX2QnT3JzYXlfU3VwZXJpb3Jlc19mdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9TdXBlcmlvcmVzX3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMzYiIC8+DQo8L2E+DQo8L2Rpdj48YnIgLz48IS0tIGVuZCBvZiBlbmQgYnJlYWsgLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aCI+PHNwYW4gY2xhc3M9ImNvbW1lbnRzIj4NClJlZ2lvbmFsIEVkaXRpb24gQXNpYSBQYWNpZmljPC9zcGFuPjxiciAvPjwhLS0gYWZ0ZXIgc3BlY2lhbCBub3RlIGJyZWFrIC0tPjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLCB3aXRoIFJlZ2lvbmFsIEVkaXRpb24gYmFuZCBmb3IgQXNpYSBQYWNpZmljICg8aT5Bc2lhIFBhY2lmaWNvPC9pPikuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPk51bWJlcmVkIFNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKDIsNDAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMTEgcmVsZWFzZS4gPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIzMzhfRWRpY2l8b25fUmVnaW9uYWxfRnJhbmNpYSIgY2xhc3M9ImVudHJ5aGVhZCI+UXVhaSBkJiMzOTtPcnNheTwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjIwMTEgLSBFZGljacOzbiBSZWdpb25hbCBGcmFuY2lhIDxzcGFuIGNsYXNzPSJzcnN1YiI+UmVnaW9uYWwgRWRpdGlvbiBTZXJpZXM8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Sb2J1c3RvIEVtYmFqYWRvcjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TcOhZ2ljb3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41MiB4IDExNTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNiI+Jm5ic3A7KDQuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IFJvYnVzdG88L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM0NXB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTMzOCIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9Sb2J1c3RvX0VtYmFqYWRvcl9jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xRdWFpX2QnT3JzYXlfUm9idXN0b19FbWJhamFkb3JfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJSb2J1c3RvIEVtYmFqYWRvciAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJSb2J1c3RvIEVtYmFqYWRvciAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjIiIHdpZHRoPSIzNDUiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5Sb2J1c3RvIEVtYmFqYWRvciAtICBhIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MjI1cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zMzgiIGhyZWY9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfRnJhbmNlX2Z1bGxfMC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfRnJhbmNlX3NtYWxsXzAuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjIyNSIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMjZweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTMzOCIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9Sb2J1c3RvX0VtYmFqYWRvcl8oQW1iYXNzYWRvcilfZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xRdWFpX2QnT3JzYXlfUm9idXN0b19FbWJhamFkb3JfKEFtYmFzc2Fkb3IpX3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMjYiIC8+DQo8L2E+DQo8L2Rpdj48YnIgLz48IS0tIGVuZCBvZiBlbmQgYnJlYWsgLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aCI+PHNwYW4gY2xhc3M9ImNvbW1lbnRzIj4NClJlZ2lvbmFsIEVkaXRpb24gRnJhbmNlPC9zcGFuPjxiciAvPjwhLS0gYWZ0ZXIgc3BlY2lhbCBub3RlIGJyZWFrIC0tPjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLCB3aXRoIFJlZ2lvbmFsIEVkaXRpb24gYmFuZCBmb3IgRnJhbmNlICg8aT5GcmFuY2lhPC9pPikuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPk51bWJlcmVkIFNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKDEsMDAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMTEgcmVsZWFzZS4gPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIzODFfRWRpY2l8b25fUmVnaW9uYWxfRnJhbmNpYSIgY2xhc3M9ImVudHJ5aGVhZCI+UXVhaSBkJiMzOTtPcnNheTwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjIwMTMgLSBFZGljacOzbiBSZWdpb25hbCBGcmFuY2lhIDxzcGFuIGNsYXNzPSJzcnN1YiI+UmVnaW9uYWwgRWRpdGlvbiBTZXJpZXM8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5CZWxpY29zbyBSb3lhbDwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgQmVsaWNvc29zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTIgeCAxMjU8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTciPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBQeXJhbWlkPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNzVweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcUXVhaV9kJ09yc2F5X0JlbGljb3NvX1JveWFsX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkJlbGljb3NvIFJveWFsIiB0aXRsZT0iQmVsaWNvc28gUm95YWwiIGhlaWdodD0iNjEiIHdpZHRoPSIzNzUiPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE1N3B4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMzgxIiBocmVmPSJpbWFnZXNcMjAxM18tX0VkaWNpw7NuX1JlZ2lvbmFsX0ZyYW5jaWFfZnVsbF8wLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMTNfLV9FZGljacOzbl9SZWdpb25hbF9GcmFuY2lhX3NtYWxsXzAuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE1NyIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMjVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM4MSIgaHJlZj0iaW1hZ2VzXFF1YWlfZCdPcnNheV9CZWxpY29zb19Sb3lhbF9mdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXFF1YWlfZCdPcnNheV9CZWxpY29zb19Sb3lhbF9zbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjI1IiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQSwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIEZyYW5jZSAoRnJhbmNpYSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPk51bWJlcmVkIFNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKDIsMDAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMTMgcmVsZWFzZS4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlJlbGVhc2VkIEphbnVhcnkgMjAxNC48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjE0MjFfRWRpY2l8b25fUmVnaW9uYWxfRnJhbmNpYSIgY2xhc3M9ImVudHJ5aGVhZCI+UXVhaSBkJiMzOTtPcnNheTwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjIwMTUgLSBFZGljacOzbiBSZWdpb25hbCBGcmFuY2lhIDxzcGFuIGNsYXNzPSJzcnN1YiI+UmVnaW9uYWwgRWRpdGlvbiBTZXJpZXM8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Sb2J1c3RvIERpcGxvbWF0aWNvPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5IZXJtb3NvcyBOby40PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDggeCAxMjc8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTgiPiZuYnNwOyg1LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmEgRXh0cmE8L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM4MXB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xRdWFpX2QnT3JzYXlfUm9idXN0b19EaXBsb21hdGljb19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IlJvYnVzdG8gRGlwbG9tYXRpY28iIHRpdGxlPSJSb2J1c3RvIERpcGxvbWF0aWNvIiBoZWlnaHQ9IjU3IiB3aWR0aD0iMzgxIj4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+SGVybW9zb3MgTm8uIDQsIGEgbmV3IHNwZWNpYWwgcmVsZWFzZSBzaXplLjwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLCB3aXRoIFJlZ2lvbmFsIEVkaXRpb24gYmFuZCBmb3IgRnJhbmNlIChGcmFuY2lhKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+TnVtYmVyZWQgU2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDEwIGNpZ2FycyAoNywwMDAgbWFkZSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxNSByZWxlYXNlLiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+UmVsZWFzZWQgbGF0ZS0yMDE1LjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT5kZGRyZodeYAugstVgfhVM4w9bbKC1vPA0qDV0INxaKK61kA==" />
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A91F14A3" />
</div>
    
    
	    <div class="top-graphic">
    
          <div style="position:absolute;right:0px;top:10px"> 
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d27 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
        

    <div style="text-align: center">
        <span class="sub-text">
            <br />
            <a href="javascript:hideInches();">Show / Hide Inches</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/lists/abbreviations.aspx" target="_blank" title="Opens in a new window">View Packaging Abbreviations</a><br />
        </span>
        <br />

    </div>



    <table class="brand_table">
        <tbody>
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Quai d&#39;Orsay</span><br /><br /><a data-lightbox="brand" href="images\Quai_d&#39;Orsay_logo_full.jpg"><img class="box" src="images\Quai_d&#39;Orsay_logo_small.jpg" height="160" alt="Quai d&#39;Orsay" title="Quai d&#39;Orsay"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Coronas_Claro">Coronas Claro</option><option value="#Imperiales">Imperiales</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Coronas_Claro_Claro">Coronas Claro Claro</option><option value="#Gran_Corona">Gran Corona</option><option value="#Panetelas">Panetelas</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#321_Edici|on_Regional_Asia_Pacifico">2011 - Edición Regional Asia Pacifico</option><option value="#338_Edici|on_Regional_Francia">2011 - Edición Regional Francia</option><option value="#381_Edici|on_Regional_Francia">2013 - Edición Regional Francia</option><option value="#1421_Edici|on_Regional_Francia">2015 - Edición Regional Francia</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Quai d&#39;Orsay is a Current post-revolution brand, established in 1973, and commercially available from 1974.<BR /><BR /><b>Generally</b><br />It is classified by Habanos SA as a Local brand, and has a minor market share, mainly within France. <BR />The range comprises light strength cigars using tobacco from the premium <i>Vuelta Abajo</i> region.<BR /><BR /><b>Releases</b><BR />The first special releases were in 2011.<br /><br /><b>History</b><BR />Production was stepped up in 2005 in an effort to re-establish the brand.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=27">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Quai_d'Orsay_band_65231893full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Quai_d'Orsay_band_65231893small.jpg" height="95" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">1974 on -- Current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:126px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Quai_d'Orsay_packaging_304full.jpg">
<img class="box" alt="Typical Quai d&#39;Orsay packaging" title="Typical Quai d&#39;Orsay packaging" src="images\Quai_d'Orsay_packaging_304small.jpg" height="150" width="126"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas</span><br /><span class="band-caption">SBN25 - c2000/10</span><br /></td></tr></table><table align="left" width="175" style="width:105px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Quai_d'Orsay_packaging_1035full.jpg">
<img class="box" alt="Typical Quai d&#39;Orsay packaging" title="Typical Quai d&#39;Orsay packaging" src="images\Quai_d'Orsay_packaging_1035small.jpg" height="150" width="105"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas</span><br /><span class="band-caption">SBN25  - mid 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:118px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Quai_d'Orsay_packaging_301full.jpg">
<img class="box" alt="Typical Quai d&#39;Orsay packaging" title="Typical Quai d&#39;Orsay packaging" src="images\Quai_d'Orsay_packaging_301small.jpg" height="150" width="118"  /></a>
</td></tr><tr><td><span class="bandhead">Grand Coronas</span><br /><span class="band-caption">SBN25 - c2000/10</span><br /></td></tr></table><table align="left" width="175" style="width:100px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Quai_d'Orsay_packaging_303full.jpg">
<img class="box" alt="Typical Quai d&#39;Orsay packaging" title="Typical Quai d&#39;Orsay packaging" src="images\Quai_d'Orsay_packaging_303small.jpg" height="150" width="100"  /></a>
</td></tr><tr><td><span class="bandhead">Imperiales</span><br /><span class="band-caption">SBN25 - c2000/10</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_Claro">Quai d&#39;Orsay</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas Claro</td><td class="cigarDetailHead-i" style="width:30%">Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i0">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:426px">
<a data-lightbox="cigar-838" href="images\Quai_d'Orsay_Coronas_Claro_cigar_orig.jpg">
<img class="box" src="images\Quai_d'Orsay_Coronas_Claro_cigar_full.jpg" alt="Coronas Claro - click to enlarge" title="Coronas Claro - click to enlarge" height="52" width="426">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1974 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">The name on the box is "Coronas", and until 1995 had "Claro" stamped on the base.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Imperiales">Quai d&#39;Orsay</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Imperiales</td><td class="cigarDetailHead-i" style="width:30%">Julieta No.2</td><td class="cigarDetailHead" style="text-align:center;width:19%">47 x 178<span class="inches" id="i1">&nbsp;(7.0")</span></td><td class="cigarDetailHead" style="width:21%">Churchill</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:534px">
<a data-lightbox="cigar-778" href="images\Quai_d'Orsay_Imperiales_cigar_orig.jpg">
<img class="box" src="images\Quai_d'Orsay_Imperiales_cigar_full.jpg" alt="Imperiales - click to enlarge" title="Imperiales - click to enlarge" height="60" width="534">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1974 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_Claro_Claro">Quai d&#39;Orsay</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas Claro Claro</td><td class="cigarDetailHead-i" style="width:30%">Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i2">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:426px">
<a data-lightbox="cigar-839" href="images\Quai_d'Orsay_Coronas_Claro_Claro_cigar_orig.jpg">
<img class="box" src="images\Quai_d'Orsay_Coronas_Claro_Claro_cigar_full.jpg" alt="Coronas Claro Claro - click to enlarge" title="Coronas Claro Claro - click to enlarge" height="52" width="426">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1974 release. Discontinued 1995. Minimal production from late 1980s.</td></tr><tr><td class="histhead">History:</td><td class="histnotes">The name on the box is "Coronas", and has "Clarisimo" stamped on the box base.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Gran_Corona">Quai d&#39;Orsay</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Gran Corona</td><td class="cigarDetailHead-i" style="width:30%">Coronas Grandes</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 155<span class="inches" id="i3">&nbsp;(6.1")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:465px">
<a data-lightbox="cigar-840" href="images\Quai_d'Orsay_Gran_Corona_cigar_orig.jpg">
<img class="box" src="images\Quai_d'Orsay_Gran_Corona_cigar_full.jpg" alt="Gran Corona - click to enlarge" title="Gran Corona - click to enlarge" height="51" width="465">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1974 release. Discontinued mid to late-2006. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">On name on the box is "Grand Coronas".</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Panetelas">Quai d&#39;Orsay</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Panetelas</td><td class="cigarDetailHead-i" style="width:30%">Ninfas</td><td class="cigarDetailHead" style="text-align:center;width:19%">33 x 178<span class="inches" id="i4">&nbsp;(7.0")</span></td><td class="cigarDetailHead" style="width:21%">Slim Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:534px">
<a data-lightbox="cigar-690" href="images\Quai_d'Orsay_Panetelas_cigar_orig.jpg">
<img class="box" src="images\Quai_d'Orsay_Panetelas_cigar_full.jpg" alt="Panetelas - click to enlarge" title="Panetelas - click to enlarge" height="43" width="534">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1974 release. Discontinued 2010. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="321_Edici|on_Regional_Asia_Pacifico" class="entryhead">Quai d&#39;Orsay</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2011 - Edición Regional Asia Pacifico <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Superiores</td><td class="cigarDetailHead-i" style="width:30%">Robustos</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 124<span class="inches" id="i5">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:372px">
<a  data-lightbox="special-321" href="images\Quai_d'Orsay_Superiores_cigar_orig_0.jpg">
<img class="box" src = "images\Quai_d'Orsay_Superiores_cigar_full_0.jpg" alt="Superiores - click to enlarge" title="Superiores - click to enlarge" height="61" width="372">
</a>
<span class="comments">Superiores - a new special release size</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:236px">
<a data-lightbox="special-321" href="images\Quai_d'Orsay_Superiores_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Quai_d'Orsay_Superiores_small.jpg" class="box" height="150" width="236" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition Asia Pacific</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with Regional Edition band for Asia Pacific (<i>Asia Pacifico</i>).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 25 cigars (2,400 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2011 release. </td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="338_Edici|on_Regional_Francia" class="entryhead">Quai d&#39;Orsay</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2011 - Edición Regional Francia <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Robusto Embajador</td><td class="cigarDetailHead-i" style="width:30%">Mágicos</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 115<span class="inches" id="i6">&nbsp;(4.5")</span></td><td class="cigarDetailHead" style="width:21%">Petit Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:345px">
<a  data-lightbox="special-338" href="images\Quai_d'Orsay_Robusto_Embajador_cigar_orig_0.jpg">
<img class="box" src = "images\Quai_d'Orsay_Robusto_Embajador_cigar_full_0.jpg" alt="Robusto Embajador - click to enlarge" title="Robusto Embajador - click to enlarge" height="62" width="345">
</a>
<span class="comments">Robusto Embajador -  a new special release size</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:225px">
<a data-lightbox="special-338" href="images\2011_-_Edición_Regional_France_full_0.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_France_small_0.jpg" class="box" height="150" width="225" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:226px">
<a data-lightbox="special-338" href="images\Quai_d'Orsay_Robusto_Embajador_(Ambassador)_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Quai_d'Orsay_Robusto_Embajador_(Ambassador)_small.jpg" class="box" height="150" width="226" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition France</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with Regional Edition band for France (<i>Francia</i>).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 25 cigars (1,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2011 release. </td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="381_Edici|on_Regional_Francia" class="entryhead">Quai d&#39;Orsay</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2013 - Edición Regional Francia <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Belicoso Royal</td><td class="cigarDetailHead-i" style="width:30%">Petit Belicosos</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 125<span class="inches" id="i7">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Petit Pyramid</td></tr>
</table><div style="clear:both;padding-right:24px;width:375px">
<img class="box" src = "images\Quai_d'Orsay_Belicoso_Royal_cigar_full.jpg" alt="Belicoso Royal" title="Belicoso Royal" height="61" width="375">
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:157px">
<a data-lightbox="special-381" href="images\2013_-_Edición_Regional_Francia_full_0.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2013_-_Edición_Regional_Francia_small_0.jpg" class="box" height="150" width="157" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:225px">
<a data-lightbox="special-381" href="images\Quai_d'Orsay_Belicoso_Royal_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Quai_d'Orsay_Belicoso_Royal_small.jpg" class="box" height="150" width="225" />
</a>
</div><br /><!-- end of end break --><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with Regional Edition band for France (Francia).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 25 cigars (2,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2013 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released January 2014.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="1421_Edici|on_Regional_Francia" class="entryhead">Quai d&#39;Orsay</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2015 - Edición Regional Francia <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Robusto Diplomatico</td><td class="cigarDetailHead-i" style="width:30%">Hermosos No.4</td><td class="cigarDetailHead" style="text-align:center;width:19%">48 x 127<span class="inches" id="i8">&nbsp;(5.0")</span></td><td class="cigarDetailHead" style="width:21%">Corona Extra</td></tr>
</table><div style="clear:both;padding-right:24px;width:381px">
<img class="box" src = "images\Quai_d'Orsay_Robusto_Diplomatico_cigar_full_0.jpg" alt="Robusto Diplomatico" title="Robusto Diplomatico" height="57" width="381">
<span class="comments">Hermosos No. 4, a new special release size.</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with Regional Edition band for France (Francia).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 10 cigars (7,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2015 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released late-2015.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
