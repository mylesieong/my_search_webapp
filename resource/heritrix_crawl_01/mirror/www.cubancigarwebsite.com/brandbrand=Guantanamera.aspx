


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Guantanamera
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
var inchLimit = 4;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Guantanamera" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gNDsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQWqLTx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkd1YW50YW5hbWVyYTwvc3Bhbj48YnIgLz48YnIgLz48YSBkYXRhLWxpZ2h0Ym94PSJicmFuZCIgaHJlZj0iaW1hZ2VzXEd1YW50YW5hbWVyYV9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iR3VhbnRhbmFtZXJhIiB0aXRsZT0iR3VhbnRhbmFtZXJhIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb21wYXkiPkNvbXBheTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDcmlzdGFsZXMiPkNyaXN0YWxlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNEfGVjaW1vcyI+RMOpY2ltb3M8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUHVyaXRvcyI+UHVyaXRvczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNNaW51dG9zIj5NaW51dG9zPC9vcHRpb24+CTwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5HdWFudGFuYW1lcmEgaXMgYSBDdXJyZW50IElDVCBtYWNoaW5lLW1hZGUgYnJhbmQuPEJSIC8+IEl0IHdhcyBhIHBvc3QtcmV2b2x1dGlvbiBicmFuZCwgZXN0YWJsaXNoZWQgIGluIDIwMDIsIGFuZCB3YXMgZGVsZXRlZCBmcm9tIEhhYmFub3MgcG9ydGZvbGlvIGNpcmNhIDIwMDUuPEJSIC8+SXQgaXMgbm93IHByb2R1Y2VkIGluIEN1YmEgYnkgSW50ZXJuYWNpb25hbCBDdWJhbmEgZGUgVGFiYWNvcywgUy5BLiAoSUNUKSB1bmRlciBsaWNlbnNlIHRvIEhhYmFub3MgUy5BLjxCUiAvPjxCUiAvPjxiPkdlbmVyYWxseTwvYj48YnIgLz4gVGhlIHJhbmdlIGNvbXByaXNlcyBsaWdodCBzdHJlbmd0aCBtYWNoaW5lLW1hZGUgY2lnYXJzIHVzaW5nIHNob3J0IGZpbGxlciB0b2JhY2NvIGZyb20gdGhlIGxlc3NlciA8aT5WdWVsdGEgQXJyaWJhPC9pPiByZWdpb24uIDxiciAvPlRoZXkgYXJlIGNoZWFwIGNpZ2FycyBtYWRlIGZvciB0aGUgbWFzcy1tYXJrZXQsIGFuZCBoYXZlIHByZS1jdXQgaGVhZHMuPEJSIC8+IDxiciAvPjxiPlJlbGVhc2VzPC9iPjxCUiAvPlRoZXJlIGFyZSBhbHNvIHR3byBzbWFsbCBjaWdhcnMgcHJvZHVjZWQsIGluIGEgUHVyaXRvcyBhbmQgTWluaSBmb3JtYXQuPEJSIC8+SW4gYzIwMTAgYSBzcGVjaWFsIFNlbGVjY2nDs24gMTMgcGFjayB3YXMgcmVsZWFzZWQsIGNvbXByaXNpbmcgMyBDcmlzdGFsZXMsIDUgRGVjaW1vcywgYW5kIDUgUHVyaXRvcy48QlIgLz4gUHJpb3IgdG8gYzIwMTAoPykgYSBTZWxlY2Npw7NuIGJveCBjb250YWluaW5nIDE1IGNpZ2FycyAoNCBNaW51dGVzLCAzIENocmlzdGFscywgMyBEw6ljaW1vcywgYW5kIDUgUHVyaXRvcykgd2FzIGFsc28gYXZhaWxhYmxlLjxCUiAvPjxCUiAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQ+PHNwYW4gY2xhc3M9ImhlYWQzIj5TdGFuZGFyZCBDaWdhciBCYW5kczwvc3Bhbj48YnIgLz48YSBocmVmPSJiYW5kLmFzcHg/YnJhbmQ9NDUiPkZ1bGwgYmFuZCBnYWxsYXJ5PC9hPjxiciAvPjxiciAvPg0KPHRhYmxlIHN0eWxlPSJtYXgtd2lkdGg6ODY1cHgiIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PGRpdiBjbGFzcz0iZ2FsbGVyeSI+PHA+PGRpdj48YSBkYXRhLWxpZ2h0Ym94PSJiYW5kcyIgaHJlZj0iaW1hZ2VzXEd1YW50YW5hbWVyYV9iYW5kXzE4MTI1ODY3NzJmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9iYW5kXzE4MTI1ODY3NzJzbWFsbC5qcGciIGhlaWdodD0iMTE5IiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQTwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5FbWJvc3NlZDwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj4yMDAyIG9uIC0tIGN1cnJlbnQ8L3NwYW4+DQo8L2Rpdj48L3A+PC9kaXY+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPg0KPHRyPjx0ZCBjbGFzcz0iYnJhbmRfdGFibGUiPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgUHJvZHVjdGlvbiBQYWNrYWdpbmc8L3NwYW4+PGJyIC8+PGJyIC8+DQo8dGFibGUgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxNjNweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEd1YW50YW5hbWVyYV9wYWNrYWdpbmdfMjA3ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgR3VhbnRhbmFtZXJhIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgR3VhbnRhbmFtZXJhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcR3VhbnRhbmFtZXJhX3BhY2thZ2luZ18yMDdzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTYzIiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkNvbXBheTwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5SQ0IxMGMuPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE5NXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcR3VhbnRhbmFtZXJhX3BhY2thZ2luZ18yMDVmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzIwNXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxOTUiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q3Jpc3RhbGVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlJDQjI1cHQuPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEwMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcR3VhbnRhbmFtZXJhX3BhY2thZ2luZ18yMDZmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzIwNnNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMDAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q3Jpc3RhbGVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlJDQjEwcHQuPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEzMXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcR3VhbnRhbmFtZXJhX3BhY2thZ2luZ18zMDVmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzMwNXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMzEiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+TWludXRvczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5QM3B0Ljwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMDZweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEd1YW50YW5hbWVyYV9wYWNrYWdpbmdfMjA0ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgR3VhbnRhbmFtZXJhIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgR3VhbnRhbmFtZXJhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcR3VhbnRhbmFtZXJhX3BhY2thZ2luZ18yMDRzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTA2IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPk1pbnV0b3M8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+UkNCMjVwdC48L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTIzcHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzg4MTZmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzg4MTZzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTIzIiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlNlbGVjY2nDs24gMTM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+UkNCMTM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTE3cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzIyODhmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBHdWFudGFuYW1lcmEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfcGFja2FnaW5nXzIyODhzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTE3IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlNlbGVjY2nDs24gMTM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+Tm90aWNlPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj48L3RhYmxlPjxiciAvPjwvdGQ+PC90cj4NCmRkAgEPDxYCHwEFkzw8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5DdXJyZW50IFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ29tcGF5Ij5HdWFudGFuYW1lcmE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Q29tcGF5PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5TdGFuZGFyZCBNYW5vPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMjM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTAiPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM3OXB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR3VhbnRhbmFtZXJhX0NvbXBheV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJDb21wYXkiIHRpdGxlPSJDb21wYXkiIGhlaWdodD0iNTUiIHdpZHRoPSIzNzkiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPlJpZ2lkIENhcmRib2FyZCBCb3ggb2YgMTAgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDIgcmVsZWFzZS4gU3RhdHVzIHVuY2VydGFpbi4gwqBQb3NzaWJseSBkaXNjb250aW51ZWQuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNyaXN0YWxlcyI+R3VhbnRhbmFtZXJhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNyaXN0YWxlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q3Jpc3RhbGVzIE1hbm88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MSB4IDE1MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDUuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbmcgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1MDRweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9DcmlzdGFsZXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iQ3Jpc3RhbGVzIiB0aXRsZT0iQ3Jpc3RhbGVzIiBoZWlnaHQ9IjcyIiB3aWR0aD0iNTA0Ij4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0NTBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xODMiIGhyZWY9ImltYWdlc1xHdWFudGFuYW1lcmFfQ3Jpc3RhbGVzX2NpZ2FyX29yaWdfMS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfQ3Jpc3RhbGVzX2NpZ2FyX2Z1bGxfMS5qcGciIGFsdD0iQ3Jpc3RhbGVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNyaXN0YWxlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTAiIHdpZHRoPSI0NTAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2FycyBpbiBwbGFzdGljIHR1YmVzLjxiciAvPlJpZ2lkIENhcmRib2FyZCBCb3ggb2YgMTAgY2lnYXJzIGluIHBsYXN0aWMgdHViZXMuPGJyIC8+UmlnaWQgQ2FyZGJvYXJkIEJveCBvZiAyNSBjaWdhcnMgaW4gcGxhc3RpYyB0dWJlcy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAwMiByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRHxlY2ltb3MiPkd1YW50YW5hbWVyYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Ew6ljaW1vczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5pdmVyc2FsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOCB4IDEzNDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMiI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MTJweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9EZWNpbW9zX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkTDqWNpbW9zIiB0aXRsZT0iRMOpY2ltb3MiIGhlaWdodD0iNjIiIHdpZHRoPSI0MTIiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPlJpZ2lkIENhcmRib2FyZCBCb3ggb2YgMTAgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDIgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlB1cml0b3MiPkd1YW50YW5hbWVyYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5QdXJpdG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5DaGljb3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4yOSB4IDEwNjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDQuMiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkNpZ2FyaWxsbzwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzE4cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTU2NiIgaHJlZj0iaW1hZ2VzXEd1YW50YW5hbWVyYV9QdXJpdG9zX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xHdWFudGFuYW1lcmFfUHVyaXRvc19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IlB1cml0b3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iUHVyaXRvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMzYiIHdpZHRoPSIzMTgiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDIgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9Ik1pbnV0b3MiPkd1YW50YW5hbWVyYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5NaW51dG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5NaW51dG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDIgeCAxMTA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTQiPiZuYnNwOyg0LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMzMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTExNjEiIGhyZWY9ImltYWdlc1xHdWFudGFuYW1lcmFfTWludXRvc19vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEd1YW50YW5hbWVyYV9NaW51dG9zX2Z1bGwuanBnIiBhbHQ9Ik1pbnV0b3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iTWludXRvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTMiIHdpZHRoPSIzMzAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM1MHB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR3VhbnRhbmFtZXJhX01pbnV0b3NfY2lnYXJfZnVsbC5qcGciIGFsdD0iTWludXRvcyIgdGl0bGU9Ik1pbnV0b3MiIGhlaWdodD0iNjQiIHdpZHRoPSIzNTAiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0idHViZW5vdGVoZWFkIj5UdWJlczo8L3RkPjx0ZCBjbGFzcz0idHViZW5vdGUiPlBsYXN0aWMgdHViZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5DYXJkYm9hcmQgUGFjayBvZiAzIGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPlJpZ2lkIENhcmRib2FyZCBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+Q2FyZGJvYXJkIFBhY2sgb2YgMyBjaWdhcnMgaW4gcGxhc3RpYyB0dWJlcyAocmVsZWFzZWQgMjAwOSkuPGJyIC8+UmlnaWQgQ2FyZGJvYXJkIEJveCBvZiAyNSBjaWdhcnMgaW4gcGxhc3RpYyB0dWJlcyAocmVsZWFzZWQgMjAwOSkuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDUgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+ZGRkSAwszdnk6A73Cnbxa4DCWemn8ZKiEXSDNnbHPuHzlHc=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dGuantanamera ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Guantanamera</span><br /><br /><a data-lightbox="brand" href="images\Guantanamera_logo_full.jpg"><img class="box" src="images\Guantanamera_logo_small.jpg" height="160" alt="Guantanamera" title="Guantanamera"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Compay">Compay</option><option value="#Cristales">Cristales</option><option value="#D|ecimos">Décimos</option><option value="#Puritos">Puritos</option><option value="#Minutos">Minutos</option>	</select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Guantanamera is a Current ICT machine-made brand.<BR /> It was a post-revolution brand, established  in 2002, and was deleted from Habanos portfolio circa 2005.<BR />It is now produced in Cuba by Internacional Cubana de Tabacos, S.A. (ICT) under license to Habanos S.A.<BR /><BR /><b>Generally</b><br /> The range comprises light strength machine-made cigars using short filler tobacco from the lesser <i>Vuelta Arriba</i> region. <br />They are cheap cigars made for the mass-market, and have pre-cut heads.<BR /> <br /><b>Releases</b><BR />There are also two small cigars produced, in a Puritos and Mini format.<BR />In c2010 a special Selección 13 pack was released, comprising 3 Cristales, 5 Decimos, and 5 Puritos.<BR /> Prior to c2010(?) a Selección box containing 15 cigars (4 Minutes, 3 Christals, 3 Décimos, and 5 Puritos) was also available.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=45">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Guantanamera_band_1812586772full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Guantanamera_band_1812586772small.jpg" height="119" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">2002 on -- current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:163px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_207full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_207small.jpg" height="150" width="163"  /></a>
</td></tr><tr><td><span class="bandhead">Compay</span><br /><span class="band-caption">RCB10c.</span><br /></td></tr></table><table align="left" width="175" style="width:195px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_205full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_205small.jpg" height="150" width="195"  /></a>
</td></tr><tr><td><span class="bandhead">Cristales</span><br /><span class="band-caption">RCB25pt.</span><br /></td></tr></table><table align="left" width="175" style="width:100px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_206full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_206small.jpg" height="150" width="100"  /></a>
</td></tr><tr><td><span class="bandhead">Cristales</span><br /><span class="band-caption">RCB10pt.</span><br /></td></tr></table><table align="left" width="175" style="width:131px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_305full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_305small.jpg" height="150" width="131"  /></a>
</td></tr><tr><td><span class="bandhead">Minutos</span><br /><span class="band-caption">P3pt.</span><br /></td></tr></table><table align="left" width="175" style="width:106px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_204full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_204small.jpg" height="150" width="106"  /></a>
</td></tr><tr><td><span class="bandhead">Minutos</span><br /><span class="band-caption">RCB25pt.</span><br /></td></tr></table><table align="left" width="175" style="width:123px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_8816full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_8816small.jpg" height="150" width="123"  /></a>
</td></tr><tr><td><span class="bandhead">Selección 13</span><br /><span class="band-caption">RCB13</span><br /></td></tr></table><table align="left" width="175" style="width:117px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Guantanamera_packaging_2288full.jpg">
<img class="box" alt="Typical Guantanamera packaging" title="Typical Guantanamera packaging" src="images\Guantanamera_packaging_2288small.jpg" height="150" width="117"  /></a>
</td></tr><tr><td><span class="bandhead">Selección 13</span><br /><span class="band-caption">Notice</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Compay">Guantanamera</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Compay</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i0">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:379px">
<img class="box" src="images\Guantanamera_Compay_cigar_full.jpg" alt="Compay" title="Compay" height="55" width="379">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars in cellophane.<br />Rigid Cardboard Box of 10 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2002 release. Status uncertain.  Possibly discontinued.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cristales">Guantanamera</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cristales</td><td class="cigarDetailHead-i" style="width:30%">Cristales Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">41 x 150<span class="inches" id="i1">&nbsp;(5.9")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:504px">
<img class="box" src="images\Guantanamera_Cristales_cigar_full.jpg" alt="Cristales" title="Cristales" height="72" width="504">
<br /><!-- after the image break -->
</div>
<div style="clear:both;padding-right:24px;width:450px">
<a data-lightbox="cigar-183" href="images\Guantanamera_Cristales_cigar_orig_1.jpg">
<img class="box" src="images\Guantanamera_Cristales_cigar_full_1.jpg" alt="Cristales - click to enlarge" title="Cristales - click to enlarge" height="50" width="450">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars in plastic tubes.<br />Rigid Cardboard Box of 10 cigars in plastic tubes.<br />Rigid Cardboard Box of 25 cigars in plastic tubes.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2002 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="D|ecimos">Guantanamera</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Décimos</td><td class="cigarDetailHead-i" style="width:30%">Universales</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 134<span class="inches" id="i2">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:412px">
<img class="box" src="images\Guantanamera_Decimos_cigar_full.jpg" alt="Décimos" title="Décimos" height="62" width="412">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars in cellophane.<br />Rigid Cardboard Box of 10 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2002 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Puritos">Guantanamera</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Puritos</td><td class="cigarDetailHead-i" style="width:30%">Chicos</td><td class="cigarDetailHead" style="text-align:center;width:19%">29 x 106<span class="inches" id="i3">&nbsp;(4.2")</span></td><td class="cigarDetailHead" style="width:21%">Cigarillo</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:318px">
<a data-lightbox="cigar-1566" href="images\Guantanamera_Puritos_cigar_orig_0.jpg">
<img class="box" src="images\Guantanamera_Puritos_cigar_full_0.jpg" alt="Puritos - click to enlarge" title="Puritos - click to enlarge" height="36" width="318">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2002 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Minutos">Guantanamera</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Minutos</td><td class="cigarDetailHead-i" style="width:30%">Minutos</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 110<span class="inches" id="i4">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:330px">
<a data-lightbox="cigar-1161" href="images\Guantanamera_Minutos_orig.jpg">
<img class="box" src="images\Guantanamera_Minutos_full.jpg" alt="Minutos - click to enlarge" title="Minutos - click to enlarge" height="53" width="330">
</a>
<br /><!-- after the image break -->
</div>
<div style="clear:both;padding-right:24px;width:350px">
<img class="box" src="images\Guantanamera_Minutos_cigar_full.jpg" alt="Minutos" title="Minutos" height="64" width="350">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="tubenotehead">Tubes:</td><td class="tubenote">Plastic tube.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 3 cigars in cellophane.<br />Rigid Cardboard Box of 25 cigars in cellophane.<br />Cardboard Pack of 3 cigars in plastic tubes (released 2009).<br />Rigid Cardboard Box of 25 cigars in plastic tubes (released 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2005 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
