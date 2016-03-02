


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
var inchLimit = 10;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=12" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT88c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTA7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFhS48dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQgY2xhc3M9ImNlbGwtQyI+PGJyIC8+PHNwYW4gY2xhc3M9ImhlYWQxIj5EaXBsb23DoXRpY29zPC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfbG9nb19zbWFsbC5qcGciIGhlaWdodD0iMTYwIiBhbHQ9IkRpcGxvbcOhdGljb3MiIHRpdGxlPSJEaXBsb23DoXRpY29zIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjIiPkRpcGxvbcOhdGljb3MgTm8uMjwvb3B0aW9uPgk8L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMyIgbmFtZT0iRDMiIGNsYXNzPSJkcm9wZG93biI+CTxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjEiPkRpcGxvbcOhdGljb3MgTm8uMTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjMiPkRpcGxvbcOhdGljb3MgTm8uMzwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjQiPkRpcGxvbcOhdGljb3MgTm8uNDwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjUiPkRpcGxvbcOhdGljb3MgTm8uNTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjYiPkRpcGxvbcOhdGljb3MgTm8uNjwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEaXBsb218YXRpY29zX05vLjciPkRpcGxvbcOhdGljb3MgTm8uNzwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDIiIG5hbWU9IkQyIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPlNwZWNpYWwgUmVsZWFzZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzM0OV9FZGljaXxvbl9SZWdpb25hbF9Fc3BhfG5hIj4yMDEyIC0gRWRpY2nDs24gUmVnaW9uYWwgRXNwYcOxYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMzOTZfRWRpY2l8b25fUmVnaW9uYWxfQXNpYV9QYWNpZmljbyI+MjAxNCAtIEVkaWNpw7NuIFJlZ2lvbmFsIEFzaWEgUGFjaWZpY288L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMTQyOV9FZGljaXxvbl9SZWdpb25hbF9DYW5hZHxhIj4yMDE1IC0gRWRpY2nDs24gUmVnaW9uYWwgQ2FuYWTDoTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMxNDI1X0VkaWNpfG9uX1JlZ2lvbmFsX0N1YmEiPjIwMTUgLSBFZGljacOzbiBSZWdpb25hbCBDdWJhPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5EaXBsb23DoXRpY29zIGlzIGEgY3VycmVudCBwb3N0LXJldm9sdXRpb24gYnJhbmQsIGVzdGFibGlzaGVkIGluIDE5NjYuPEJSIC8+PEJSIC8+PGI+R2VuZXJhbGx5PC9iPjxiciAvPkl0IGlzIGNsYXNzaWZpZWQgYnkgSGFiYW5vcyBTQSBhcyBhIExvY2FsIGJyYW5kLCBhbmQgaGFzIGEgbWlub3IgbWFya2V0IHNoYXJlLjxCUiAvPlRoZSByYW5nZSBjb21wcmlzZXMgbWVkaXVtIHRvIGZ1bGwgc3RyZW5ndGggY2lnYXJzLCB1c2luZyB0b2JhY2NvIGZyb20gdGhlIHByZW1pdW0gPGk+VnVlbHRhIEFiYWpvPC9pPiByZWdpb24uPEJSIC8+PEJSIC8+PGI+UmVsZWFzZXM8L2I+PEJSIC8+SW4gMTk2NiBmaXZlIGNpZ2FycyB3ZXJlIGludHJvZHVjZWQsIGlkZW50aWNhbCBpbiBzaXplIHRvIHRoZSBNb250ZWNyaXN0byBOb3MuMSB0byA1LjxiciAvPkluIDE5NzYgdHdvIGZ1cnRoZXIgc2l6ZXMgd2VyZSBpbnRyb2R1Y2VkLCBjb3JyZXNwb25kaW5nIHRvIHRoZSBNb250ZWNyaXN0byBFc3BlY2lhbCAmIEVzcGVjaWFsIE5vLjIuPGJyIC8+U3BlY2lhbCByZWxlYXNlcyBjb21tZW5jZWQgaW4gMjAxMi48YnIgLz48YnIgLz48Yj5IaXN0b3J5PC9iPjxCUiAvPkRpcGxvbcOhdGljb3MgY2lnYXJzIHdlcmUgb3JpZ2luYWxseSBwYWNrYWdlZCBpbiBTZW1pIEJvaXRlIE5hdHVyZSAoU0JOKSBib3hlcy4gIFN0YW5kYXJkIGRyZXNzIGJveGVzIHdlcmUgaW50cm9kdWNlZCBjMTk3NS48QlIgLz5JdCB3YXMgb3JpZ2luYWxseSBpbnRlbmRlZCB0byBiZSBhIGNoZWFwZXIgdmVyc2lvbiBvZiB0aGUgcG9wdWxhciBNb250ZWNyaXN0byBicmFuZC48QlIgLz48QlIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTEyIj5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xEaXBsb23DoXRpY29zX2JhbmRfMTY1NDk2Nzk0OGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19iYW5kXzE2NTQ5Njc5NDhzbWFsbC5qcGciIGhlaWdodD0iMTEzIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQTwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5Ob3QgZW1ib3NzZWQ8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+MTk2NiBvbiAtLSBDdXJyZW50PC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTE2cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xEaXBsb23DoXRpY29zX3BhY2thZ2luZ18yMjUxZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgRGlwbG9tw6F0aWNvcyBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIERpcGxvbcOhdGljb3MgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xEaXBsb23DoXRpY29zX3BhY2thZ2luZ18yMjUxc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjExNiIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5EaXBsb23DoXRpY29zIE5vLjI8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1IC0gMTk5Nzwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxNzVweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXERpcGxvbcOhdGljb3NfcGFja2FnaW5nXzQ5MzVmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBEaXBsb23DoXRpY29zIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgRGlwbG9tw6F0aWNvcyBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfcGFja2FnaW5nXzQ5MzVzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTc1IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkRpcGxvbcOhdGljb3MgTm8uNTwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5TQk4yNSAtIGVhcmx5IDE5NzBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEzMXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19wYWNrYWdpbmdfMzIyMWZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIERpcGxvbcOhdGljb3MgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBEaXBsb23DoXRpY29zIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19wYWNrYWdpbmdfMzIyMXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMzEiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+RGlwbG9tw6F0aWNvcyBOby43PC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNSAtIGVhcmx5LTE5ODBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjg1cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xEaXBsb23DoXRpY29zX3BhY2thZ2luZ180MTEwZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgRGlwbG9tw6F0aWNvcyBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIERpcGxvbcOhdGljb3MgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xEaXBsb23DoXRpY29zX3BhY2thZ2luZ180MTEwc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9Ijg1IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkRpcGxvbcOhdGljb3MgTm8uNzwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5TQk4yNSAtIDE5ODg8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPjwvdGFibGU+PGJyIC8+PC90ZD48L3RyPg0KZGQCAQ8PFgIfAQX+oQE8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5DdXJyZW50IFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRGlwbG9tfGF0aWNvc19Oby4yIj5EaXBsb23DoXRpY29zPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRpcGxvbcOhdGljb3MgTm8uMjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjUyIHggMTU2PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkwIj4mbmJzcDsoNi4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UHlyYW1pZDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDY4cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItODUiIGhyZWY9ImltYWdlc1xEaXBsb23DoXRpY29zX0RpcGxvbcOhdGljb3NfTm8uMl9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4yX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkRpcGxvbcOhdGljb3MgTm8uMiAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJEaXBsb23DoXRpY29zIE5vLjIgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjYxIiB3aWR0aD0iNDY4Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIGxhdGUtMTk3MCdzKS48YnIgLz48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMTAgY2lnYXJzIChyZWxlYXNlZCAxOTY2LCBkaXNjb250aW51ZWQgbGF0ZS0xOTcwcykuPGJyIC8+U2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDI1IGNpZ2FycyAocmVsZWFzZWQgMTk2NiwgZGlzY29udGludWVkIGxhdGUtMTk3MHMpLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTY2IHJlbGVhc2UuIEN1cnJlbnQuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJEaXBsb218YXRpY29zX05vLjEiPkRpcGxvbcOhdGljb3M8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RGlwbG9tw6F0aWNvcyBOby4xPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5DZXJ2YW50ZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MiB4IDE2NTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDYuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbnNkYWxlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0OTVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04OCIgaHJlZj0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4xX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjFfY2lnYXJfZnVsbC5qcGciIGFsdD0iRGlwbG9tw6F0aWNvcyBOby4xIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkRpcGxvbcOhdGljb3MgTm8uMSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTEiIHdpZHRoPSI0OTUiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyAocmVsZWFzZWQgbGF0ZS0xOTcwcywgZGlzY29udGludWVkIDIwMDYpLjxiciAvPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5NjYsIGRpc2NvbnRpbnVlZCBsYXRlLTE5NzBzKS48YnIgLz5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMTAgY2lnYXJzIChyZWxlYXNlZCAxOTY2LCBkaXNjb250aW51ZWQgbGF0ZS0xOTcwcykuPGJyIC8+SHVtaWRvciBvZiAxMDAgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTY2IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDA2LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRGlwbG9tfGF0aWNvc19Oby4zIj5EaXBsb23DoXRpY29zPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRpcGxvbcOhdGljb3MgTm8uMzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTQyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjZweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04OSIgaHJlZj0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby4zX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjNfY2lnYXJfZnVsbC5qcGciIGFsdD0iRGlwbG9tw6F0aWNvcyBOby4zIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkRpcGxvbcOhdGljb3MgTm8uMyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTMiIHdpZHRoPSI0MjYiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyAocmVsZWFzZWQgbGF0ZS0xOTcwcywgZGlzY29udGludWVkIDIwMDYpLjxiciAvPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5NjYsIGRpc2NvbnRpbnVlZCBsYXRlLTE5NzBzKS48YnIgLz5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMTAgY2lnYXJzIChyZWxlYXNlZCAxOTY2LCBkaXNjb250aW51ZWQgbGF0ZS0xOTcwcykuPGJyIC8+SHVtaWRvciBvZiAxMDAgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTY2IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDA2LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRGlwbG9tfGF0aWNvc19Oby40Ij5EaXBsb23DoXRpY29zPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRpcGxvbcOhdGljb3MgTm8uNDwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTI5PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkzIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozODdweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04NiIgaHJlZj0iaW1hZ2VzXERpcGxvbcOhdGljb3NfRGlwbG9tw6F0aWNvc19Oby40X2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjRfY2lnYXJfZnVsbC5qcGciIGFsdD0iRGlwbG9tw6F0aWNvcyBOby40IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkRpcGxvbcOhdGljb3MgTm8uNCAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTMiIHdpZHRoPSIzODciPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyAocmVsZWFzZWQgbGF0ZS0xOTcwcywgZGlzY29udGludWVkIDIwMTApLjxiciAvPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5NjYsIGRpc2NvbnRpbnVlZCBsYXRlLTE5NzBzKS48YnIgLz5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMTAgY2lnYXJzIChyZWxlYXNlZCAxOTY2LCBkaXNjb250aW51ZWQgbGF0ZS0xOTcwcykuPGJyIC8+SHVtaWRvciBvZiAxMDAgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTY2IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDEwLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRGlwbG9tfGF0aWNvc19Oby41Ij5EaXBsb23DoXRpY29zPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRpcGxvbcOhdGljb3MgTm8uNTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+UGVybGFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMDI8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTQiPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMwNnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTg3IiBocmVmPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjVfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xEaXBsb23DoXRpY29zX0RpcGxvbcOhdGljb3NfTm8uNV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJEaXBsb23DoXRpY29zIE5vLjUgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRGlwbG9tw6F0aWNvcyBOby41IC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0NiIgd2lkdGg9IjMwNiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIChyZWxlYXNlZCBsYXRlLTE5NzBzLCBkaXNjb250aW51ZWQgMjAxMCkuPGJyIC8+U2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDEwIGNpZ2FycyAocmVsZWFzZWQgMTk2NiwgZGlzY29udGludWVkIGxhdGUtMTk3MHMpLjxiciAvPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5NjYsIGRpc2NvbnRpbnVlZCBsYXRlLTE5NzBzKS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk2NiByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAxMC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkRpcGxvbXxhdGljb3NfTm8uNiI+RGlwbG9tw6F0aWNvczwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5EaXBsb23DoXRpY29zIE5vLjY8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkxhZ3VpdG8gTm8uMTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM4IHggMTkyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk1Ij4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+TG9uZyBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NTc2cHgiPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xEaXBsb23DoXRpY29zX0RpcGxvbcOhdGljb3NfTm8uNl9jaWdhcl9mdWxsXzEuanBnIiBhbHQ9IkRpcGxvbcOhdGljb3MgTm8uNiIgdGl0bGU9IkRpcGxvbcOhdGljb3MgTm8uNiIgaGVpZ2h0PSI0NSIgd2lkdGg9IjU3NiI+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIChyZWxlYXNlZCBsYXRlLTE5NzBzLCBkaXNjb250aW51ZWQgZWFybHktMTk4MHMpLjxiciAvPlNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5NzYsIGRpc2NvbnRpbnVlZCBsYXRlLTE5NzBzKS48YnIgLz5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMTAgY2lnYXJzIChyZWxlYXNlZCAxOTc2LCBkaXNjb250aW51ZWQgbGF0ZS0xOTcwcykuPGJyIC8+SHVtaWRvciBvZiAxMDAgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTc2IHJlbGVhc2UuIERpc2NvbnRpbnVlZCBlYXJseS0xOTgwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkRpcGxvbXxhdGljb3NfTm8uNyI+RGlwbG9tw6F0aWNvczwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5EaXBsb23DoXRpY29zIE5vLjc8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkxhZ3VpdG8gTm8uMjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM4IHggMTUyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk2Ij4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQ1NnB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19EaXBsb23DoXRpY29zX05vLjdfY2lnYXJfZnVsbF8xLmpwZyIgYWx0PSJEaXBsb23DoXRpY29zIE5vLjciIHRpdGxlPSJEaXBsb23DoXRpY29zIE5vLjciIGhlaWdodD0iNDciIHdpZHRoPSI0NTYiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyAocmVsZWFzZWQgbGF0ZS0xOTcwcywgZGlzY29udGludWVkIGVhcmx5LTE5ODBzKS48YnIgLz5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzIChyZWxlYXNlZCAxOTc2LCBkaXNjb250aW51ZWQgbGF0ZS0xOTcwcykuPGJyIC8+U2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDEwIGNpZ2FycyAocmVsZWFzZWQgMTk3NiwgZGlzY29udGludWVkIGxhdGUtMTk3MHMpLjxiciAvPkh1bWlkb3Igb2YgMTAwIGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk3NiByZWxlYXNlLiBEaXNjb250aW51ZWQgbGF0ZS0xOTgwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPlNwZWNpYWwgUmVsZWFzZXM8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIzNDlfRWRpY2l8b25fUmVnaW9uYWxfRXNwYXxuYSIgY2xhc3M9ImVudHJ5aGVhZCI+RGlwbG9tw6F0aWNvczwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjIwMTIgLSBFZGljacOzbiBSZWdpb25hbCBFc3Bhw7FhIDxzcGFuIGNsYXNzPSJzcnN1YiI+UmVnaW9uYWwgRWRpdGlvbiBTZXJpZXM8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db2xsZWNjaW9uIFByaXZhZGE8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlBldGl0IFJvYnVzdG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTAgeCAxMDI8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTciPiZuYnNwOyg0LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBSb2J1c3RvPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMDZweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zNDkiIGhyZWY9ImltYWdlc1xEaXBsb23DoXRpY29zX0NvbGxlY2Npb25fUHJpdmFkYV9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcRGlwbG9tw6F0aWNvc19Db2xsZWNjaW9uX1ByaXZhZGFfY2lnYXJfZnVsbC5qcGciIGFsdD0iQ29sbGVjY2lvbiBQcml2YWRhIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvbGxlY2Npb24gUHJpdmFkYSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjAiIHdpZHRoPSIzMDYiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5QZXRpdGUgUm9idXN0byAtIGEgbmV3IHNwZWNpYWwgcmVsZWFzZSBzaXplLjwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MjY3cHgiPg0KPGRpdiBzdHlsZT0iaGVpZ2h0Ojc3cHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDt3aWR0aDoxcHgiPjwvZGl2PjwhLS12LWFsaWduIHB1c2ggZGl2LS0+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM0OSIgaHJlZj0iaW1hZ2VzXDIwMTJfLV9FZGljacOzbl9SZWdpb25hbF9Fc3Bhw7FhX2Z1bGxfMy5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDEyXy1fRWRpY2nDs25fUmVnaW9uYWxfRXNwYcOxYV9zbWFsbF8zLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSI3MyIgd2lkdGg9IjI2NyIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxODdweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM0OSIgaHJlZj0iaW1hZ2VzXERpcGxvbcOhdGljb3NfQ29sbGVjY2lvbl9Qcml2YWRhX2Z1bGwuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcRGlwbG9tw6F0aWNvc19Db2xsZWNjaW9uX1ByaXZhZGFfc21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE4NyIgLz4NCjwvYT4NCjwvZGl2PjxiciAvPjwhLS0gZW5kIG9mIGVuZCBicmVhayAtLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoIj48c3BhbiBjbGFzcz0iY29tbWVudHMiPg0KUmVnaW9uYWwgRWRpdGlvbiBTcGFpbjwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIEJhbmQgQSwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIFNwYWluIChFc3Bhw7FhKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+TnVtYmVyZWQgU2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDEwIGNpZ2FycyAoNSwwMDAgbWFkZSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxMiByZWxlYXNlLiA8L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjM5Nl9FZGljaXxvbl9SZWdpb25hbF9Bc2lhX1BhY2lmaWNvIiBjbGFzcz0iZW50cnloZWFkIj5EaXBsb23DoXRpY29zPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAxNCAtIEVkaWNpw7NuIFJlZ2lvbmFsIEFzaWEgUGFjaWZpY28gPHNwYW4gY2xhc3M9InNyc3ViIj5SZWdpb25hbCBFZGl0aW9uIFNlcmllczwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkJ1c2hpZG88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk5yby4xMDk8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41MCB4IDE4NDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpOCI+Jm5ic3A7KDcuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkRvdWJsZSBSb2J1c3RvPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1NTJweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zOTYiIGhyZWY9ImltYWdlc1xEaXBsb23DoXRpY29zX0J1c2hpZG9fY2lnYXJfb3JpZ18xLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcRGlwbG9tw6F0aWNvc19CdXNoaWRvX2NpZ2FyX2Z1bGxfMS5qcGciIGFsdD0iQnVzaGlkbyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJCdXNoaWRvIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2MyIgd2lkdGg9IjU1MiI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPk5yby4gMTA5IC0gYSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemUuPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMDBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM5NiIgaHJlZj0iaW1hZ2VzXDIwMTRfLV9FZGljacOzbl9SZWdpb25hbF9Bc2lhX1BhY2lmaWNvX2Z1bGxfMi5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDE0Xy1fRWRpY2nDs25fUmVnaW9uYWxfQXNpYV9QYWNpZmljb19zbWFsbF8yLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMDAiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MjAwcHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zOTYiIGhyZWY9ImltYWdlc1wyMDE0Xy1fRWRpY2nDs25fUmVnaW9uYWxfQXNpYV9QYWNpZmljb19mdWxsXzEuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMjAxNF8tX0VkaWNpw7NuX1JlZ2lvbmFsX0FzaWFfUGFjaWZpY29fc21hbGxfMS5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjAwIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIwMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMzk2IiBocmVmPSJpbWFnZXNcMjAxNF8tX0VkaWNpw7NuX1JlZ2lvbmFsX0FzaWFfUGFjaWZpY29fZnVsbF8wLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMTRfLV9FZGljacOzbl9SZWdpb25hbF9Bc2lhX1BhY2lmaWNvX3NtYWxsXzAuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjIwMCIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMDBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM5NiIgaHJlZj0iaW1hZ2VzXERpcGxvbcOhdGljb3NfQnVzaGlkb19mdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXERpcGxvbcOhdGljb3NfQnVzaGlkb19zbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjAwIiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQSB3aXRoIGEgUmVnaW9uYWwgRWRpdGlvbiBiYW5kIGZvciBBc2lhIFBhY2lmaWMgKEFzaWEgUGFjaWZpY28pLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBWYXJuaXNoZWQgQm/DrnRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzICgyLDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDE0IHJlbGVhc2UuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5SZWxlYXNlZCBBcHJpbCAyMDE1LjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMTQyOV9FZGljaXxvbl9SZWdpb25hbF9DYW5hZHxhIiBjbGFzcz0iZW50cnloZWFkIj5EaXBsb23DoXRpY29zPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAxNSAtIEVkaWNpw7NuIFJlZ2lvbmFsIENhbmFkw6EgPHNwYW4gY2xhc3M9InNyc3ViIj5SZWdpb25hbCBFZGl0aW9uIFNlcmllczwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkVsIEFtYmFqYWRvcjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+RWRtdW5kbzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjUyIHggMTM1PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk5Ij4mbmJzcDsoNS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Um9idXN0bzwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDA1cHgiPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXERpcGxvbcOhdGljb3NfRWxfQW1iYWphZG9yX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkVsIEFtYmFqYWRvciIgdGl0bGU9IkVsIEFtYmFqYWRvciIgaGVpZ2h0PSI2MiIgd2lkdGg9IjQwNSI+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkVkbXVuZG8gLSBhIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZS48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlVua25vd24uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPk51bWJlcmVkIERyZXNzIEJveCBvZiAxMCBjaWdhcnMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxNSByZWxlYXNlLiBOb3QgeWV0IGF2YWlsYWJsZS4gPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIxNDI1X0VkaWNpfG9uX1JlZ2lvbmFsX0N1YmEiIGNsYXNzPSJlbnRyeWhlYWQiPkRpcGxvbcOhdGljb3M8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDE1IC0gRWRpY2nDs24gUmVnaW9uYWwgQ3ViYSA8c3BhbiBjbGFzcz0ic3JzdWIiPlJlZ2lvbmFsIEVkaXRpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RXhjZWxlbmNpYTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Um9idXN0b3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41MCB4IDEyNDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTAiPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Sb2J1c3RvPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNzJweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcRGlwbG9tw6F0aWNvc19FeGNlbGVuY2lhX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkV4Y2VsZW5jaWEiIHRpdGxlPSJFeGNlbGVuY2lhIiBoZWlnaHQ9IjYwIiB3aWR0aD0iMzcyIj4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+Um9idXN0b3MgLSBhIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZS48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIEJhbmQgQSwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIEN1YmEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPk51bWJlcmVkIERyZXNzIEJveCBvZiAxMCBjaWdhcnMgKDcsMDAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMTUgcmVsZWFzZS4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlJlbGVhc2VkIGxhdGUtMjAxNS48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+ZGRk9byoEBXpXFWxQA8TLMA+XvvMrTssP9SNaXjqJ1/p8XQ=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d12 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Diplomáticos</span><br /><br /><a data-lightbox="brand" href="images\Diplomáticos_logo_full.jpg"><img class="box" src="images\Diplomáticos_logo_small.jpg" height="160" alt="Diplomáticos" title="Diplomáticos"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Diplom|aticos_No.2">Diplomáticos No.2</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Diplom|aticos_No.1">Diplomáticos No.1</option><option value="#Diplom|aticos_No.3">Diplomáticos No.3</option><option value="#Diplom|aticos_No.4">Diplomáticos No.4</option><option value="#Diplom|aticos_No.5">Diplomáticos No.5</option><option value="#Diplom|aticos_No.6">Diplomáticos No.6</option><option value="#Diplom|aticos_No.7">Diplomáticos No.7</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#349_Edici|on_Regional_Espa|na">2012 - Edición Regional España</option><option value="#396_Edici|on_Regional_Asia_Pacifico">2014 - Edición Regional Asia Pacifico</option><option value="#1429_Edici|on_Regional_Canad|a">2015 - Edición Regional Canadá</option><option value="#1425_Edici|on_Regional_Cuba">2015 - Edición Regional Cuba</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Diplomáticos is a current post-revolution brand, established in 1966.<BR /><BR /><b>Generally</b><br />It is classified by Habanos SA as a Local brand, and has a minor market share.<BR />The range comprises medium to full strength cigars, using tobacco from the premium <i>Vuelta Abajo</i> region.<BR /><BR /><b>Releases</b><BR />In 1966 five cigars were introduced, identical in size to the Montecristo Nos.1 to 5.<br />In 1976 two further sizes were introduced, corresponding to the Montecristo Especial & Especial No.2.<br />Special releases commenced in 2012.<br /><br /><b>History</b><BR />Diplomáticos cigars were originally packaged in Semi Boite Nature (SBN) boxes.  Standard dress boxes were introduced c1975.<BR />It was originally intended to be a cheaper version of the popular Montecristo brand.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=12">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Diplomáticos_band_1654967948full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Diplomáticos_band_1654967948small.jpg" height="113" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">1966 on -- Current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:116px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Diplomáticos_packaging_2251full.jpg">
<img class="box" alt="Typical Diplomáticos packaging" title="Typical Diplomáticos packaging" src="images\Diplomáticos_packaging_2251small.jpg" height="150" width="116"  /></a>
</td></tr><tr><td><span class="bandhead">Diplomáticos No.2</span><br /><span class="band-caption">B25 - 1997</span><br /></td></tr></table><table align="left" width="175" style="width:175px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Diplomáticos_packaging_4935full.jpg">
<img class="box" alt="Typical Diplomáticos packaging" title="Typical Diplomáticos packaging" src="images\Diplomáticos_packaging_4935small.jpg" height="150" width="175"  /></a>
</td></tr><tr><td><span class="bandhead">Diplomáticos No.5</span><br /><span class="band-caption">SBN25 - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:131px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Diplomáticos_packaging_3221full.jpg">
<img class="box" alt="Typical Diplomáticos packaging" title="Typical Diplomáticos packaging" src="images\Diplomáticos_packaging_3221small.jpg" height="150" width="131"  /></a>
</td></tr><tr><td><span class="bandhead">Diplomáticos No.7</span><br /><span class="band-caption">B25 - early-1980s</span><br /></td></tr></table><table align="left" width="175" style="width:85px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Diplomáticos_packaging_4110full.jpg">
<img class="box" alt="Typical Diplomáticos packaging" title="Typical Diplomáticos packaging" src="images\Diplomáticos_packaging_4110small.jpg" height="150" width="85"  /></a>
</td></tr><tr><td><span class="bandhead">Diplomáticos No.7</span><br /><span class="band-caption">SBN25 - 1988</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.2">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.2</td><td class="cigarDetailHead-i" style="width:30%">Pirámides</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 156<span class="inches" id="i0">&nbsp;(6.1")</span></td><td class="cigarDetailHead" style="width:21%">Pyramid</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:468px">
<a data-lightbox="cigar-85" href="images\Diplomáticos_Diplomáticos_No.2_cigar_orig.jpg">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.2_cigar_full.jpg" alt="Diplomáticos No.2 - click to enlarge" title="Diplomáticos No.2 - click to enlarge" height="61" width="468">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars (released late-1970's).<br /><span class="pack-disc">Semi Boite Nature Box of 10 cigars (released 1966, discontinued late-1970s).<br />Semi Boite Nature Box of 25 cigars (released 1966, discontinued late-1970s).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1966 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.1">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.1</td><td class="cigarDetailHead-i" style="width:30%">Cervantes</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 165<span class="inches" id="i1">&nbsp;(6.5")</span></td><td class="cigarDetailHead" style="width:21%">Lonsdale</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:495px">
<a data-lightbox="cigar-88" href="images\Diplomáticos_Diplomáticos_No.1_cigar_orig.jpg">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.1_cigar_full.jpg" alt="Diplomáticos No.1 - click to enlarge" title="Diplomáticos No.1 - click to enlarge" height="51" width="495">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars (released late-1970s, discontinued 2006).<br />Semi Boite Nature Box of 25 cigars (released 1966, discontinued late-1970s).<br />Semi Boite Nature Box of 10 cigars (released 1966, discontinued late-1970s).<br />Humidor of 100 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1966 release. Discontinued 2006. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.3">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.3</td><td class="cigarDetailHead-i" style="width:30%">Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i2">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:426px">
<a data-lightbox="cigar-89" href="images\Diplomáticos_Diplomáticos_No.3_cigar_orig.jpg">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.3_cigar_full.jpg" alt="Diplomáticos No.3 - click to enlarge" title="Diplomáticos No.3 - click to enlarge" height="53" width="426">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars (released late-1970s, discontinued 2006).<br />Semi Boite Nature Box of 25 cigars (released 1966, discontinued late-1970s).<br />Semi Boite Nature Box of 10 cigars (released 1966, discontinued late-1970s).<br />Humidor of 100 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1966 release. Discontinued 2006. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.4">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.4</td><td class="cigarDetailHead-i" style="width:30%">Marevas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i3">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:387px">
<a data-lightbox="cigar-86" href="images\Diplomáticos_Diplomáticos_No.4_cigar_orig.jpg">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.4_cigar_full.jpg" alt="Diplomáticos No.4 - click to enlarge" title="Diplomáticos No.4 - click to enlarge" height="53" width="387">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars (released late-1970s, discontinued 2010).<br />Semi Boite Nature Box of 25 cigars (released 1966, discontinued late-1970s).<br />Semi Boite Nature Box of 10 cigars (released 1966, discontinued late-1970s).<br />Humidor of 100 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1966 release. Discontinued 2010. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.5">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.5</td><td class="cigarDetailHead-i" style="width:30%">Perlas</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 102<span class="inches" id="i4">&nbsp;(4.0")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:306px">
<a data-lightbox="cigar-87" href="images\Diplomáticos_Diplomáticos_No.5_cigar_orig.jpg">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.5_cigar_full.jpg" alt="Diplomáticos No.5 - click to enlarge" title="Diplomáticos No.5 - click to enlarge" height="46" width="306">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars (released late-1970s, discontinued 2010).<br />Semi Boite Nature Box of 10 cigars (released 1966, discontinued late-1970s).<br />Semi Boite Nature Box of 25 cigars (released 1966, discontinued late-1970s).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1966 release. Discontinued 2010. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.6">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.6</td><td class="cigarDetailHead-i" style="width:30%">Laguito No.1</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 192<span class="inches" id="i5">&nbsp;(7.6")</span></td><td class="cigarDetailHead" style="width:21%">Long Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:576px">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.6_cigar_full_1.jpg" alt="Diplomáticos No.6" title="Diplomáticos No.6" height="45" width="576">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars (released late-1970s, discontinued early-1980s).<br />Semi Boite Nature Box of 25 cigars (released 1976, discontinued late-1970s).<br />Semi Boite Nature Box of 10 cigars (released 1976, discontinued late-1970s).<br />Humidor of 100 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1976 release. Discontinued early-1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Diplom|aticos_No.7">Diplomáticos</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Diplomáticos No.7</td><td class="cigarDetailHead-i" style="width:30%">Laguito No.2</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 152<span class="inches" id="i6">&nbsp;(6.0")</span></td><td class="cigarDetailHead" style="width:21%">Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:456px">
<img class="box" src="images\Diplomáticos_Diplomáticos_No.7_cigar_full_1.jpg" alt="Diplomáticos No.7" title="Diplomáticos No.7" height="47" width="456">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars (released late-1970s, discontinued early-1980s).<br />Semi Boite Nature Box of 25 cigars (released 1976, discontinued late-1970s).<br />Semi Boite Nature Box of 10 cigars (released 1976, discontinued late-1970s).<br />Humidor of 100 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1976 release. Discontinued late-1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="349_Edici|on_Regional_Espa|na" class="entryhead">Diplomáticos</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2012 - Edición Regional España <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Colleccion Privada</td><td class="cigarDetailHead-i" style="width:30%">Petit Robustos</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 102<span class="inches" id="i7">&nbsp;(4.0")</span></td><td class="cigarDetailHead" style="width:21%">Petit Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:306px">
<a  data-lightbox="special-349" href="images\Diplomáticos_Colleccion_Privada_cigar_orig.jpg">
<img class="box" src = "images\Diplomáticos_Colleccion_Privada_cigar_full.jpg" alt="Colleccion Privada - click to enlarge" title="Colleccion Privada - click to enlarge" height="60" width="306">
</a>
<span class="comments">Petite Robusto - a new special release size.</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:267px">
<div style="height:77px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-349" href="images\2012_-_Edición_Regional_España_full_3.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2012_-_Edición_Regional_España_small_3.jpg" class="box" height="73" width="267" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:187px">
<a data-lightbox="special-349" href="images\Diplomáticos_Colleccion_Privada_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Diplomáticos_Colleccion_Privada_small.jpg" class="box" height="150" width="187" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition Spain</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard Band A, with Regional Edition band for Spain (España).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 10 cigars (5,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2012 release. </td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="396_Edici|on_Regional_Asia_Pacifico" class="entryhead">Diplomáticos</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2014 - Edición Regional Asia Pacifico <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Bushido</td><td class="cigarDetailHead-i" style="width:30%">Nro.109</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 184<span class="inches" id="i8">&nbsp;(7.2")</span></td><td class="cigarDetailHead" style="width:21%">Double Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:552px">
<a  data-lightbox="special-396" href="images\Diplomáticos_Bushido_cigar_orig_1.jpg">
<img class="box" src = "images\Diplomáticos_Bushido_cigar_full_1.jpg" alt="Bushido - click to enlarge" title="Bushido - click to enlarge" height="63" width="552">
</a>
<span class="comments">Nro. 109 - a new special release size.</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:200px">
<a data-lightbox="special-396" href="images\2014_-_Edición_Regional_Asia_Pacifico_full_2.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2014_-_Edición_Regional_Asia_Pacifico_small_2.jpg" class="box" height="150" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:200px">
<a data-lightbox="special-396" href="images\2014_-_Edición_Regional_Asia_Pacifico_full_1.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2014_-_Edición_Regional_Asia_Pacifico_small_1.jpg" class="box" height="150" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:200px">
<a data-lightbox="special-396" href="images\2014_-_Edición_Regional_Asia_Pacifico_full_0.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2014_-_Edición_Regional_Asia_Pacifico_small_0.jpg" class="box" height="150" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:200px">
<a data-lightbox="special-396" href="images\Diplomáticos_Bushido_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Diplomáticos_Bushido_small.jpg" class="box" height="150" width="200" />
</a>
</div><br /><!-- end of end break --><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A with a Regional Edition band for Asia Pacific (Asia Pacifico).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Varnished Boîte Nature Box of 25 cigars (2,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2014 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released April 2015.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="1429_Edici|on_Regional_Canad|a" class="entryhead">Diplomáticos</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2015 - Edición Regional Canadá <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">El Ambajador</td><td class="cigarDetailHead-i" style="width:30%">Edmundo</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 135<span class="inches" id="i9">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:405px">
<img class="box" src = "images\Diplomáticos_El_Ambajador_cigar_full.jpg" alt="El Ambajador" title="El Ambajador" height="62" width="405">
<span class="comments">Edmundo - a new special release size.</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Unknown.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Dress Box of 10 cigars.</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2015 release. Not yet available. </td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="1425_Edici|on_Regional_Cuba" class="entryhead">Diplomáticos</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2015 - Edición Regional Cuba <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Excelencia</td><td class="cigarDetailHead-i" style="width:30%">Robustos</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 124<span class="inches" id="i10">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:372px">
<img class="box" src = "images\Diplomáticos_Excelencia_cigar_full.jpg" alt="Excelencia" title="Excelencia" height="60" width="372">
<span class="comments">Robustos - a new special release size.</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard Band A, with Regional Edition band for Cuba.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Dress Box of 10 cigars (7,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2015 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released late-2015.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
