


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: José L. Piedra
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
var inchLimit = 9;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Jos%7ce_L._Piedra" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gOTsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQXIPDx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkpvc8OpIEwuIFBpZWRyYTwvc3Bhbj48YnIgLz48YnIgLz48YSBkYXRhLWxpZ2h0Ym94PSJicmFuZCIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iSm9zw6kgTC4gUGllZHJhIiB0aXRsZT0iSm9zw6kgTC4gUGllZHJhIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNCcmV2YXMiPkJyZXZhczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDYXphZG9yZXMiPkNhemFkb3Jlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb25zZXJ2YXMiPkNvbnNlcnZhczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDcmVtYXMiPkNyZW1hczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNOYWNpb25hbGVzIj5OYWNpb25hbGVzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1BldGl0X0NldHJvcyI+UGV0aXQgQ2V0cm9zPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1BldGl0X0NhemFkb3JlcyI+UGV0aXQgQ2F6YWRvcmVzPC9vcHRpb24+CTwvc2VsZWN0PjxzZWxlY3Qgb25jaGFuZ2U9IkZQX2p1bXBNZW51KHRoaXMsJ3dpbmRvdycsZmFsc2UpIiBpZD0iaWQzIiBuYW1lPSJEMyIgY2xhc3M9ImRyb3Bkb3duIj4JPG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1BhbmV0ZWxpdGFzX2RlX0hlYnJhIj5QYW5ldGVsaXRhcyBkZSBIZWJyYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNSb3lhbF9QYWxtcyI+Um95YWwgUGFsbXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjU3VwZXJpb3JzIj5TdXBlcmlvcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5Kb3PDqSBMLiBQaWVkcmEgaXMgYSBjdXJyZW50IHByZS1SZXZvbHV0aW9uIGJyYW5kLCBlc3RhYmxpc2hlZCBpbiB0aGUgMTg4MHMuICA8QlIgLz5JdCB3YXMgdGVtcG9yYXJpbHkgZGlzY29udGludWVkIGluIHRoZSBlYXJseSAxOTkwcyBhbmQgd2FzIHJlaW5zdGF0ZWQgaW4gMTk5Ni48QlIgLz5JdCBpcyBjbGFzc2lmaWVkIGJ5IEhhYmFub3MgU0EgYXMgYSBHbG9iYWwgYnJhbmQgYW5kIGhhcyBhIG1ham9yIG1hcmtldCBzaGFyZS4gUHJpb3IgdG8gYzIwMDcgaXQgd2FzIGNsYXNzaWZpZWQgYXMgYSBNdWx0aS1sb2NhbCBicmFuZC48QlIgLz48QlIgLz48Yj5HZW5lcmFsbHk8L2I+PEJSIC8+VGhlIEpvc8OpIEwuIFBpZWRyYSByYW5nZSBjb21wcmlzZXMgbWVkaXVtIHRvIGZ1bGwgc3RyZW5ndGggY2lnYXJzLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjbyBmcm9tIHRoZSBsZXNzZXIgPGk+VnVlbHRhIEFycmliYTwvaT4gcmVnaW9uLjxCUiAvPiA8QlIgLz48Yj5SZWxlYXNlczwvYj48QlIgLz5BbGwgYnV0IG9uZSBvZiB0aGUgY3VycmVudCBwcm9kdWN0aW9uIGNpZ2FycyB3ZXJlIHJlbGVhc2VkIGluIDE5OTYuIDxCUiAvPlRoZXJlIGhhdmUgYmVlbiBubyBTcGVjaWFsIFJlbGVhc2VzLjxCUiAvPjxCUiAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQ+PHNwYW4gY2xhc3M9ImhlYWQzIj5TdGFuZGFyZCBDaWdhciBCYW5kczwvc3Bhbj48YnIgLz48YSBocmVmPSJiYW5kLmFzcHg/YnJhbmQ9MTciPkZ1bGwgYmFuZCBnYWxsYXJ5PC9hPjxiciAvPjxiciAvPg0KPHRhYmxlIHN0eWxlPSJtYXgtd2lkdGg6ODY1cHgiIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PGRpdiBjbGFzcz0iZ2FsbGVyeSI+PHA+PGRpdj48YSBkYXRhLWxpZ2h0Ym94PSJiYW5kcyIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9iYW5kXzExNTM1NzY2MjNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9iYW5kXzExNTM1NzY2MjNzbWFsbC5qcGciIGhlaWdodD0iNzkiIHdpZHRoPSI0MDAiICAvPjwvYT4NCjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+U3RhbmRhcmQgQmFuZCBBPC9zcGFuPjxiciAvPg0KPHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbjIiPk5vdCBlbWJvc3NlZDwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj4xOTk2IHRvIGMyMDAyIC0tIERpc2NvbnRpbnVlZDwvc3Bhbj4NCjwvZGl2PjwvcD48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX2JhbmRfMTc3MjMxNjc2M2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX2JhbmRfMTc3MjMxNjc2M3NtYWxsLmpwZyIgaGVpZ2h0PSI3OSIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEI8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+Tm90IGVtYm9zc2VkPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPmMyMDAyIHRvIGMyMDA3IC0tIERpc2NvbnRpbnVlZDwvc3Bhbj4NCjwvZGl2PjwvcD48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX2JhbmRfMTg0NzY0NjYwNmZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX2JhbmRfMTg0NzY0NjYwNnNtYWxsLmpwZyIgaGVpZ2h0PSI5NyIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEM8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+Tm90IGVtYm9zc2VkPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPmMyMDA3IG9uIC0tIEN1cnJlbnQ8L3NwYW4+DQo8L2Rpdj48L3A+PC9kaXY+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPg0KPHRyPjx0ZCBjbGFzcz0iYnJhbmRfdGFibGUiPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgUHJvZHVjdGlvbiBQYWNrYWdpbmc8L3NwYW4+PGJyIC8+PGJyIC8+DQo8dGFibGUgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMDhweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEpvc8OpX0xfUGllZHJhX19wYWNrYWdpbmdfMTk1ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgSm9zw6kgTC4gUGllZHJhIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgSm9zw6kgTC4gUGllZHJhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcSm9zw6lfTF9QaWVkcmFfX3BhY2thZ2luZ18xOTVzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTA4IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkJyZXZhczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CdW4yNSAtIGMxOTk2PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjk1cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xKb3PDqV9MX1BpZWRyYV9fcGFja2FnaW5nXzE5M2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXEpvc8OpX0xfUGllZHJhX19wYWNrYWdpbmdfMTkzc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9Ijk1IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkNhemFkb3Jlczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CdW4yNSAtIDIwMDM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTA3cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfcGFja2FnaW5nXzM4NWZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9wYWNrYWdpbmdfMzg1c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEwNyIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5QYW5ldGVsaXRhcyBkZSBIZWJyYTwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjUgLSAxOTcwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMjRweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEpvc8OpX0xfUGllZHJhX19wYWNrYWdpbmdfMTk2ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgSm9zw6kgTC4gUGllZHJhIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgSm9zw6kgTC4gUGllZHJhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcSm9zw6lfTF9QaWVkcmFfX3BhY2thZ2luZ18xOTZzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTI0IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlBldGl0IENhemFkb3Jlczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CdW4yNSAtIDIwMDc8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTI2cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xKb3PDqV9MX1BpZWRyYV9fcGFja2FnaW5nXzE5N2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXEpvc8OpX0xfUGllZHJhX19wYWNrYWdpbmdfMTk3c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEyNiIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5QZXRpdCBDYXphZG9yZXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+UDUgLSAyMDA3PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE3OXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcSm9zw6lfTF9QaWVkcmFfX3BhY2thZ2luZ18xOThmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBKb3PDqSBMLiBQaWVkcmEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBKb3PDqSBMLiBQaWVkcmEgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xKb3PDqV9MX1BpZWRyYV9fcGFja2FnaW5nXzE5OHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNzkiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+UGV0aXQgQ2F6YWRvcmVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkNCMjVidW4gLSAyMDA5PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEwOHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX3BhY2thZ2luZ182MzQ4ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgSm9zw6kgTC4gUGllZHJhIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgSm9zw6kgTC4gUGllZHJhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX3BhY2thZ2luZ182MzQ4c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEwOCIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5Sb3lhbCBQYWxtczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjUgLSAxOTcwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMjFweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9wYWNrYWdpbmdfNTUxMmZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEpvc8OpIEwuIFBpZWRyYSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9wYWNrYWdpbmdfNTUxMnNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMjEiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+U3VwZXJpb3JzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNSAtIDE5NzBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj48L3RhYmxlPjxiciAvPjwvdGQ+PC90cj4NCmRkAgEPDxYCHwEFzns8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5DdXJyZW50IFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQnJldmFzIj5Kb3PDqSBMLiBQaWVkcmE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+QnJldmFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5CcmV2YXMgSkxQPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDIgeCAxMzM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTAiPiZuYnNwOyg1LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM5OXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTYiIGhyZWY9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfQnJldmFzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX0JyZXZhc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJCcmV2YXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQnJldmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1MSIgd2lkdGg9IjM5OSI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZSwgdXNpbmcgc2hvcnQtZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kcyBBLCBCLCBDLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIChyZWxlYXNlZCAxOTk2KS48YnIgLz5DYXJkYm9hcmQgQm94IG9mIDI1IGNlbGxvcGhhbmUgYnVuZGxlZCBjaWdhcnMgKHJlbGVhc2VkIDIwMDkpLjxiciAvPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNlbGxvcGhhbmUgV3JhcHBlZCBCdW5kbGUgb2YgMjUgY2lnYXJzIChyZWxlYXNlZCAxOTk2LCBkaXNjb250aW51ZWQgMjAwOSkuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5OTYgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlVudGlsIGMyMDAyIHdhcyBtYWNoaW5lLW1hZGUuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNhemFkb3JlcyI+Sm9zw6kgTC4gUGllZHJhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNhemFkb3JlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q2F6YWRvcmVzIEpMUDwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQzIHggMTUyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+TG9uZyBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQ1NnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTgiIGhyZWY9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfQ2F6YWRvcmVzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX0NhemFkb3Jlc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJDYXphZG9yZXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2F6YWRvcmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NCIgd2lkdGg9IjQ1NiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZSwgdXNpbmcgc2hvcnQtZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kcyBBLCBCLCBDLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIChyZWxlYXNlZCAxOTk2KS48YnIgLz5DYXJkYm9hcmQgQm94IG9mIDI1IGNlbGxvcGhhbmUgYnVuZGxlZCBjaWdhcnMgKHJlbGVhc2VkIDIwMDkpLjxiciAvPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNlbGxvcGhhbmUgV3JhcHBlZCBCdW5kbGUgb2YgMjUgY2lnYXJzIChyZWxlYXNlZCAxOTk2LCBkaXNjb250aW51ZWQgMjAwOSkuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5OTYgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlVudGlsIGMyMDAyIHdhcyBtYWNoaW5lLW1hZGUuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNvbnNlcnZhcyI+Sm9zw6kgTC4gUGllZHJhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNvbnNlcnZhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29uc2VydmFzIEpMUDwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ0IHggMTQwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+TG9uZyBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTQzNyIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9Db25zZXJ2YXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfQ29uc2VydmFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNvbnNlcnZhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDb25zZXJ2YXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjYxIiB3aWR0aD0iNDIwIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmRzIEEsIEIsIEMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+Q2FyZGJvYXJkIFBhY2sgb2YgNSBjaWdhcnMgKHJlbGVhc2VkIDE5OTYpLjxiciAvPkNhcmRib2FyZCBCb3ggb2YgMjUgY2VsbG9waGFuZSBidW5kbGVkIGNpZ2FycyAocmVsZWFzZWQgMjAwOSkuPGJyIC8+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+Q2VsbG9waGFuZSBXcmFwcGVkIEJ1bmRsZSBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5OTYsIGRpc2NvbnRpbnVlZCAyMDA5KS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk5NiByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ3JlbWFzIj5Kb3PDqSBMLiBQaWVkcmE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Q3JlbWFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5DcmVtYXMgSkxQPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMzY8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTMiPiZuYnNwOyg1LjQiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQwOHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTQzOCIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9DcmVtYXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfQ3JlbWFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNyZW1hcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDcmVtYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNDA4Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmRzIEEsIEIsIEMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+Q2FyZGJvYXJkIFBhY2sgb2YgNSBjaWdhcnMgKHJlbGVhc2VkIDE5OTYpLjxiciAvPkNhcmRib2FyZCBCb3ggb2YgMjUgY2VsbG9waGFuZSBidW5kbGVkIGNpZ2FycyAocmVsZWFzZWQgMjAwOSkuPGJyIC8+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+Q2VsbG9waGFuZSBXcmFwcGVkIEJ1bmRsZSBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5OTYsIGRpc2NvbnRpbnVlZCAyMDA5KS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk5NiByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iTmFjaW9uYWxlcyI+Sm9zw6kgTC4gUGllZHJhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk5hY2lvbmFsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk5hY2lvbmFsZXMgSkxQPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDIgeCAxMzQ8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTQiPiZuYnNwOyg1LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQwMnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTQzOSIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9OYWNpb25hbGVzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX05hY2lvbmFsZXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iTmFjaW9uYWxlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJOYWNpb25hbGVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NSIgd2lkdGg9IjQwMiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZSwgdXNpbmcgc2hvcnQtZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kcyBBLCBCLCBDLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIChyZWxlYXNlZCAxOTk2KS48YnIgLz5DYXJkYm9hcmQgQm94IG9mIDI1IGNlbGxvcGhhbmUgYnVuZGxlZCBjaWdhcnMgKHJlbGVhc2VkIDIwMDkpLjxiciAvPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNlbGxvcGhhbmUgV3JhcHBlZCBCdW5kbGUgb2YgMjUgY2lnYXJzIChyZWxlYXNlZCAxOTk2LCBkaXNjb250aW51ZWQgMjAwOSkuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5OTYgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlVudGlsIGMyMDAyIHdhcyBtYWNoaW5lLW1hZGUuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlBldGl0X0NldHJvcyI+Sm9zw6kgTC4gUGllZHJhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlBldGl0IENldHJvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgQ2V0cm9zIEpMUDwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM4IHggMTI3PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk1Ij4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2hvcnQgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM4MXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTQ0MSIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9QZXRpdF9DZXRyb3NfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfUGV0aXRfQ2V0cm9zX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IlBldGl0IENldHJvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQZXRpdCBDZXRyb3MgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ5IiB3aWR0aD0iMzgxIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLCB1c2luZyBzaG9ydC1maWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmRzIEEsIEIsIEMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+Q2FyZGJvYXJkIFBhY2sgb2YgNSBjaWdhcnMgKHJlbGVhc2VkIDE5OTYpLjxiciAvPkNhcmRib2FyZCBCb3ggb2YgMjUgY2VsbG9waGFuZSBidW5kbGVkIGNpZ2FycyAocmVsZWFzZWQgMjAwOSkuPGJyIC8+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+Q2VsbG9waGFuZSBXcmFwcGVkIEJ1bmRsZSBvZiAyNSBjaWdhcnMgKHJlbGVhc2VkIDE5OTYsIGRpc2NvbnRpbnVlZCAyMDA5KS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk5NiByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+VW50aWwgYzIwMDIgd2FzIG1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUGV0aXRfQ2F6YWRvcmVzIj5Kb3PDqSBMLiBQaWVkcmE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgQ2F6YWRvcmVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5QZXRpdCBDYXphZG9yZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MyB4IDEwNTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNiI+Jm5ic3A7KDQuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IENvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzE1cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItNDQwIiBocmVmPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX1BldGl0X0NhemFkb3Jlc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9QZXRpdF9DYXphZG9yZXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iUGV0aXQgQ2F6YWRvcmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlBldGl0IENhemFkb3JlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTEiIHdpZHRoPSIzMTUiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUsIHVzaW5nIHNob3J0LWZpbGxlciB0b2JhY2NvLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBDLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIChyZWxlYXNlZCAyMDA3KS48YnIgLz5DYXJkYm9hcmQgQm94IG9mIDI1IGNlbGxvcGhhbmUgYnVuZGxlZCBjaWdhcnMgKHJlbGVhc2VkIDIwMDkpLjxiciAvPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNlbGxvcGhhbmUgV3JhcHBlZCBCdW5kbGUgb2YgMjUgY2lnYXJzIChyZWxlYXNlZCAyMDA3LCBkaXNjb250aW51ZWQgMjAwOSkuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDcgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2FyczwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlBhbmV0ZWxpdGFzX2RlX0hlYnJhIj5Kb3PDqSBMLiBQaWVkcmE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGFuZXRlbGl0YXMgZGUgSGVicmE8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zMCB4IDExMTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNyI+Jm5ic3A7KDQuNCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNtYWxsIFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMzNweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci00NjQiIGhyZWY9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfUGFuZXRlbGl0YXNfZGVfSGVicmFfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfUGFuZXRlbGl0YXNfZGVfSGVicmFfY2lnYXJfZnVsbC5qcGciIGFsdD0iUGFuZXRlbGl0YXMgZGUgSGVicmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iUGFuZXRlbGl0YXMgZGUgSGVicmEgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjM2IiB3aWR0aD0iMzMzIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+QW4gZWFybHkgdHlwZSA0IGJhbmQuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDE5NzBzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUm95YWxfUGFsbXMiPkpvc8OpIEwuIFBpZWRyYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Sb3lhbCBQYWxtczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjMwIHggMTQwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk4Ij4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2xpbSBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDIwcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItNDY2IiBocmVmPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX1JveWFsX1BhbG1zX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX1JveWFsX1BhbG1zX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IlJveWFsIFBhbG1zIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlJveWFsIFBhbG1zIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIzOCIgd2lkdGg9IjQyMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPkFuIGVhcmx5IHR5cGUgNSBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAxOTcwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlN1cGVyaW9ycyI+Sm9zw6kgTC4gUGllZHJhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlN1cGVyaW9yczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+U3VwZXJpb3JlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQwIHggMTQ2PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk5Ij4mbmJzcDsoNS43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+TG9uZyBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQzOHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTQ2NyIgaHJlZj0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9TdXBlcmlvcnNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfU3VwZXJpb3JzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IlN1cGVyaW9ycyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJTdXBlcmlvcnMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ4IiB3aWR0aD0iNDM4Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+QW4gZWFybHkgdHlwZSA2IGJhbmQuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIGVhcmx5LTE5OTBzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT5kZGSk1fPb3y0hpf95IRuBwmaMi+UH4b+YAsXcJ04lQTnvRw==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dJos|e_L._Piedra ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">José L. Piedra</span><br /><br /><a data-lightbox="brand" href="images\José_L._Piedra_logo_full.jpg"><img class="box" src="images\José_L._Piedra_logo_small.jpg" height="160" alt="José L. Piedra" title="José L. Piedra"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Brevas">Brevas</option><option value="#Cazadores">Cazadores</option><option value="#Conservas">Conservas</option><option value="#Cremas">Cremas</option><option value="#Nacionales">Nacionales</option><option value="#Petit_Cetros">Petit Cetros</option><option value="#Petit_Cazadores">Petit Cazadores</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Panetelitas_de_Hebra">Panetelitas de Hebra</option><option value="#Royal_Palms">Royal Palms</option><option value="#Superiors">Superiors</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />José L. Piedra is a current pre-Revolution brand, established in the 1880s.  <BR />It was temporarily discontinued in the early 1990s and was reinstated in 1996.<BR />It is classified by Habanos SA as a Global brand and has a major market share. Prior to c2007 it was classified as a Multi-local brand.<BR /><BR /><b>Generally</b><BR />The José L. Piedra range comprises medium to full strength cigars, using short-filler tobacco from the lesser <i>Vuelta Arriba</i> region.<BR /> <BR /><b>Releases</b><BR />All but one of the current production cigars were released in 1996. <BR />There have been no Special Releases.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=17">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\José_L._Piedra_band_1153576623full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\José_L._Piedra_band_1153576623small.jpg" height="79" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">1996 to c2002 -- Discontinued</span>
</div></p><p><div><a data-lightbox="bands" href="images\José_L._Piedra_band_1772316763full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\José_L._Piedra_band_1772316763small.jpg" height="79" width="400"  /></a>
<br /><span class="bandhead">Standard Band B</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">c2002 to c2007 -- Discontinued</span>
</div></p><p><div><a data-lightbox="bands" href="images\José_L._Piedra_band_1847646606full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\José_L._Piedra_band_1847646606small.jpg" height="97" width="400"  /></a>
<br /><span class="bandhead">Standard Band C</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">c2007 on -- Current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:108px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L_Piedra__packaging_195full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L_Piedra__packaging_195small.jpg" height="150" width="108"  /></a>
</td></tr><tr><td><span class="bandhead">Brevas</span><br /><span class="band-caption">Bun25 - c1996</span><br /></td></tr></table><table align="left" width="175" style="width:95px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L_Piedra__packaging_193full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L_Piedra__packaging_193small.jpg" height="150" width="95"  /></a>
</td></tr><tr><td><span class="bandhead">Cazadores</span><br /><span class="band-caption">Bun25 - 2003</span><br /></td></tr></table><table align="left" width="175" style="width:107px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L._Piedra_packaging_385full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L._Piedra_packaging_385small.jpg" height="150" width="107"  /></a>
</td></tr><tr><td><span class="bandhead">Panetelitas de Hebra</span><br /><span class="band-caption">B25 - 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:124px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L_Piedra__packaging_196full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L_Piedra__packaging_196small.jpg" height="150" width="124"  /></a>
</td></tr><tr><td><span class="bandhead">Petit Cazadores</span><br /><span class="band-caption">Bun25 - 2007</span><br /></td></tr></table><table align="left" width="175" style="width:126px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L_Piedra__packaging_197full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L_Piedra__packaging_197small.jpg" height="150" width="126"  /></a>
</td></tr><tr><td><span class="bandhead">Petit Cazadores</span><br /><span class="band-caption">P5 - 2007</span><br /></td></tr></table><table align="left" width="175" style="width:179px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L_Piedra__packaging_198full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L_Piedra__packaging_198small.jpg" height="150" width="179"  /></a>
</td></tr><tr><td><span class="bandhead">Petit Cazadores</span><br /><span class="band-caption">CB25bun - 2009</span><br /></td></tr></table><table align="left" width="175" style="width:108px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L._Piedra_packaging_6348full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L._Piedra_packaging_6348small.jpg" height="150" width="108"  /></a>
</td></tr><tr><td><span class="bandhead">Royal Palms</span><br /><span class="band-caption">B25 - 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:121px;"><tr><td><a  data-lightbox="brand-packaging" href="images\José_L._Piedra_packaging_5512full.jpg">
<img class="box" alt="Typical José L. Piedra packaging" title="Typical José L. Piedra packaging" src="images\José_L._Piedra_packaging_5512small.jpg" height="150" width="121"  /></a>
</td></tr><tr><td><span class="bandhead">Superiors</span><br /><span class="band-caption">B25 - 1970s</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Brevas">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Brevas</td><td class="cigarDetailHead-i" style="width:30%">Brevas JLP</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 133<span class="inches" id="i0">&nbsp;(5.2")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:399px">
<a data-lightbox="cigar-6" href="images\José_L._Piedra_Brevas_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Brevas_cigar_full.jpg" alt="Brevas - click to enlarge" title="Brevas - click to enlarge" height="51" width="399">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard bands A, B, C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 1996).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 1996, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1996 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c2002 was machine-made.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cazadores">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cazadores</td><td class="cigarDetailHead-i" style="width:30%">Cazadores JLP</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 152<span class="inches" id="i1">&nbsp;(6.0")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:456px">
<a data-lightbox="cigar-8" href="images\José_L._Piedra_Cazadores_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Cazadores_cigar_full.jpg" alt="Cazadores - click to enlarge" title="Cazadores - click to enlarge" height="54" width="456">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard bands A, B, C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 1996).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 1996, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1996 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c2002 was machine-made.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Conservas">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Conservas</td><td class="cigarDetailHead-i" style="width:30%">Conservas JLP</td><td class="cigarDetailHead" style="text-align:center;width:19%">44 x 140<span class="inches" id="i2">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:420px">
<a data-lightbox="cigar-437" href="images\José_L._Piedra_Conservas_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Conservas_cigar_full.jpg" alt="Conservas - click to enlarge" title="Conservas - click to enlarge" height="61" width="420">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard bands A, B, C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 1996).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 1996, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1996 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cremas">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cremas</td><td class="cigarDetailHead-i" style="width:30%">Cremas JLP</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 136<span class="inches" id="i3">&nbsp;(5.4")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:408px">
<a data-lightbox="cigar-438" href="images\José_L._Piedra_Cremas_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Cremas_cigar_full.jpg" alt="Cremas - click to enlarge" title="Cremas - click to enlarge" height="50" width="408">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard bands A, B, C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 1996).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 1996, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1996 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Nacionales">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Nacionales</td><td class="cigarDetailHead-i" style="width:30%">Nacionales JLP</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 134<span class="inches" id="i4">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:402px">
<a data-lightbox="cigar-439" href="images\José_L._Piedra_Nacionales_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Nacionales_cigar_full.jpg" alt="Nacionales - click to enlarge" title="Nacionales - click to enlarge" height="55" width="402">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard bands A, B, C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 1996).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 1996, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1996 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c2002 was machine-made.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit_Cetros">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit Cetros</td><td class="cigarDetailHead-i" style="width:30%">Petit Cetros JLP</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 127<span class="inches" id="i5">&nbsp;(5.0")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:381px">
<a data-lightbox="cigar-441" href="images\José_L._Piedra_Petit_Cetros_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Petit_Cetros_cigar_full.jpg" alt="Petit Cetros - click to enlarge" title="Petit Cetros - click to enlarge" height="49" width="381">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard bands A, B, C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 1996).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 1996, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1996 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c2002 was machine-made.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit_Cazadores">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit Cazadores</td><td class="cigarDetailHead-i" style="width:30%">Petit Cazadores</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 105<span class="inches" id="i6">&nbsp;(4.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:315px">
<a data-lightbox="cigar-440" href="images\José_L._Piedra_Petit_Cazadores_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Petit_Cazadores_cigar_full.jpg" alt="Petit Cazadores - click to enlarge" title="Petit Cazadores - click to enlarge" height="51" width="315">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade, using short-filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band C.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Cardboard Pack of 5 cigars (released 2007).<br />Cardboard Box of 25 cellophane bundled cigars (released 2009).<br /><span class="pack-disc">Cellophane Wrapped Bundle of 25 cigars (released 2007, discontinued 2009).<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2007 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Panetelitas_de_Hebra">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Panetelitas de Hebra</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">30 x 111<span class="inches" id="i7">&nbsp;(4.4")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:333px">
<a data-lightbox="cigar-464" href="images\José_L._Piedra_Panetelitas_de_Hebra_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Panetelitas_de_Hebra_cigar_full.jpg" alt="Panetelitas de Hebra - click to enlarge" title="Panetelitas de Hebra - click to enlarge" height="36" width="333">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">An early type 4 band.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Royal_Palms">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Royal Palms</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">30 x 140<span class="inches" id="i8">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Slim Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:420px">
<a data-lightbox="cigar-466" href="images\José_L._Piedra_Royal_Palms_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Royal_Palms_cigar_full.jpg" alt="Royal Palms - click to enlarge" title="Royal Palms - click to enlarge" height="38" width="420">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">An early type 5 band.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Superiors">José L. Piedra</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Superiors</td><td class="cigarDetailHead-i" style="width:30%">Superiores</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 146<span class="inches" id="i9">&nbsp;(5.7")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:438px">
<a data-lightbox="cigar-467" href="images\José_L._Piedra_Superiors_cigar_orig.jpg">
<img class="box" src="images\José_L._Piedra_Superiors_cigar_full.jpg" alt="Superiors - click to enlarge" title="Superiors - click to enlarge" height="48" width="438">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">An early type 6 band.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued early-1990s. </td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
