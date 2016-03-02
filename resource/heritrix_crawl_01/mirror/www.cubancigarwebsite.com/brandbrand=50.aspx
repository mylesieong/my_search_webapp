


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
var inchLimit = 5;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=50" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gNTsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQX2ITx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPlNhbiBMdWlzIFJleTwvc3Bhbj48YnIgLz48YnIgLz48YSBkYXRhLWxpZ2h0Ym94PSJicmFuZCIgaHJlZj0iaW1hZ2VzXFNhbl9MdWlzX1JleV9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFNhbl9MdWlzX1JleV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iU2FuIEx1aXMgUmV5IiB0aXRsZT0iU2FuIEx1aXMgUmV5Ij48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDMiIG5hbWU9IkQzIiBjbGFzcz0iZHJvcGRvd24iPgk8b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ2h1cmNoaWxscyI+Q2h1cmNoaWxsczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb3JvbmFzIj5Db3JvbmFzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0RvdWJsZV9Db3JvbmFzIj5Eb3VibGUgQ29yb25hczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNMb25zZGFsZXMiPkxvbnNkYWxlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQZXRpdF9Db3JvbmFzIj5QZXRpdCBDb3JvbmFzPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMiIgbmFtZT0iRDIiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+U3BlY2lhbCBSZWxlYXNlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMzY1X0V1cm9wZWFuX1VuaW9uX1Byb2R1Y3Rpb24iPjE5OTAgLSBFdXJvcGVhbiBVbmlvbiBQcm9kdWN0aW9uPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5TYW4gTHVpcyBSZXkgaXMgYSBEaXNjb250aW51ZWQgcG9zdC1yZXZvbHV0aW9uIGJyYW5kLjxCUiAvPjxCUiAvPjxiPkhpc3Rvcnk8L2I+PGJyIC8+U2FuIEx1aXMgUmV5IHdhcyBlc3RhYmxpc2hlZCBpbiB0aGUgbGF0ZSAxOTgwcyBhbmQgd2FzIGRpc2NvbnRpbnVlZCBpbiAyMDAwLiA8YnIgLz5JdCB3YXMgY3JlYXRlZCBiZWNhdXNlIGF0IHRoYXQgdGltZSB0aGUgU2FpbnQgTHVpcyBSZXkgYnJhbmQgY291bGQgb25seSBiZSBleHBvcnRlZCB0byB0aGUgVUssIGFuZCBhIG1hcmtldCBpbiBHZXJtYW55IHdhcyBiZWluZyBzb3VnaHQuIFByb2JhYmx5IG9ubHkgZXhwb3J0ZWQgdG8gR2VybWFueSBhbmQgU3dpdHplcmxhbmQuPGJyIC8+PEJSIC8+PGI+R2VuZXJhbGx5PC9iPjxCUiAvPlVudGlsIGNpcmNhIDIwMDIgdGhlcmUgd2FzIGEgTG9uZyBQYW5ldGVsYSBtYWRlIGluIHRoZSBFVSB1bmRlciB0aGUgYXV0aG9yaXR5IG9mIEhhYmFub3MgU0EsIHVzaW5nIDEwMCUgQ3ViYW4gdG9iYWNjby48YnIgLz5UaGVyZSBpcyBhIG5vbi1DdWJhbiBicmFuZCB3aXRoIHRoZSBzYW1lIG5hbWUuPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD01MCI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcU2FuX0x1aXNfUmV5X2JhbmRfNTY4MTI3OTI2ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xTYW5fTHVpc19SZXlfYmFuZF81NjgxMjc5MjZzbWFsbC5qcGciIGhlaWdodD0iMTMzIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQTwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5Ob3QgZW1ib3NzZWQ8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+TGF0ZSAxOTgwcyB0byAyMDAwIC0tIERpc2NvbnRpbnVlZDwvc3Bhbj4NCjwvZGl2PjwvcD48L2Rpdj48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+DQo8dHI+PHRkIGNsYXNzPSJicmFuZF90YWJsZSI+PHNwYW4gY2xhc3M9ImhlYWQzIj5TdGFuZGFyZCBQcm9kdWN0aW9uIFBhY2thZ2luZzwvc3Bhbj48YnIgLz48YnIgLz4NCjx0YWJsZSBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE0MHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcU2FuX0x1aXNfUmV5X3BhY2thZ2luZ18yNjVmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBTYW4gTHVpcyBSZXkgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBTYW4gTHVpcyBSZXkgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xTYW5fTHVpc19SZXlfcGFja2FnaW5nXzI2NXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNDAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q29yb25hczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMTAgLSBvcGVuIDI8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6OTJweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFNhbl9MdWlzX1JleV9wYWNrYWdpbmdfMjY2ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgU2FuIEx1aXMgUmV5IHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgU2FuIEx1aXMgUmV5IHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcU2FuX0x1aXNfUmV5X3BhY2thZ2luZ18yNjZzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iOTIiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q29yb25hczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMTAgLSBvcGVuIDE8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTI0cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xTYW5fTHVpc19SZXlfcGFja2FnaW5nXzI2MGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIFNhbiBMdWlzIFJleSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIFNhbiBMdWlzIFJleSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFNhbl9MdWlzX1JleV9wYWNrYWdpbmdfMjYwc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEyNCIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5Mb25zZGFsZXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjEwIC0gb3Blbjwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+PC90YWJsZT48YnIgLz48L3RkPjwvdHI+DQpkZAIBDw8WAh8BBZVbPHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSIgc3R5bGU9ImJvcmRlci10b3A6bm9uZSI+PHRib2R5Pjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ2h1cmNoaWxscyI+U2FuIEx1aXMgUmV5PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNodXJjaGlsbHM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkp1bGlldGEgTm8uMjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ3IHggMTc4PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkwIj4mbmJzcDsoNy4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q2h1cmNoaWxsPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1MzRweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0yMjciIGhyZWY9ImltYWdlc1xTYW5fTHVpc19SZXlfQ2h1cmNoaWxsc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFNhbl9MdWlzX1JleV9DaHVyY2hpbGxzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNodXJjaGlsbHMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2h1cmNoaWxscyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTUiIHdpZHRoPSI1MzQiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5Ob25lLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPlNsaWRlIExpZCBCb3ggb2YgNTAgY2lnYXJzLjxiciAvPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODBzIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDAwLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ29yb25hcyI+U2FuIEx1aXMgUmV5PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MiB4IDE0MjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkNvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDI2cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjMxIiBocmVmPSJpbWFnZXNcU2FuX0x1aXNfUmV5X0Nvcm9uYXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xTYW5fTHVpc19SZXlfQ29yb25hc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJDb3JvbmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUyIiB3aWR0aD0iNDI2Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAxMCBjaWdhcnMuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4MHMgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDAuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJEb3VibGVfQ29yb25hcyI+U2FuIEx1aXMgUmV5PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRvdWJsZSBDb3JvbmFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Qcm9taW5lbnRlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ5IHggMTk0PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+RG91YmxlIENvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NTgycHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjMyIiBocmVmPSJpbWFnZXNcU2FuX0x1aXNfUmV5X0RvdWJsZV9Db3JvbmFzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcU2FuX0x1aXNfUmV5X0RvdWJsZV9Db3JvbmFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkRvdWJsZSBDb3JvbmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkRvdWJsZSBDb3JvbmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NiIgd2lkdGg9IjU4MiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5TbGlkZSBMaWQgQm94IG9mIDUwIGNpZ2Fycy48YnIgLz5DYWrDs24gb2YgNTAgY2lnYXJzLjxiciAvPkNhasOzbiBvZiAyNSBjaWdhcnMuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4MHMgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDAuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJMb25zZGFsZXMiPlNhbiBMdWlzIFJleTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Mb25zZGFsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNlcnZhbnRlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTY1PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkzIj4mbmJzcDsoNi41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+TG9uc2RhbGU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQ5NXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTIzMyIgaHJlZj0iaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25zZGFsZXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xTYW5fTHVpc19SZXlfTG9uc2RhbGVzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkxvbnNkYWxlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMb25zZGFsZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUyIiB3aWR0aD0iNDk1Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAxMCBjaWdhcnMuPGJyIC8+Q2Fqw7NuIG9mIDEwMCBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODBzIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDAwLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUGV0aXRfQ29yb25hcyI+U2FuIEx1aXMgUmV5PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlBldGl0IENvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk1hcmV2YXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MiB4IDEyOTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IENvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6Mzg3cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjM0IiBocmVmPSJpbWFnZXNcU2FuX0x1aXNfUmV5X1BldGl0X0Nvcm9uYXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xTYW5fTHVpc19SZXlfUGV0aXRfQ29yb25hc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJQZXRpdCBDb3JvbmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlBldGl0IENvcm9uYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUwIiB3aWR0aD0iMzg3Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAxMCBjaWdhcnMuPGJyIC8+U2xpZGUgTGlkIEJveCBvZiA1MCBjaWdhcnMuPGJyIC8+Q2Fqw7NuIG9mIDEwMCBjaWdhcnMuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4MHMgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDAuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5TcGVjaWFsIFJlbGVhc2VzPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMzY1X0V1cm9wZWFuX1VuaW9uX1Byb2R1Y3Rpb24iIGNsYXNzPSJlbnRyeWhlYWQiPlNhbiBMdWlzIFJleTwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjE5OTAgLSBFdXJvcGVhbiBVbmlvbiBQcm9kdWN0aW9uIDxzcGFuIGNsYXNzPSJzcnN1YiI+T3RoZXIgU3BlY2lhbCBSZWxlYXNlPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+TG9uZyBQYW5ldGVsYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4yOCB4IDE1MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNSI+Jm5ic3A7KDUuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNsaW0gUGFuZXRlbGE8L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQ3NnB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM2NSIgaHJlZj0iaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19jaWdhcl9vcmlnXzEuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xTYW5fTHVpc19SZXlfTG9uZ19QYW5ldGVsYXNfY2lnYXJfZnVsbF8xLmpwZyIgYWx0PSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDMiIHdpZHRoPSI0NzYiPg0KPC9hPg0KPGJyIC8+PCEtLSBiYW5kIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zNjUiIGhyZWY9ImltYWdlc1xTYW5fTHVpc19SZXlfTG9uZ19QYW5ldGVsYXNfYmFuZF9vcmlnXzIuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xTYW5fTHVpc19SZXlfTG9uZ19QYW5ldGVsYXNfYmFuZF9mdWxsXzIuanBnIiBhbHQ9IkxvbmcgUGFuZXRlbGFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkV1cm9wZWFuIFVuaW9uIFByb2R1Y3Rpb24gYmFuZCAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMTIyIiB3aWR0aD0iNDAwIj4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+RXVyb3BlYW4gVW5pb24gUHJvZHVjdGlvbiBCYW5kPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjtjbGVhcjpib3RoO2hlaWdodDoxNTBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo3MnB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM2NSIgaHJlZj0iaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19wYWNrYWdpbmdfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19wYWNrYWdpbmdfZnVsbC5qcGciIGFsdD0iTG9uZyBQYW5ldGVsYXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iTG9uZyBQYW5ldGVsYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjcyIj4NCjwvYT4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7aGVpZ2h0OjE1MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE0OXB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM2NSIgaHJlZj0iaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19wYWNrYWdpbmdfb3JpZ180LmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcU2FuX0x1aXNfUmV5X0xvbmdfUGFuZXRlbGFzX3BhY2thZ2luZ19mdWxsXzQuanBnIiBhbHQ9IkxvbmcgUGFuZXRlbGFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkxvbmcgUGFuZXRlbGFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNDkiPg0KPC9hPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjtoZWlnaHQ6MTUwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6OTdweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zNjUiIGhyZWY9ImltYWdlc1xTYW5fTHVpc19SZXlfTG9uZ19QYW5ldGVsYXNfcGFja2FnaW5nX29yaWdfMy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19wYWNrYWdpbmdfZnVsbF8zLmpwZyIgYWx0PSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMTUwIiB3aWR0aD0iOTciPg0KPC9hPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjtoZWlnaHQ6MTUwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6ODRweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zNjUiIGhyZWY9ImltYWdlc1xTYW5fTHVpc19SZXlfTG9uZ19QYW5ldGVsYXNfcGFja2FnaW5nX29yaWdfMS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19wYWNrYWdpbmdfZnVsbF8xLmpwZyIgYWx0PSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMTUwIiB3aWR0aD0iODQiPg0KPC9hPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjtoZWlnaHQ6MTUwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NThweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zNjUiIGhyZWY9ImltYWdlc1xTYW5fTHVpc19SZXlfTG9uZ19QYW5ldGVsYXNfcGFja2FnaW5nX29yaWdfMi5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFNhbl9MdWlzX1JleV9Mb25nX1BhbmV0ZWxhc19wYWNrYWdpbmdfZnVsbF8yLmpwZyIgYWx0PSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMb25nIFBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMTUwIiB3aWR0aD0iNTgiPg0KPC9hPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlIChzaG9ydCBmaWxsZXIpLiBBcHByb3hpbWF0ZSBzaXplIG9ubHkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TcGVjaWFsIEVVIEJhbmQuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk5MHMgcmVsZWFzZS4gwqBEaXNjb250aW51ZWQgYzIwMDIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPk1hZGUgaW4gYW5kIGZvciB0aGUgRXVyb3BlYW4gVW5pb24gKEVVKXdpdGggMTAwJSBDdWJhbiB0b2JhY2NvLjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT5kZGTHRrYZcsRXQC5EHqGLIohMF4ZhYBjiH0kB2nC5LXB8xQ==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d50 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">San Luis Rey</span><br /><br /><a data-lightbox="brand" href="images\San_Luis_Rey_logo_full.jpg"><img class="box" src="images\San_Luis_Rey_logo_small.jpg" height="160" alt="San Luis Rey" title="San Luis Rey"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Churchills">Churchills</option><option value="#Coronas">Coronas</option><option value="#Double_Coronas">Double Coronas</option><option value="#Lonsdales">Lonsdales</option><option value="#Petit_Coronas">Petit Coronas</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#365_European_Union_Production">1990 - European Union Production</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />San Luis Rey is a Discontinued post-revolution brand.<BR /><BR /><b>History</b><br />San Luis Rey was established in the late 1980s and was discontinued in 2000. <br />It was created because at that time the Saint Luis Rey brand could only be exported to the UK, and a market in Germany was being sought. Probably only exported to Germany and Switzerland.<br /><BR /><b>Generally</b><BR />Until circa 2002 there was a Long Panetela made in the EU under the authority of Habanos SA, using 100% Cuban tobacco.<br />There is a non-Cuban brand with the same name.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=50">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\San_Luis_Rey_band_568127926full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\San_Luis_Rey_band_568127926small.jpg" height="133" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">Late 1980s to 2000 -- Discontinued</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:140px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Luis_Rey_packaging_265full.jpg">
<img class="box" alt="Typical San Luis Rey packaging" title="Typical San Luis Rey packaging" src="images\San_Luis_Rey_packaging_265small.jpg" height="150" width="140"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas</span><br /><span class="band-caption">B10 - open 2</span><br /></td></tr></table><table align="left" width="175" style="width:92px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Luis_Rey_packaging_266full.jpg">
<img class="box" alt="Typical San Luis Rey packaging" title="Typical San Luis Rey packaging" src="images\San_Luis_Rey_packaging_266small.jpg" height="150" width="92"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas</span><br /><span class="band-caption">B10 - open 1</span><br /></td></tr></table><table align="left" width="175" style="width:124px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Luis_Rey_packaging_260full.jpg">
<img class="box" alt="Typical San Luis Rey packaging" title="Typical San Luis Rey packaging" src="images\San_Luis_Rey_packaging_260small.jpg" height="150" width="124"  /></a>
</td></tr><tr><td><span class="bandhead">Lonsdales</span><br /><span class="band-caption">B10 - open</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Churchills">San Luis Rey</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Churchills</td><td class="cigarDetailHead-i" style="width:30%">Julieta No.2</td><td class="cigarDetailHead" style="text-align:center;width:19%">47 x 178<span class="inches" id="i0">&nbsp;(7.0")</span></td><td class="cigarDetailHead" style="width:21%">Churchill</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:534px">
<a data-lightbox="cigar-227" href="images\San_Luis_Rey_Churchills_cigar_orig.jpg">
<img class="box" src="images\San_Luis_Rey_Churchills_cigar_full.jpg" alt="Churchills - click to enlarge" title="Churchills - click to enlarge" height="55" width="534">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">None.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Slide Lid Box of 50 cigars.<br />Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1980s release. Discontinued 2000. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas">San Luis Rey</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas</td><td class="cigarDetailHead-i" style="width:30%">Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i1">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:426px">
<a data-lightbox="cigar-231" href="images\San_Luis_Rey_Coronas_cigar_orig.jpg">
<img class="box" src="images\San_Luis_Rey_Coronas_cigar_full.jpg" alt="Coronas - click to enlarge" title="Coronas - click to enlarge" height="52" width="426">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 10 cigars.<br />Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1980s release. Discontinued 2000. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Double_Coronas">San Luis Rey</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Double Coronas</td><td class="cigarDetailHead-i" style="width:30%">Prominentes</td><td class="cigarDetailHead" style="text-align:center;width:19%">49 x 194<span class="inches" id="i2">&nbsp;(7.6")</span></td><td class="cigarDetailHead" style="width:21%">Double Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:582px">
<a data-lightbox="cigar-232" href="images\San_Luis_Rey_Double_Coronas_cigar_orig.jpg">
<img class="box" src="images\San_Luis_Rey_Double_Coronas_cigar_full.jpg" alt="Double Coronas - click to enlarge" title="Double Coronas - click to enlarge" height="56" width="582">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Slide Lid Box of 50 cigars.<br />Cajón of 50 cigars.<br />Cajón of 25 cigars.<br />Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1980s release. Discontinued 2000. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Lonsdales">San Luis Rey</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Lonsdales</td><td class="cigarDetailHead-i" style="width:30%">Cervantes</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 165<span class="inches" id="i3">&nbsp;(6.5")</span></td><td class="cigarDetailHead" style="width:21%">Lonsdale</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:495px">
<a data-lightbox="cigar-233" href="images\San_Luis_Rey_Lonsdales_cigar_orig.jpg">
<img class="box" src="images\San_Luis_Rey_Lonsdales_cigar_full.jpg" alt="Lonsdales - click to enlarge" title="Lonsdales - click to enlarge" height="52" width="495">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 10 cigars.<br />Cajón of 100 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1980s release. Discontinued 2000. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit_Coronas">San Luis Rey</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit Coronas</td><td class="cigarDetailHead-i" style="width:30%">Marevas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i4">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:387px">
<a data-lightbox="cigar-234" href="images\San_Luis_Rey_Petit_Coronas_cigar_orig.jpg">
<img class="box" src="images\San_Luis_Rey_Petit_Coronas_cigar_full.jpg" alt="Petit Coronas - click to enlarge" title="Petit Coronas - click to enlarge" height="50" width="387">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 10 cigars.<br />Slide Lid Box of 50 cigars.<br />Cajón of 100 cigars.<br />Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1980s release. Discontinued 2000. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="365_European_Union_Production" class="entryhead">San Luis Rey</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >1990 - European Union Production <span class="srsub">Other Special Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Long Panetelas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">28 x 150<span class="inches" id="i5">&nbsp;(5.9")</span></td><td class="cigarDetailHead" style="width:21%">Slim Panetela</td></tr>
</table><div style="clear:both;padding-right:24px;width:476px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_cigar_orig_1.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_cigar_full_1.jpg" alt="Long Panetelas - click to enlarge" title="Long Panetelas - click to enlarge" height="43" width="476">
</a>
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_band_orig_2.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_band_full_2.jpg" alt="Long Panetelas - click to enlarge" title="European Union Production band - click to enlarge" height="122" width="400">
</a>
<span class="comments">European Union Production Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="text-align:center;clear:both;height:150px;position:relative;float:left;padding-right:24px;width:72px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_packaging_orig.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_packaging_full.jpg" alt="Long Panetelas - click to enlarge" title="Long Panetelas - click to enlarge" height="150" width="72">
</a>
</div>
<div style="text-align:center;height:150px;position:relative;float:left;padding-right:24px;width:149px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_packaging_orig_4.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_packaging_full_4.jpg" alt="Long Panetelas - click to enlarge" title="Long Panetelas - click to enlarge" height="150" width="149">
</a>
</div>
<div style="text-align:center;height:150px;position:relative;float:left;padding-right:24px;width:97px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_packaging_orig_3.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_packaging_full_3.jpg" alt="Long Panetelas - click to enlarge" title="Long Panetelas - click to enlarge" height="150" width="97">
</a>
</div>
<div style="text-align:center;height:150px;position:relative;float:left;padding-right:24px;width:84px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_packaging_orig_1.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_packaging_full_1.jpg" alt="Long Panetelas - click to enlarge" title="Long Panetelas - click to enlarge" height="150" width="84">
</a>
</div>
<div style="text-align:center;height:150px;position:relative;float:left;padding-right:24px;width:58px">
<a  data-lightbox="special-365" href="images\San_Luis_Rey_Long_Panetelas_packaging_orig_2.jpg">
<img class="box" src = "images\San_Luis_Rey_Long_Panetelas_packaging_full_2.jpg" alt="Long Panetelas - click to enlarge" title="Long Panetelas - click to enlarge" height="150" width="58">
</a>
</div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made (short filler). Approximate size only.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special EU Band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Cardboard Pack of 5 cigars in cellophane.</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1990s release.  Discontinued c2002.</td></tr><tr><td class="histhead">History:</td><td class="histnotes">Made in and for the European Union (EU)with 100% Cuban tobacco.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
