


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Belinda
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Belinda" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT88c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTA7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFxio8dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQgY2xhc3M9ImNlbGwtQyI+PGJyIC8+PHNwYW4gY2xhc3M9ImhlYWQxIj5CZWxpbmRhPC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcQmVsaW5kYV9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEJlbGluZGFfbG9nb19zbWFsbC5qcGciIGhlaWdodD0iMTYwIiBhbHQ9IkJlbGluZGEiIHRpdGxlPSJCZWxpbmRhIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb3JvbmFzXygyKSI+Q29yb25hcyAoMik8L29wdGlvbj4JPC9zZWxlY3Q+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDMiIG5hbWU9IkQzIiBjbGFzcz0iZHJvcGRvd24iPgk8b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQmVsdmVkZXJlcyI+QmVsdmVkZXJlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNDb3JvbmFzXygxKSI+Q29yb25hcyAoMSk8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjRGVtaV9UYXNzZSI+RGVtaSBUYXNzZTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQYW5ldGVsYXMiPlBhbmV0ZWxhczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQZXRpdCI+UGV0aXQ8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGV0aXRfQ29yb25hcyI+UGV0aXQgQ29yb25hczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQZXRpdF9QcmluY2VzcyI+UGV0aXQgUHJpbmNlc3M8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUHJlY2lvc2FzIj5QcmVjaW9zYXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUHJpbmNlc3MiPlByaW5jZXNzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1N1cGVyZmlub3MiPlN1cGVyZmlub3M8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5CZWxpbmRhIGlzIGEgQ3VycmVudCBJQ1QgbWFjaGluZS1tYWRlIGJyYW5kLiA8QlIgLz5JdCB3YXMgYSBwcmUtcmV2b2x1dGlvbiBIYWJhbm9zIFNBIGJyYW5kIGVzdGFibGlzaGVkIGluIDE4ODIgYW5kIGxhcHNlZCBlYXJseSB0byBtaWQgMTk2MHMuICA8QlIgLz5JdCB3YXMgcmVpbnRyb2R1Y2VkIGluIDE5ODkgYW5kIHdhcyBkZWxldGVkIGZyb20gSGFiYW5vcyBwb3J0Zm9saW8gY2lyY2EgMjAwNS48QlIgLz5JdCBpcyBub3cgcHJvZHVjZWQgaW4gQ3ViYSBieSBJbnRlcm5hY2lvbmFsIEN1YmFuYSBkZSBUYWJhY29zIFMuQS4gKElDVCkgdW5kZXIgbGljZW5zZSB0byBIYWJhbm9zIFMuQS48QlIgLz48QlIgLz48Yj5HZW5lcmFsbHk8L2I+PEJSIC8+VGhlIHJhbmdlIGNvbXByaXNlZCBtZWRpdW0gc3RyZW5ndGggY2lnYXJzLiAgPEJSIC8+QmVmb3JlIGNpcmNhIDIwMDUgdGhlIGNpZ2FycyB3ZXJlIG1hY2hpbmUtbWFkZSB3aXRoIGxvbmctZmlsbGVyIHRvYmFjY28sIGJ1dCBhcmUgbm93IG1hZGUgdXNpbmcgc2hvcnQtZmlsbGVyIHRvYmFjY28uIDxCUiAvPlRoZXJlIGlzIGEgbm9uLUN1YmFuIGJyYW5kIHdpdGggdGhlIHNhbWUgbmFtZS4gPEJSIC8+PEJSIC8+PGI+UmVsZWFzZXM8L2I+PEJSIC8+VGhlIGJyYW5kIGN1cnJlbnRseSBjb25zaXN0cyBvZiBhIHNpbmdsZSBtYWNoaW5lLW1hZGUgY2lnYXIuPEJSIC8+SW4gY2lyY2EgMjAwNSB0aGUgQ29yb25hcyB3YXMgcmVpbnN0YXRlZCBpbiBhIHJldmlzZWQgdml0b2xhIHNpemUgYW5kIHByZXNlbnRlZCBpbiBhIHBsYXN0aWMgdHViZS4gPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD0zOCI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcQmVsaW5kYV9iYW5kXzE3MzY2NzcxNzlmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEJlbGluZGFfYmFuZF8xNzM2Njc3MTc5c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEE8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+TGVzcyBlbWJvc3NpbmcgdGhhbiBlYXJsaWVyIGJhbmRzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPjE5ODkgdG8gYzIwMDU8L3NwYW4+DQo8L2Rpdj48L3A+PHA+PGRpdj48YSBkYXRhLWxpZ2h0Ym94PSJiYW5kcyIgaHJlZj0iaW1hZ2VzXEJlbGluZGFfYmFuZF85Nzg2NjkzNzVmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEJlbGluZGFfYmFuZF85Nzg2NjkzNzVzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQjwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5GaXJzdCBJQ1QgYmFuZC4gIEVtYm9zc2VkLjwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5jMjAwNSBvbjwvc3Bhbj4NCjwvZGl2PjwvcD48L2Rpdj48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+DQo8dHI+PHRkIGNsYXNzPSJicmFuZF90YWJsZSI+PHNwYW4gY2xhc3M9ImhlYWQzIj5TdGFuZGFyZCBQcm9kdWN0aW9uIFBhY2thZ2luZzwvc3Bhbj48YnIgLz48YnIgLz4NCjx0YWJsZSBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjIwMnB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfMjI2NmZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEJlbGluZGEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBCZWxpbmRhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfMjI2NnNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMDIiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q29yb25hcyAoMSk8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1YyAtIDE5OTBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEwMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfODA5M2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEJlbGluZGEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBCZWxpbmRhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfODA5M3NtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMDAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q29yb25hcyAoMik8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjIwcHQgLSAyMDA4PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEzMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfNTU1OGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEJlbGluZGEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBCZWxpbmRhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfNTU1OHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMzAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+UGV0aXQgUHJpbmNlc3M8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1YyAtIDE5OTBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEzNHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfMTQyOGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEJlbGluZGEgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBCZWxpbmRhIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcQmVsaW5kYV9wYWNrYWdpbmdfMTQyOHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMzQiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+UHJpbmNlc3M8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1YyAtIDE5OTY8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPjwvdGFibGU+PGJyIC8+PC90ZD48L3RyPg0KZGQCAQ8PFgIfAQXdfjx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiIHN0eWxlPSJib3JkZXItdG9wOm5vbmUiPjx0Ym9keT48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDb3JvbmFzXygyKSI+QmVsaW5kYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db3JvbmFzICgyKTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q3Jpc3RhbGVzIE1hbm88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MSB4IDE1MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMCI+Jm5ic3A7KDUuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbmcgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1MDRweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMjYiIGhyZWY9ImltYWdlc1xCZWxpbmRhX0Nvcm9uYXNfY2lnYXJfb3JpZ180LmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEJlbGluZGFfQ29yb25hc19jaWdhcl9mdWxsXzQuanBnIiBhbHQ9IkNvcm9uYXMgKDIpIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uYXMgKDIpIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2NiIgd2lkdGg9IjUwNCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDUwcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTI2IiBocmVmPSJpbWFnZXNcQmVsaW5kYV9Db3JvbmFzX2NpZ2FyX29yaWdfNS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX0Nvcm9uYXNfY2lnYXJfZnVsbF81LmpwZyIgYWx0PSJDb3JvbmFzICgyKSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDb3JvbmFzICgyKSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTIiIHdpZHRoPSI0NTAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBzaG9ydCBmaWxsZXIgdG9iYWNjbzwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBCPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InR1YmVub3RlaGVhZCI+VHViZXM6PC90ZD48dGQgY2xhc3M9InR1YmVub3RlIj5QbGFzdGljIHR1YmVzIGludHJvZHVjZWQgYzIwMDYuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+TnVtYmVyZWQgRHJlc3MgQm94IG9mIDEwIGNpZ2FycyAoNzAwMCBib3hlcyByZWxlYXNlZCkuPGJyIC8+TnVtYmVyZWQgRHJlc3MgQm94IG9mIDEwIGNpZ2FycyAoNzAwMCBib3hlcyByZWxlYXNlZCkuPGJyIC8+Q2FyZGJvYXJkIFBhY2sgb2YgMyBjaWdhcnMgaW4gcGxhc3RpYyB0dWJlcy48YnIgLz5EcmVzcyBCb3ggb2YgMjAgY2lnYXJzIGluIHBsYXN0aWMgdHViZXMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIGMyMDA1IHJlbGVhc2UuIFN0YXR1cyB1bmNlcnRhaW4uIFByb2JhYmx5IERpc2NvbnRpbnVlZC48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQmVsdmVkZXJlcyI+QmVsaW5kYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5CZWx2ZWRlcmVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5CZWx2ZWRlcmVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzkgeCAxMjU8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEiPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6Mzc1cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTE3IiBocmVmPSJpbWFnZXNcQmVsaW5kYV9CZWx2ZWRlcmVzX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcQmVsaW5kYV9CZWx2ZWRlcmVzX2Z1bGwuanBnIiBhbHQ9IkJlbHZlZGVyZXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQmVsdmVkZXJlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTAiIHdpZHRoPSIzNzUiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBsb25nIGZpbGxlciB0b2JhY2NvLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4OSByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAwMy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkNvcm9uYXNfKDEpIj5CZWxpbmRhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXMgKDEpPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5DcmVtYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MCB4IDE0MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMiI+Jm5ic3A7KDUuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkNvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDMwcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTUyMSIgaHJlZj0iaW1hZ2VzXEJlbGluZGFfQ29yb25hc18oMSlfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX0Nvcm9uYXNfKDEpX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNvcm9uYXMgKDEpIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uYXMgKDEpIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1MiIgd2lkdGg9IjQzMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUsIHVzaW5nIGxvbmcgZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEE8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODkgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDUuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJEZW1pX1Rhc3NlIj5CZWxpbmRhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkRlbWkgVGFzc2U8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkRlbWkgVGFzc2U8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zMiB4IDEwMDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDMuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNtYWxsIFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMDBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMjciIGhyZWY9ImltYWdlc1xCZWxpbmRhX0RlbWlfVGFzc2Vfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX0RlbWlfVGFzc2VfZnVsbC5qcGciIGFsdD0iRGVtaSBUYXNzZSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJEZW1pIFRhc3NlIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0MiIgd2lkdGg9IjMwMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUsIHVzaW5nIGxvbmcgZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTg5IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDA1LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUGFuZXRlbGFzIj5CZWxpbmRhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlBhbmV0ZWxhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+U3BvcnRzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzUgeCAxMTc8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTQiPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzUxcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTI4IiBocmVmPSJpbWFnZXNcQmVsaW5kYV9QYW5ldGVsYXNfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX1BhbmV0ZWxhc19mdWxsLmpwZyIgYWx0PSJQYW5ldGVsYXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iUGFuZXRlbGFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1MCIgd2lkdGg9IjM1MSI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUsIHVzaW5nIGxvbmcgZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTg5IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDAzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUGV0aXQiPkJlbGluZGE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQ8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlBldGl0PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzEgeCAxMDg8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTUiPiZuYnNwOyg0LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzI0cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTI5IiBocmVmPSJpbWFnZXNcQmVsaW5kYV9QZXRpdF9fb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX1BldGl0X19mdWxsLmpwZyIgYWx0PSJQZXRpdCAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQZXRpdCAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDciIHdpZHRoPSIzMjQiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBsb25nIGZpbGxlciB0b2JhY2NvLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4OSByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAwMy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlBldGl0X0Nvcm9uYXMiPkJlbGluZGE8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgQ29yb25hczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgQ29yb25hczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTI5PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk2Ij4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozODdweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMzAiIGhyZWY9ImltYWdlc1xCZWxpbmRhX1BldGl0X0Nvcm9uYXNfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX1BldGl0X0Nvcm9uYXNfZnVsbC5qcGciIGFsdD0iUGV0aXQgQ29yb25hcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQZXRpdCBDb3JvbmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NiIgd2lkdGg9IjM4NyI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUsIHVzaW5nIGxvbmcgZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+Q2FyZGJvYXJkIFBhY2sgb2YgNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODkgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDUuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJQZXRpdF9QcmluY2VzcyI+QmVsaW5kYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5QZXRpdCBQcmluY2VzczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+RXBpY3VyZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zNSB4IDExMDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNyI+Jm5ic3A7KDQuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMzBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMzEiIGhyZWY9ImltYWdlc1xCZWxpbmRhX1BldGl0X1ByaW5jZXNzX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcQmVsaW5kYV9QZXRpdF9QcmluY2Vzc19mdWxsLmpwZyIgYWx0PSJQZXRpdCBQcmluY2VzcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQZXRpdCBQcmluY2VzcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDUiIHdpZHRoPSIzMzAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBsb25nIGZpbGxlciB0b2JhY2NvLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTg5IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDAyLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUHJlY2lvc2FzIj5CZWxpbmRhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlByZWNpb3NhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+RGVtaSBUYXNzZTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjMyIHggMTAwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk4Ij4mbmJzcDsoMy45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U21hbGwgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMwMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEzMiIgaHJlZj0iaW1hZ2VzXEJlbGluZGFfUHJlY2lvc2FzX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcQmVsaW5kYV9QcmVjaW9zYXNfZnVsbC5qcGciIGFsdD0iUHJlY2lvc2FzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlByZWNpb3NhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDIiIHdpZHRoPSIzMDAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLCB1c2luZyBsb25nIGZpbGxlciB0b2JhY2NvLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4OSByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAwMi4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlByaW5jZXNzIj5CZWxpbmRhPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlByaW5jZXNzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5FcGljdXJlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM1IHggMTEwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk5Ij4mbmJzcDsoNC4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2hvcnQgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMzMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEzMyIgaHJlZj0iaW1hZ2VzXEJlbGluZGFfUHJpbmNlc3Nfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xCZWxpbmRhX1ByaW5jZXNzX2Z1bGwuanBnIiBhbHQ9IlByaW5jZXNzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlByaW5jZXNzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0NyIgd2lkdGg9IjMzMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUsIHVzaW5nIGxvbmcgZmlsbGVyIHRvYmFjY28uPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTg5IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDAzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iU3VwZXJmaW5vcyI+QmVsaW5kYTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5TdXBlcmZpbm9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Db3Jvbml0YXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MCB4IDExNzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTAiPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM1MXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEzNCIgaHJlZj0iaW1hZ2VzXEJlbGluZGFfU3VwZXJmaW5vc19vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEJlbGluZGFfU3VwZXJmaW5vc19mdWxsLmpwZyIgYWx0PSJTdXBlcmZpbm9zIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlN1cGVyZmlub3MgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU0IiB3aWR0aD0iMzUxIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZSwgdXNpbmcgbG9uZyBmaWxsZXIgdG9iYWNjby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODkgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDIuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPmRkZH+3I/bjeoWT4Aq3BsYwZrLd+4urkO4PBOtHezdTDUbd" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dBelinda ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Belinda</span><br /><br /><a data-lightbox="brand" href="images\Belinda_logo_full.jpg"><img class="box" src="images\Belinda_logo_small.jpg" height="160" alt="Belinda" title="Belinda"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Coronas_(2)">Coronas (2)</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Belvederes">Belvederes</option><option value="#Coronas_(1)">Coronas (1)</option><option value="#Demi_Tasse">Demi Tasse</option><option value="#Panetelas">Panetelas</option><option value="#Petit">Petit</option><option value="#Petit_Coronas">Petit Coronas</option><option value="#Petit_Princess">Petit Princess</option><option value="#Preciosas">Preciosas</option><option value="#Princess">Princess</option><option value="#Superfinos">Superfinos</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Belinda is a Current ICT machine-made brand. <BR />It was a pre-revolution Habanos SA brand established in 1882 and lapsed early to mid 1960s.  <BR />It was reintroduced in 1989 and was deleted from Habanos portfolio circa 2005.<BR />It is now produced in Cuba by Internacional Cubana de Tabacos S.A. (ICT) under license to Habanos S.A.<BR /><BR /><b>Generally</b><BR />The range comprised medium strength cigars.  <BR />Before circa 2005 the cigars were machine-made with long-filler tobacco, but are now made using short-filler tobacco. <BR />There is a non-Cuban brand with the same name. <BR /><BR /><b>Releases</b><BR />The brand currently consists of a single machine-made cigar.<BR />In circa 2005 the Coronas was reinstated in a revised vitola size and presented in a plastic tube. <BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=38">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Belinda_band_1736677179full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Belinda_band_1736677179small.jpg" height="150" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Less embossing than earlier bands</span><br /><span class="band-caption">1989 to c2005</span>
</div></p><p><div><a data-lightbox="bands" href="images\Belinda_band_978669375full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Belinda_band_978669375small.jpg" height="150" width="400"  /></a>
<br /><span class="bandhead">Standard Band B</span><br />
<span class="band-caption2">First ICT band.  Embossed.</span><br /><span class="band-caption">c2005 on</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:202px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Belinda_packaging_2266full.jpg">
<img class="box" alt="Typical Belinda packaging" title="Typical Belinda packaging" src="images\Belinda_packaging_2266small.jpg" height="150" width="202"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas (1)</span><br /><span class="band-caption">B25c - 1990s</span><br /></td></tr></table><table align="left" width="175" style="width:100px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Belinda_packaging_8093full.jpg">
<img class="box" alt="Typical Belinda packaging" title="Typical Belinda packaging" src="images\Belinda_packaging_8093small.jpg" height="150" width="100"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas (2)</span><br /><span class="band-caption">B20pt - 2008</span><br /></td></tr></table><table align="left" width="175" style="width:130px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Belinda_packaging_5558full.jpg">
<img class="box" alt="Typical Belinda packaging" title="Typical Belinda packaging" src="images\Belinda_packaging_5558small.jpg" height="150" width="130"  /></a>
</td></tr><tr><td><span class="bandhead">Petit Princess</span><br /><span class="band-caption">B25c - 1990s</span><br /></td></tr></table><table align="left" width="175" style="width:134px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Belinda_packaging_1428full.jpg">
<img class="box" alt="Typical Belinda packaging" title="Typical Belinda packaging" src="images\Belinda_packaging_1428small.jpg" height="150" width="134"  /></a>
</td></tr><tr><td><span class="bandhead">Princess</span><br /><span class="band-caption">B25c - 1996</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_(2)">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas (2)</td><td class="cigarDetailHead-i" style="width:30%">Cristales Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">41 x 150<span class="inches" id="i0">&nbsp;(5.9")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:504px">
<a data-lightbox="cigar-126" href="images\Belinda_Coronas_cigar_orig_4.jpg">
<img class="box" src="images\Belinda_Coronas_cigar_full_4.jpg" alt="Coronas (2) - click to enlarge" title="Coronas (2) - click to enlarge" height="66" width="504">
</a>
<br /><!-- after the image break -->
</div>
<div style="clear:both;padding-right:24px;width:450px">
<a data-lightbox="cigar-126" href="images\Belinda_Coronas_cigar_orig_5.jpg">
<img class="box" src="images\Belinda_Coronas_cigar_full_5.jpg" alt="Coronas (2) - click to enlarge" title="Coronas (2) - click to enlarge" height="52" width="450">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using short filler tobacco</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B</td></tr><tr><td class="tubenotehead">Tubes:</td><td class="tubenote">Plastic tubes introduced c2006.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Numbered Dress Box of 10 cigars (7000 boxes released).<br />Numbered Dress Box of 10 cigars (7000 boxes released).<br />Cardboard Pack of 3 cigars in plastic tubes.<br />Dress Box of 20 cigars in plastic tubes.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A c2005 release. Status uncertain. Probably Discontinued.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Belvederes">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Belvederes</td><td class="cigarDetailHead-i" style="width:30%">Belvederes</td><td class="cigarDetailHead" style="text-align:center;width:19%">39 x 125<span class="inches" id="i1">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:375px">
<a data-lightbox="cigar-117" href="images\Belinda_Belvederes_orig.jpg">
<img class="box" src="images\Belinda_Belvederes_full.jpg" alt="Belvederes - click to enlarge" title="Belvederes - click to enlarge" height="50" width="375">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_(1)">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas (1)</td><td class="cigarDetailHead-i" style="width:30%">Cremas</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 140<span class="inches" id="i2">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:430px">
<a data-lightbox="cigar-1521" href="images\Belinda_Coronas_(1)_cigar_orig.jpg">
<img class="box" src="images\Belinda_Coronas_(1)_cigar_full.jpg" alt="Coronas (1) - click to enlarge" title="Coronas (1) - click to enlarge" height="52" width="430">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2005. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Demi_Tasse">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Demi Tasse</td><td class="cigarDetailHead-i" style="width:30%">Demi Tasse</td><td class="cigarDetailHead" style="text-align:center;width:19%">32 x 100<span class="inches" id="i3">&nbsp;(3.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:300px">
<a data-lightbox="cigar-127" href="images\Belinda_Demi_Tasse_orig.jpg">
<img class="box" src="images\Belinda_Demi_Tasse_full.jpg" alt="Demi Tasse - click to enlarge" title="Demi Tasse - click to enlarge" height="42" width="300">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2005. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Panetelas">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Panetelas</td><td class="cigarDetailHead-i" style="width:30%">Sports</td><td class="cigarDetailHead" style="text-align:center;width:19%">35 x 117<span class="inches" id="i4">&nbsp;(4.6")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:351px">
<a data-lightbox="cigar-128" href="images\Belinda_Panetelas_orig.jpg">
<img class="box" src="images\Belinda_Panetelas_full.jpg" alt="Panetelas - click to enlarge" title="Panetelas - click to enlarge" height="50" width="351">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit</td><td class="cigarDetailHead-i" style="width:30%">Petit</td><td class="cigarDetailHead" style="text-align:center;width:19%">31 x 108<span class="inches" id="i5">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:324px">
<a data-lightbox="cigar-129" href="images\Belinda_Petit__orig.jpg">
<img class="box" src="images\Belinda_Petit__full.jpg" alt="Petit - click to enlarge" title="Petit - click to enlarge" height="47" width="324">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit_Coronas">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit Coronas</td><td class="cigarDetailHead-i" style="width:30%">Petit Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i6">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:387px">
<a data-lightbox="cigar-130" href="images\Belinda_Petit_Coronas_orig.jpg">
<img class="box" src="images\Belinda_Petit_Coronas_full.jpg" alt="Petit Coronas - click to enlarge" title="Petit Coronas - click to enlarge" height="56" width="387">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars in cellophane.<br />Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2005. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit_Princess">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit Princess</td><td class="cigarDetailHead-i" style="width:30%">Epicures</td><td class="cigarDetailHead" style="text-align:center;width:19%">35 x 110<span class="inches" id="i7">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:330px">
<a data-lightbox="cigar-131" href="images\Belinda_Petit_Princess_orig.jpg">
<img class="box" src="images\Belinda_Petit_Princess_full.jpg" alt="Petit Princess - click to enlarge" title="Petit Princess - click to enlarge" height="45" width="330">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars in cellophane.<br />Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2002. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Preciosas">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Preciosas</td><td class="cigarDetailHead-i" style="width:30%">Demi Tasse</td><td class="cigarDetailHead" style="text-align:center;width:19%">32 x 100<span class="inches" id="i8">&nbsp;(3.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:300px">
<a data-lightbox="cigar-132" href="images\Belinda_Preciosas_orig.jpg">
<img class="box" src="images\Belinda_Preciosas_full.jpg" alt="Preciosas - click to enlarge" title="Preciosas - click to enlarge" height="42" width="300">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2002. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Princess">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Princess</td><td class="cigarDetailHead-i" style="width:30%">Epicures</td><td class="cigarDetailHead" style="text-align:center;width:19%">35 x 110<span class="inches" id="i9">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:330px">
<a data-lightbox="cigar-133" href="images\Belinda_Princess_orig.jpg">
<img class="box" src="images\Belinda_Princess_full.jpg" alt="Princess - click to enlarge" title="Princess - click to enlarge" height="47" width="330">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Superfinos">Belinda</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Superfinos</td><td class="cigarDetailHead-i" style="width:30%">Coronitas</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 117<span class="inches" id="i10">&nbsp;(4.6")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:351px">
<a data-lightbox="cigar-134" href="images\Belinda_Superfinos_orig.jpg">
<img class="box" src="images\Belinda_Superfinos_full.jpg" alt="Superfinos - click to enlarge" title="Superfinos - click to enlarge" height="54" width="351">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made, using long filler tobacco.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2002. </td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
