


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
var inchLimit = 3;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=51" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMzsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQX7Kjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPlRyb3lhPC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcVHJveWFfbG9nb19mdWxsLmpwZyI+PGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xUcm95YV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iVHJveWEiIHRpdGxlPSJUcm95YSI+PC9hPjxiciAvPjxiciAvPjxzZWxlY3Qgb25jaGFuZ2U9IkZQX2p1bXBNZW51KHRoaXMsJ3dpbmRvdycsZmFsc2UpIiBpZD0iaWQxIiBuYW1lPSJEMSIgY2xhc3M9ImRyb3Bkb3duIj48b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5DdXJyZW50IFByb2R1Y3Rpb24gQ2lnYXJzPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ29yb25hc19DbHViXygyKSI+Q29yb25hcyBDbHViICgyKTwvb3B0aW9uPgk8L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMyIgbmFtZT0iRDMiIGNsYXNzPSJkcm9wZG93biI+CTxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDYW1lbGlhcyI+Q2FtZWxpYXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ29yb25hc19DbHViXygxKSI+Q29yb25hcyBDbHViICgxKTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNVbml2ZXJzYWxlcyI+VW5pdmVyc2FsZXM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5Ucm95YSBpcyBhIGN1cnJlbnQgSUNUIG1hY2hpbmUtbWFkZSBicmFuZC48QlIgLz4gSXQgd2FzIGEgcHJlLXJldm9sdXRpb24gSGFiYW5vcyBTQSBicmFuZCBlc3RhYmxpc2hlZCBpbiAxOTMyLCBhbmQgd2FzIGRlbGV0ZWQgZnJvbSBIYWJhbm9zIHBvcnRmb2xpbyBjaXJjYSAyMDA1LjxCUiAvPkl0IGlzIG5vdyBwcm9kdWNlZCBpbiBDdWJhIGJ5IEludGVybmFjaW9uYWwgQ3ViYW5hIGRlIFRhYmFjb3MgUy5BLiAoSUNUKSB1bmRlciBsaWNlbnNlIHRvIEhhYmFub3MgUy5BLjxCUiAvPjxCUiAvPjxiPkdlbmVyYWxseTwvYj48QlIgLz5UaGUgcmFuZ2UgY29tcHJpc2VkIGxpZ2h0IHRvIG1lZGl1bSBzdHJlbmd0aCBjaWdhcnMuPEJSIC8+VGhlcmUgaXMgYSBub24tQ3ViYW4gYnJhbmQgd2l0aCB0aGUgc2FtZSBuYW1lLjxCUiAvPjxCUiAvPjxiPlJlbGVhc2VzPC9iPjxCUiAvPkluIHRoZSBsYXRlIDE5NjBzIHRoZXJlIHdlcmUgZWlnaHQgY2lnYXJzIGluIHRoZSByYW5nZTsgc2l4IGhhbmRtYWRlIGFuZCB0d28gbWFjaGluZS1tYWRlLjxCUiAvPkJ5IHRoZSAxOTgwcywgb25seSB0aGUgQ29yb25hcyBDbHViIGFuZCB0aGUgVW5pdmVyc2FscyAoYm90aCBwcmV2aW91c2x5IGhhbmRtYWRlKSByZW1haW5lZCBhcyBtYWNoaW5lLW1hZGUgY2lnYXJzLjxCUiAvPkluIGNpcmNhIDIwMDUgdGhlIENvcm9uYXMgQ2x1YiB3YXMgcmVpbnN0YXRlZCBpbiBhIHJldmlzZWQgdml0b2xhIHNpemUgYW5kIHByZXNlbnRlZCBpbiBhIHBsYXN0aWMgdHViZS4gPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD01MSI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcVHJveWFfYmFuZF8xMzE5MTg0NDk2ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xUcm95YV9iYW5kXzEzMTkxODQ0OTZzbWFsbC5qcGciIGhlaWdodD0iMTQzIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQSAtIEZvciBTbGVuZGVyIFJpbmcgQ2lnYXJzPC9zcGFuPjxiciAvPg0KPHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbjIiPk5vdCBlbWJvc3NlZDwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5QcmUgMTk2MHMgdG8gbGF0ZSAxOTcwcyAtLSBEaXNjb250aW51ZWQ8L3NwYW4+DQo8L2Rpdj48L3A+PHA+PGRpdj48YSBkYXRhLWxpZ2h0Ym94PSJiYW5kcyIgaHJlZj0iaW1hZ2VzXFRyb3lhX2JhbmRfNzYwNzk1NzhmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXFRyb3lhX2JhbmRfNzYwNzk1NzhzbWFsbC5qcGciIGhlaWdodD0iMTQzIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQjwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5FbWJvc3NlZDwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5QcmUgMTk2MHMgdG8gYzIwMDUgLS0gRGlzY29udGludWVkPC9zcGFuPg0KPC9kaXY+PC9wPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xUcm95YV9iYW5kXzQzMDkwOTE0OGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcVHJveWFfYmFuZF80MzA5MDkxNDhzbWFsbC5qcGciIGhlaWdodD0iMTMwIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQzwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5FbWJvc3NlZDwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5jMjAwNSBvbiAtLSBDdXJyZW50PC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTE1cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xUcm95YV9wYWNrYWdpbmdfOTc3M2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIFRyb3lhIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgVHJveWEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xUcm95YV9wYWNrYWdpbmdfOTc3M3NtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMTUiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q2FtZWxpYXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1YyAtIG1pZCAxOTcwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMzFweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFRyb3lhX3BhY2thZ2luZ18yNDc0ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgVHJveWEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBUcm95YSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFRyb3lhX3BhY2thZ2luZ18yNDc0c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEzMSIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5Db3JvbmFzIENsdWIgKDEpPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNWF0IC0gMjAwMDwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMTdweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFRyb3lhX3BhY2thZ2luZ182NjU2ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgVHJveWEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBUcm95YSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFRyb3lhX3BhY2thZ2luZ182NjU2c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjExNyIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5Db3JvbmFzIENsdWIgKDIpPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyMHB0IC0gMjAwNTwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMzJweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFRyb3lhX3BhY2thZ2luZ183MzcyZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgVHJveWEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBUcm95YSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFRyb3lhX3BhY2thZ2luZ183Mzcyc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEzMiIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5Vbml2ZXJzYWxlczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjUgLSAxOTk4PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj48L3RhYmxlPjxiciAvPjwvdGQ+PC90cj4NCmRkAgEPDxYCHwEFrzQ8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5DdXJyZW50IFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ29yb25hc19DbHViXygyKSI+VHJveWE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25hcyBDbHViICgyKTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5pdmVyc2FsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOCB4IDEzNDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMCI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0NTlweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0yMzciIGhyZWY9ImltYWdlc1xUcm95YV9Db3JvbmFzX0NsdWJfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xUcm95YV9Db3JvbmFzX0NsdWJfY2lnYXJfZnVsbC5qcGciIGFsdD0iQ29yb25hcyBDbHViICgyKSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDb3JvbmFzIENsdWIgKDIpIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NiIgd2lkdGg9IjQ1OSI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDAycHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjM3IiBocmVmPSJpbWFnZXNcVHJveWFfQ29yb25hc19DbHViX2NpZ2FyX29yaWdfMy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xUcm95YV9Db3JvbmFzX0NsdWJfY2lnYXJfZnVsbF8zLmpwZyIgYWx0PSJDb3JvbmFzIENsdWIgKDIpIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uYXMgQ2x1YiAoMikgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ5IiB3aWR0aD0iNDAyIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZSwgdXNpbmcgc2hvcnQtZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEM8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0idHViZW5vdGVoZWFkIj5UdWJlczo8L3RkPjx0ZCBjbGFzcz0idHViZW5vdGUiPlBsYXN0aWMgdHViZXMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+Q2FyZGJvYXJkIFBhY2sgb2YgMyBjaWdhcnMgaW4gcGxhc3RpYyB0dWJlcy48YnIgLz5EcmVzcyBCb3ggb2YgMjAgY2lnYXJzIGluIHBsYXN0aWMgdHViZXMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDUgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2FyczwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNhbWVsaWFzIj5Ucm95YTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5DYW1lbGlhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjMwIHggMTUwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxIj4mbmJzcDsoNS45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2xpbSBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDU5cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjM2IiBocmVmPSJpbWFnZXNcVHJveWFfQ2FtZWxpYXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xUcm95YV9DYW1lbGlhc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJDYW1lbGlhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDYW1lbGlhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMzQiIHdpZHRoPSI0NTkiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIGxhdGUtMTk3MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDb3JvbmFzX0NsdWJfKDEpIj5Ucm95YTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db3JvbmFzIENsdWIgKDEpPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5TdGFuZGFyZCBNYW5vPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMjM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTIiPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM3OXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTE1MjIiIGhyZWY9ImltYWdlc1xUcm95YV9Db3JvbmFzX0NsdWJfKDEpX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcVHJveWFfQ29yb25hc19DbHViXygxKV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJDb3JvbmFzIENsdWIgKDEpIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uYXMgQ2x1YiAoMSkgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjYxIiB3aWR0aD0iMzc5Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZSwgdXNpbmcgbG9uZy1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQi48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGFsdW1pbml1bSB0dWJlcy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDUuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5VbnRpbCBjMTk4MCB3YXMgaGFuZG1hZGUuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlVuaXZlcnNhbGVzIj5Ucm95YTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Vbml2ZXJzYWxlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5pdmVyc2FsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOCB4IDEzNDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MTJweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0yMzgiIGhyZWY9ImltYWdlc1xUcm95YV9Vbml2ZXJzYWxlc19jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcVHJveWFfVW5pdmVyc2FsZXNfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJVbml2ZXJzYWxlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJVbml2ZXJzYWxlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDgiIHdpZHRoPSI0MTIiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBCLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzLjxiciAvPkNhcmRib2FyZCBQYWNrIG9mIDMgY2lnYXJzLjxiciAvPkNhcmRib2FyZCBQYWNrIG9mIDMgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDUuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5VbnRpbCBjMTk4MCB3YXMgaGFuZG1hZGUuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+ZGRkRHDHNmEZD3+IIA4CrsuGdN6GmROXB80AfrZRPSQd2AA=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d51 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Troya</span><br /><br /><a data-lightbox="brand" href="images\Troya_logo_full.jpg"><img class="box" src="images\Troya_logo_small.jpg" height="160" alt="Troya" title="Troya"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Coronas_Club_(2)">Coronas Club (2)</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Camelias">Camelias</option><option value="#Coronas_Club_(1)">Coronas Club (1)</option><option value="#Universales">Universales</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Troya is a current ICT machine-made brand.<BR /> It was a pre-revolution Habanos SA brand established in 1932, and was deleted from Habanos portfolio circa 2005.<BR />It is now produced in Cuba by Internacional Cubana de Tabacos S.A. (ICT) under license to Habanos S.A.<BR /><BR /><b>Generally</b><BR />The range comprised light to medium strength cigars.<BR />There is a non-Cuban brand with the same name.<BR /><BR /><b>Releases</b><BR />In the late 1960s there were eight cigars in the range; six handmade and two machine-made.<BR />By the 1980s, only the Coronas Club and the Universals (both previously handmade) remained as machine-made cigars.<BR />In circa 2005 the Coronas Club was reinstated in a revised vitola size and presented in a plastic tube. <BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=51">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Troya_band_1319184496full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Troya_band_1319184496small.jpg" height="143" width="400"  /></a>
<br /><span class="bandhead">Standard Band A - For Slender Ring Cigars</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">Pre 1960s to late 1970s -- Discontinued</span>
</div></p><p><div><a data-lightbox="bands" href="images\Troya_band_76079578full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Troya_band_76079578small.jpg" height="143" width="400"  /></a>
<br /><span class="bandhead">Standard Band B</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">Pre 1960s to c2005 -- Discontinued</span>
</div></p><p><div><a data-lightbox="bands" href="images\Troya_band_430909148full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Troya_band_430909148small.jpg" height="130" width="400"  /></a>
<br /><span class="bandhead">Standard Band C</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">c2005 on -- Current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:115px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Troya_packaging_9773full.jpg">
<img class="box" alt="Typical Troya packaging" title="Typical Troya packaging" src="images\Troya_packaging_9773small.jpg" height="150" width="115"  /></a>
</td></tr><tr><td><span class="bandhead">Camelias</span><br /><span class="band-caption">B25c - mid 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:131px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Troya_packaging_2474full.jpg">
<img class="box" alt="Typical Troya packaging" title="Typical Troya packaging" src="images\Troya_packaging_2474small.jpg" height="150" width="131"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas Club (1)</span><br /><span class="band-caption">B25at - 2000</span><br /></td></tr></table><table align="left" width="175" style="width:117px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Troya_packaging_6656full.jpg">
<img class="box" alt="Typical Troya packaging" title="Typical Troya packaging" src="images\Troya_packaging_6656small.jpg" height="150" width="117"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas Club (2)</span><br /><span class="band-caption">B20pt - 2005</span><br /></td></tr></table><table align="left" width="175" style="width:132px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Troya_packaging_7372full.jpg">
<img class="box" alt="Typical Troya packaging" title="Typical Troya packaging" src="images\Troya_packaging_7372small.jpg" height="150" width="132"  /></a>
</td></tr><tr><td><span class="bandhead">Universales</span><br /><span class="band-caption">B25 - 1998</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_Club_(2)">Troya</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas Club (2)</td><td class="cigarDetailHead-i" style="width:30%">Universales</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 134<span class="inches" id="i0">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:459px">
<a data-lightbox="cigar-237" href="images\Troya_Coronas_Club_cigar_orig.jpg">
<img class="box" src="images\Troya_Coronas_Club_cigar_full.jpg" alt="Coronas Club (2) - click to enlarge" title="Coronas Club (2) - click to enlarge" height="56" width="459">
</a>
<br /><!-- after the image break -->
</div>
<div style="clear:both;padding-right:24px;width:402px">
<a data-lightbox="cigar-237" href="images\Troya_Coronas_Club_cigar_orig_3.jpg">
<img class="box" src="images\Troya_Coronas_Club_cigar_full_3.jpg" alt="Coronas Club (2) - click to enlarge" title="Coronas Club (2) - click to enlarge" height="49" width="402">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band C</td></tr><tr><td class="tubenotehead">Tubes:</td><td class="tubenote">Plastic tubes.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 3 cigars in plastic tubes.<br />Dress Box of 20 cigars in plastic tubes.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2005 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Camelias">Troya</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Camelias</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">30 x 150<span class="inches" id="i1">&nbsp;(5.9")</span></td><td class="cigarDetailHead" style="width:21%">Slim Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:459px">
<a data-lightbox="cigar-236" href="images\Troya_Camelias_cigar_orig.jpg">
<img class="box" src="images\Troya_Camelias_cigar_full.jpg" alt="Camelias - click to enlarge" title="Camelias - click to enlarge" height="34" width="459">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued late-1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_Club_(1)">Troya</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas Club (1)</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i2">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:379px">
<a data-lightbox="cigar-1522" href="images\Troya_Coronas_Club_(1)_cigar_orig.jpg">
<img class="box" src="images\Troya_Coronas_Club_(1)_cigar_full.jpg" alt="Coronas Club (1) - click to enlarge" title="Coronas Club (1) - click to enlarge" height="61" width="379">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in aluminium tubes.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 2005. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c1980 was handmade.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Universales">Troya</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Universales</td><td class="cigarDetailHead-i" style="width:30%">Universales</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 134<span class="inches" id="i3">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:412px">
<a data-lightbox="cigar-238" href="images\Troya_Universales_cigar_orig_0.jpg">
<img class="box" src="images\Troya_Universales_cigar_full_0.jpg" alt="Universales - click to enlarge" title="Universales - click to enlarge" height="48" width="412">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars in cellophane.<br />Dress Box of 25 cigars in cellophane.<br />Cardboard Pack of 5 cigars.<br />Cardboard Pack of 3 cigars.<br />Cardboard Pack of 3 cigars in cellophane.<br />Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 2005. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c1980 was handmade.</td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
