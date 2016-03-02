


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Fonseca
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Fonseca" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gNzsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQXZMTx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkZvbnNlY2E8L3NwYW4+PGJyIC8+PGJyIC8+PGEgZGF0YS1saWdodGJveD0iYnJhbmQiIGhyZWY9ImltYWdlc1xGb25zZWNhX2xvZ29fZnVsbC5qcGciPjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRm9uc2VjYV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iRm9uc2VjYSIgdGl0bGU9IkZvbnNlY2EiPjwvYT48YnIgLz48YnIgLz48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMSIgbmFtZT0iRDEiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+Q3VycmVudCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0Nvc2Fjb3MiPkNvc2Fjb3M8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjRGVsaWNpYXMiPkRlbGljaWFzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0tEVF9DYWRldGVzIj5LRFQgQ2FkZXRlczwvb3B0aW9uPgk8L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMyIgbmFtZT0iRDMiIGNsYXNzPSJkcm9wZG93biI+CTxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNBcm9tYXMiPkFyb21hczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNGb25zZWNhX05vLjEiPkZvbnNlY2EgTm8uMTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNJbnZpY3RvcyI+SW52aWN0b3M8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxzZWxlY3Qgb25jaGFuZ2U9IkZQX2p1bXBNZW51KHRoaXMsJ3dpbmRvdycsZmFsc2UpIiBpZD0iaWQyIiBuYW1lPSJEMiIgY2xhc3M9ImRyb3Bkb3duIj48b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5TcGVjaWFsIFJlbGVhc2VzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMyMzdfRWRpY2l8b25fUmVnaW9uYWxfQmVuZWx1eCI+MjAxMCAtIEVkaWNpw7NuIFJlZ2lvbmFsIEJlbmVsdXg8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMzE0X0VkaWNpfG9uX1JlZ2lvbmFsX0ZyYW5jaWEiPjIwMTEgLSBFZGljacOzbiBSZWdpb25hbCBGcmFuY2lhPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5Gb25zZWNhIGlzIGEgY3VycmVudCBwcmUtcmV2b2x1dGlvbiBicmFuZCwgc3RhcnRlZCBpbiAxODkyIGFuZCByZWdpc3RlcmVkIGluIDE5MDcuPEJSIC8+SXQgaXMgY2xhc3NlZCBieSBIYWJhbm9zIFNBIGFzIGEgbXVsdGktbG9jYWwgYnJhbmQsIGFuZCBoYXMgYSBtaW5vciBtYXJrZXQgc2hhcmUuPEJSIC8+PEJSIC8+PGI+R2VuZXJhbGx5PC9iPjxiciAvPlRoZSByYW5nZSBjb21wcmlzZXMgbGlnaHQgc3RyZW5ndGggY2lnYXJzLCB1c2luZyB0b2JhY2NvIGZyb20gdGhlIHByZW1pdW0gPGk+VnVlbHRhIEFiYWpvPC9pPiByZWdpb24uPEJSIC8+VGhlcmUgaXMgYSBub24tQ3ViYW4gYnJhbmQgd2l0aCB0aGUgc2FtZSBuYW1lLjxCUiAvPjxCUiAvPjxiPiBSZWxlYXNlczwvYj4gICA8QlIgLz5DdXJyZW50IHByb2R1Y3Rpb24gY29uc2lzdHMgb2YgdGhyZWUgaGFuZG1hZGUgY2lnYXJzLjxCUiAvPlNwZWNpYWwgUmVsZWFzZXMgY29tbWVuY2VkIGluIDIwMTAuPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD0xNCI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcRm9uc2VjYV9iYW5kXzE4MDUxNTExNDdmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEZvbnNlY2FfYmFuZF8xODA1MTUxMTQ3c21hbGwuanBnIiBoZWlnaHQ9IjEyMSIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEE8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+TWlub3IgZW1ib3NzZWQsIHdoaXRlIHBhcGVyPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPjE5NjBzIG9uIC0tIEN1cnJlbnQ8L3NwYW4+DQo8L2Rpdj48L3A+PHA+PGRpdj48YSBkYXRhLWxpZ2h0Ym94PSJiYW5kcyIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfYmFuZF81MDc5OTYxNzlmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEZvbnNlY2FfYmFuZF81MDc5OTYxNzlzbWFsbC5qcGciIGhlaWdodD0iMTIyIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQjwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5CZXR0ZXIgZW1ib3NzaW5nIGFuZCBkZXRhaWwgb24gd2hpdGUgcGFwZXI8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+Rm9yIDIwMTAgU3BlY2lhbCBSZWxlYXNlPC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6NjBweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfcGFja2FnaW5nXzI4NGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEZvbnNlY2EgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBGb25zZWNhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfMjg0c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjYwIiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkNvc2Fjb3M8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+UDN0dyAtIDE5OTU8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTk1cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xGb25zZWNhX3BhY2thZ2luZ18xMjQzZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgRm9uc2VjYSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEZvbnNlY2EgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xGb25zZWNhX3BhY2thZ2luZ18xMjQzc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE5NSIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5EZWxpY2lhczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjV0dyAtIDIwMDBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE0NXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfMjg4ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgRm9uc2VjYSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEZvbnNlY2EgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xGb25zZWNhX3BhY2thZ2luZ18yODhzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTQ1IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkZvbnNlY2EgTm8uMTwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjV0dyAtIGMxOTk1PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEyNXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfNjk2NGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEZvbnNlY2EgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBGb25zZWNhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfNjk2NHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMjUiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+SW52aWN0b3M8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1dHcgLSAxOTk1PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE0OHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfMzc0OWZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEZvbnNlY2EgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBGb25zZWNhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfMzc0OXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNDgiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+S0RUIENhZGV0ZXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1dHcgLSAyMDAwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoyNTVweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfcGFja2FnaW5nXzI4N2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEZvbnNlY2EgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBGb25zZWNhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcRm9uc2VjYV9wYWNrYWdpbmdfMjg3c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjI1NSIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5NdWx0aXBsZSBCb3hlczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjV0dyAtIGMxOTkwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+PC90YWJsZT48YnIgLz48L3RkPjwvdHI+DQpkZAIBDw8WAh8BBYFuPHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSIgc3R5bGU9ImJvcmRlci10b3A6bm9uZSI+PHRib2R5Pjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+Q3VycmVudCBQcm9kdWN0aW9uIENpZ2FyczwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNvc2Fjb3MiPkZvbnNlY2E8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Q29zYWNvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29zYWNvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTM1PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkwIj4mbmJzcDsoNS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MTVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMDEiIGhyZWY9ImltYWdlc1xGb25zZWNhX0Nvc2Fjb3NfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xGb25zZWNhX0Nvc2Fjb3NfY2lnYXJfZnVsbC5qcGciIGFsdD0iQ29zYWNvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDb3NhY29zIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NCIgd2lkdGg9IjQxNSI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS4gIFRpc3N1ZSB3cmFwcGVkLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkNhcmRib2FyZCBQYWNrIG9mIDMgY2lnYXJzIGluIHRpc3N1ZS48YnIgLz5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIHRpc3N1ZS48YnIgLz48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2FycyBpbiB0aXNzdWUgKGRpc2NvbnRpbnVlZCAyMDA5KS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPkluIDIwMDggYW5kIDIwMTEsIGh1bWlkb3JzIG9mIDUwIGNpZ2FycyB3ZXJlIGF2YWlsYWJsZSB0aHJvdWdoIDV0aCBBdmVudWUsIEdlcm1hbnkuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkRlbGljaWFzIj5Gb25zZWNhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRlbGljaWFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5TdGFuZGFyZCBNYW5vPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMjM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEiPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM2OXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEwMiIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfRGVsaWNpYXNfY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEZvbnNlY2FfRGVsaWNpYXNfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJEZWxpY2lhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJEZWxpY2lhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTIiIHdpZHRoPSIzNjkiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUsIHNob3J0IGZpbGxlciB0b2JhY2NvLiAgVGlzc3N1ZSB3cmFwcGVkLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gdGlzc3VlLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+VW50aWwgYzIwMDIgd2FzIG1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iS0RUX0NhZGV0ZXMiPkZvbnNlY2E8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+S0RUIENhZGV0ZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNhZGV0ZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zNiB4IDExNTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMiI+Jm5ic3A7KDQuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNDVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMDMiIGhyZWY9ImltYWdlc1xGb25zZWNhX0tEVF9DYWRldGVzX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xGb25zZWNhX0tEVF9DYWRldGVzX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iS0RUIENhZGV0ZXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iS0RUIENhZGV0ZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ0IiB3aWR0aD0iMzQ1Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLiAgVGlzc3VlIHdyYXBwZWQuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiB0aXNzdWUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIEN1cnJlbnQuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJBcm9tYXMiPkZvbnNlY2E8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+QXJvbWFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Vbmtub3duPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxNDA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTMiPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEwNSIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfQXJvbWFzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRm9uc2VjYV9Bcm9tYXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iQXJvbWFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkFyb21hcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDgiIHdpZHRoPSI0MjAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuIMKgVGlzc3VlIHdyYXBwZWQuIMKgU2l6ZSBpcyBhcHByb3hpbWF0ZSBvbmx5LjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gdGlzc3VlLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgbWlkIHRvIGxhdGUtMTk4MHMuIMKgPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlRoaXMgY2lnYXIgd2FzIGZhaXJseSByYXJlLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJGb25zZWNhX05vLjEiPkZvbnNlY2E8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Rm9uc2VjYSBOby4xPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5DYXphZG9yZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MyB4IDE2MjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNCI+Jm5ic3A7KDYuNCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbnNkYWxlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0ODZweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMDQiIGhyZWY9ImltYWdlc1xGb25zZWNhX0ZvbnNlY2FfTm8uMV9jaWdhcl9vcmlnXzEuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRm9uc2VjYV9Gb25zZWNhX05vLjFfY2lnYXJfZnVsbF8xLmpwZyIgYWx0PSJGb25zZWNhIE5vLjEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRm9uc2VjYSBOby4xIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NCIgd2lkdGg9IjQ4NiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS4gIFRpc3N1ZSB3cmFwcGVkLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gdGlzc3VlLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAxMi4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPkFsdGhvdWdoIG9mZmljaWFsbHkgZGlzY29udGludWVkIGluIDIwMTIsIHRoZXNlIHdlcmUgc3RpbGwgaW4gcHJvZHVjdGlvbiBhcyBvZiAyMDE0LjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJJbnZpY3RvcyI+Rm9uc2VjYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5JbnZpY3RvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+RXNwZWNpYWxlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ1IHggMTM0PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk1Ij4mbmJzcDsoNS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGVyZmVjdG88L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQwMnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEwNyIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfSW52aWN0b3NfY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEZvbnNlY2FfSW52aWN0b3NfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJJbnZpY3RvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJJbnZpY3RvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjIiIHdpZHRoPSI0MDIiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuICBUaXNzdWUgd3JhcHBlZC48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIHRpc3N1ZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDIuIMKgPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlRoaXMgY2lnYXIgaGFkIGxpbWl0ZWQgYXZhaWxhYmlsaXR5LjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5TcGVjaWFsIFJlbGVhc2VzPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMjM3X0VkaWNpfG9uX1JlZ2lvbmFsX0JlbmVsdXgiIGNsYXNzPSJlbnRyeWhlYWQiPkZvbnNlY2E8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDEwIC0gRWRpY2nDs24gUmVnaW9uYWwgQmVuZWx1eCA8c3BhbiBjbGFzcz0ic3JzdWIiPlJlZ2lvbmFsIEVkaXRpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Rm9uc2VjYSBOby40PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5IZXJtb3NvcyBOby40PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDggeCAxMjc8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTYiPiZuYnNwOyg1LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmEgRXh0cmE8L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM4MXB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTIzNyIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfRm9uc2VjYV9Oby40X2NpZ2FyX29yaWdfNC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXEZvbnNlY2FfRm9uc2VjYV9Oby40X2NpZ2FyX2Z1bGxfMy5qcGciIGFsdD0iRm9uc2VjYSBOby40IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkZvbnNlY2EgTm8uNCAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjEiIHdpZHRoPSIzODEiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5Gb25zZWNhIE5vLjQgLSA8aT5hIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvaT48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE5MXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjM3IiBocmVmPSJpbWFnZXNcMjAxMF8tX0VkaWNpw7NuX1JlZ2lvbmFsX0JlbmVsdXhfNjE1ZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDEwXy1fRWRpY2nDs25fUmVnaW9uYWxfQmVuZWx1eF82MTVzbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTkxIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE5MnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjM3IiBocmVmPSJpbWFnZXNcMjAxMF8tX0VkaWNpw7NuX1JlZ2lvbmFsX0JlbmVsdXhfNjE0ZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDEwXy1fRWRpY2nDs25fUmVnaW9uYWxfQmVuZWx1eF82MTRzbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTkyIiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQpSZWdpb25hbCBFZGl0aW9uIEJlbmVsdXg8L3NwYW4+PGJyIC8+PCEtLSBhZnRlciBzcGVjaWFsIG5vdGUgYnJlYWsgLS0+PC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuICBUaXNzdWUgd3JhcHBlZC48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQiwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIEJlbmVsdXggLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBEcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIHRpc3N1ZSAoMSw2MDAgbWFkZSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxMCByZWxlYXNlLiA8L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjMxNF9FZGljaXxvbl9SZWdpb25hbF9GcmFuY2lhIiBjbGFzcz0iZW50cnloZWFkIj5Gb25zZWNhPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAxMSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEZyYW5jaWEgPHNwYW4gY2xhc3M9InNyc3ViIj5SZWdpb25hbCBFZGl0aW9uIFNlcmllczwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkFtYXRldXI8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkdvcmRpdG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTAgeCAxNDE8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTciPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Sb2J1c3RvIEV4dHJhPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjNweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zMTQiIGhyZWY9ImltYWdlc1xGb25zZWNhX0FtYXRldXJfY2lnYXJfb3JpZ18xLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcRm9uc2VjYV9BbWF0ZXVyX2NpZ2FyX2Z1bGxfMS5qcGciIGFsdD0iQW1hdGV1ciAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJBbWF0ZXVyIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2MiIgd2lkdGg9IjQyMyI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkFtYXRldXIgLSA8aT5hIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZS48L2k+PC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxOTVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTMxNCIgaHJlZj0iaW1hZ2VzXEZvbnNlY2FfQW1hdGV1cl9mdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEZvbnNlY2FfQW1hdGV1cl9zbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTk1IiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQpSZWdpb25hbCBFZGl0aW9uIEZyYW5jZTwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQiwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIEZyYW5jZSAoPGk+RnJhbmNpYTwvaT4pLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBTZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMTAgY2lnYXJzICg0LDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDExIHJlbGVhc2UuIDwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT5kZGRVQy2bbtBUO5gUY3V8AetP1YE1HMPSXCWX5E9DfSCaEg==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dFonseca ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Fonseca</span><br /><br /><a data-lightbox="brand" href="images\Fonseca_logo_full.jpg"><img class="box" src="images\Fonseca_logo_small.jpg" height="160" alt="Fonseca" title="Fonseca"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Cosacos">Cosacos</option><option value="#Delicias">Delicias</option><option value="#KDT_Cadetes">KDT Cadetes</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Aromas">Aromas</option><option value="#Fonseca_No.1">Fonseca No.1</option><option value="#Invictos">Invictos</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#237_Edici|on_Regional_Benelux">2010 - Edición Regional Benelux</option><option value="#314_Edici|on_Regional_Francia">2011 - Edición Regional Francia</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Fonseca is a current pre-revolution brand, started in 1892 and registered in 1907.<BR />It is classed by Habanos SA as a multi-local brand, and has a minor market share.<BR /><BR /><b>Generally</b><br />The range comprises light strength cigars, using tobacco from the premium <i>Vuelta Abajo</i> region.<BR />There is a non-Cuban brand with the same name.<BR /><BR /><b> Releases</b>   <BR />Current production consists of three handmade cigars.<BR />Special Releases commenced in 2010.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=14">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Fonseca_band_1805151147full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Fonseca_band_1805151147small.jpg" height="121" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Minor embossed, white paper</span><br /><span class="band-caption">1960s on -- Current</span>
</div></p><p><div><a data-lightbox="bands" href="images\Fonseca_band_507996179full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Fonseca_band_507996179small.jpg" height="122" width="400"  /></a>
<br /><span class="bandhead">Standard Band B</span><br />
<span class="band-caption2">Better embossing and detail on white paper</span><br /><span class="band-caption">For 2010 Special Release</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:60px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Fonseca_packaging_284full.jpg">
<img class="box" alt="Typical Fonseca packaging" title="Typical Fonseca packaging" src="images\Fonseca_packaging_284small.jpg" height="150" width="60"  /></a>
</td></tr><tr><td><span class="bandhead">Cosacos</span><br /><span class="band-caption">P3tw - 1995</span><br /></td></tr></table><table align="left" width="175" style="width:195px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Fonseca_packaging_1243full.jpg">
<img class="box" alt="Typical Fonseca packaging" title="Typical Fonseca packaging" src="images\Fonseca_packaging_1243small.jpg" height="150" width="195"  /></a>
</td></tr><tr><td><span class="bandhead">Delicias</span><br /><span class="band-caption">B25tw - 2000s</span><br /></td></tr></table><table align="left" width="175" style="width:145px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Fonseca_packaging_288full.jpg">
<img class="box" alt="Typical Fonseca packaging" title="Typical Fonseca packaging" src="images\Fonseca_packaging_288small.jpg" height="150" width="145"  /></a>
</td></tr><tr><td><span class="bandhead">Fonseca No.1</span><br /><span class="band-caption">B25tw - c1995</span><br /></td></tr></table><table align="left" width="175" style="width:125px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Fonseca_packaging_6964full.jpg">
<img class="box" alt="Typical Fonseca packaging" title="Typical Fonseca packaging" src="images\Fonseca_packaging_6964small.jpg" height="150" width="125"  /></a>
</td></tr><tr><td><span class="bandhead">Invictos</span><br /><span class="band-caption">B25tw - 1995</span><br /></td></tr></table><table align="left" width="175" style="width:148px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Fonseca_packaging_3749full.jpg">
<img class="box" alt="Typical Fonseca packaging" title="Typical Fonseca packaging" src="images\Fonseca_packaging_3749small.jpg" height="150" width="148"  /></a>
</td></tr><tr><td><span class="bandhead">KDT Cadetes</span><br /><span class="band-caption">B25tw - 2000s</span><br /></td></tr></table><table align="left" width="175" style="width:255px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Fonseca_packaging_287full.jpg">
<img class="box" alt="Typical Fonseca packaging" title="Typical Fonseca packaging" src="images\Fonseca_packaging_287small.jpg" height="150" width="255"  /></a>
</td></tr><tr><td><span class="bandhead">Multiple Boxes</span><br /><span class="band-caption">B25tw - c1990s</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cosacos">Fonseca</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cosacos</td><td class="cigarDetailHead-i" style="width:30%">Cosacos</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 135<span class="inches" id="i0">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:415px">
<a data-lightbox="cigar-101" href="images\Fonseca_Cosacos_cigar_orig.jpg">
<img class="box" src="images\Fonseca_Cosacos_cigar_full.jpg" alt="Cosacos - click to enlarge" title="Cosacos - click to enlarge" height="54" width="415">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Tissue wrapped.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 3 cigars in tissue.<br />Dress Box of 25 cigars in tissue.<br /><span class="pack-disc">Cardboard Pack of 5 cigars in tissue (discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">In 2008 and 2011, humidors of 50 cigars were available through 5th Avenue, Germany.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Delicias">Fonseca</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Delicias</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i1">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:369px">
<a data-lightbox="cigar-102" href="images\Fonseca_Delicias_cigar_orig_0.jpg">
<img class="box" src="images\Fonseca_Delicias_cigar_full_0.jpg" alt="Delicias - click to enlarge" title="Delicias - click to enlarge" height="52" width="369">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, short filler tobacco.  Tisssue wrapped.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars in tissue.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c2002 was machine-made.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="KDT_Cadetes">Fonseca</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">KDT Cadetes</td><td class="cigarDetailHead-i" style="width:30%">Cadetes</td><td class="cigarDetailHead" style="text-align:center;width:19%">36 x 115<span class="inches" id="i2">&nbsp;(4.5")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:345px">
<a data-lightbox="cigar-103" href="images\Fonseca_KDT_Cadetes_cigar_orig_0.jpg">
<img class="box" src="images\Fonseca_KDT_Cadetes_cigar_full_0.jpg" alt="KDT Cadetes - click to enlarge" title="KDT Cadetes - click to enlarge" height="44" width="345">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Tissue wrapped.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars in tissue.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Aromas">Fonseca</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Aromas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 140<span class="inches" id="i3">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:420px">
<a data-lightbox="cigar-105" href="images\Fonseca_Aromas_cigar_orig.jpg">
<img class="box" src="images\Fonseca_Aromas_cigar_full.jpg" alt="Aromas - click to enlarge" title="Aromas - click to enlarge" height="48" width="420">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Tissue wrapped.  Size is approximate only.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in tissue.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued mid to late-1980s.  </td></tr><tr><td class="histhead">History:</td><td class="histnotes">This cigar was fairly rare.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Fonseca_No.1">Fonseca</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Fonseca No.1</td><td class="cigarDetailHead-i" style="width:30%">Cazadores</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 162<span class="inches" id="i4">&nbsp;(6.4")</span></td><td class="cigarDetailHead" style="width:21%">Lonsdale</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:486px">
<a data-lightbox="cigar-104" href="images\Fonseca_Fonseca_No.1_cigar_orig_1.jpg">
<img class="box" src="images\Fonseca_Fonseca_No.1_cigar_full_1.jpg" alt="Fonseca No.1 - click to enlarge" title="Fonseca No.1 - click to enlarge" height="54" width="486">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Tissue wrapped.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in tissue.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 2012. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Although officially discontinued in 2012, these were still in production as of 2014.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Invictos">Fonseca</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Invictos</td><td class="cigarDetailHead-i" style="width:30%">Especiales</td><td class="cigarDetailHead" style="text-align:center;width:19%">45 x 134<span class="inches" id="i5">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Perfecto</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:402px">
<a data-lightbox="cigar-107" href="images\Fonseca_Invictos_cigar_orig_0.jpg">
<img class="box" src="images\Fonseca_Invictos_cigar_full_0.jpg" alt="Invictos - click to enlarge" title="Invictos - click to enlarge" height="62" width="402">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Tissue wrapped.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in tissue.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 2002.  </td></tr><tr><td class="histhead">History:</td><td class="histnotes">This cigar had limited availability.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="237_Edici|on_Regional_Benelux" class="entryhead">Fonseca</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2010 - Edición Regional Benelux <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Fonseca No.4</td><td class="cigarDetailHead-i" style="width:30%">Hermosos No.4</td><td class="cigarDetailHead" style="text-align:center;width:19%">48 x 127<span class="inches" id="i6">&nbsp;(5.0")</span></td><td class="cigarDetailHead" style="width:21%">Corona Extra</td></tr>
</table><div style="clear:both;padding-right:24px;width:381px">
<a  data-lightbox="special-237" href="images\Fonseca_Fonseca_No.4_cigar_orig_4.jpg">
<img class="box" src = "images\Fonseca_Fonseca_No.4_cigar_full_3.jpg" alt="Fonseca No.4 - click to enlarge" title="Fonseca No.4 - click to enlarge" height="61" width="381">
</a>
<span class="comments">Fonseca No.4 - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:191px">
<a data-lightbox="special-237" href="images\2010_-_Edición_Regional_Benelux_615full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2010_-_Edición_Regional_Benelux_615small.jpg" class="box" height="150" width="191" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:192px">
<a data-lightbox="special-237" href="images\2010_-_Edición_Regional_Benelux_614full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2010_-_Edición_Regional_Benelux_614small.jpg" class="box" height="150" width="192" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition Benelux</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Tissue wrapped.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B, with Regional Edition band for Benelux .</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Dress Box of 25 cigars in tissue (1,600 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2010 release. </td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="314_Edici|on_Regional_Francia" class="entryhead">Fonseca</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2011 - Edición Regional Francia <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Amateur</td><td class="cigarDetailHead-i" style="width:30%">Gorditos</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 141<span class="inches" id="i7">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Robusto Extra</td></tr>
</table><div style="clear:both;padding-right:24px;width:423px">
<a  data-lightbox="special-314" href="images\Fonseca_Amateur_cigar_orig_1.jpg">
<img class="box" src = "images\Fonseca_Amateur_cigar_full_1.jpg" alt="Amateur - click to enlarge" title="Amateur - click to enlarge" height="62" width="423">
</a>
<span class="comments">Amateur - <i>a new special release size.</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:195px">
<a data-lightbox="special-314" href="images\Fonseca_Amateur_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Fonseca_Amateur_small.jpg" class="box" height="150" width="195" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition France</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B, with Regional Edition band for France (<i>Francia</i>).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 10 cigars (4,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2011 release. </td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
