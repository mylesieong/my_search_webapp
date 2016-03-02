


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
var inchLimit = 11;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=44" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT88c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTE7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFqSQ8dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQgY2xhc3M9ImNlbGwtQyI+PGJyIC8+PHNwYW4gY2xhc3M9ImhlYWQxIj5HaXNwZXJ0PC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcR2lzcGVydF9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEdpc3BlcnRfbG9nb19zbWFsbC5qcGciIGhlaWdodD0iMTYwIiBhbHQ9Ikdpc3BlcnQiIHRpdGxlPSJHaXNwZXJ0Ij48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDMiIG5hbWU9IkQzIiBjbGFzcz0iZHJvcGRvd24iPgk8b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ2VuYWRvcmVzX09uZXMiPkNlbmFkb3JlcyBPbmVzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0Nvcm9uYXMiPkNvcm9uYXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ29yb25hc19HcmFuZGVzIj5Db3JvbmFzIEdyYW5kZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjRmFuY3lfVGFsZXMiPkZhbmN5IFRhbGVzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0hhYmFuZXJhc19Oby4yIj5IYWJhbmVyYXMgTm8uMjwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNIYWJhbmVyb3NfTm8uMiI+SGFiYW5lcm9zIE5vLjI8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTWluaWF0dXJlcyI+TWluaWF0dXJlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQYWxtaXRhcyI+UGFsbWl0YXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGFuZXRlbGFzIj5QYW5ldGVsYXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGV0aXRfQ29yb25hc19kZV9MdXhlIj5QZXRpdCBDb3JvbmFzIGRlIEx1eGU8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjVG9sZWRvX0NoaWNvIj5Ub2xlZG8gQ2hpY288L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjVmVsYXMiPlZlbGFzPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48L3NlbGVjdD48YnIgLz48YnIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJjZWxsLUMiPjx0ZCBjbGFzcz0iY2VsbC1DIj48c3BhbiBjbGFzcz1oZWFkMz5CcmFuZCBOb3Rlczwvc3Bhbj48YnIgLz48YnIgLz48Yj5TdGF0dXM8L2I+PEJSIC8+R2lzcGVydCBpcyBhIERpc2NvbnRpbnVlZCBwcmUtcmV2b2x1dGlvbiBIYWJhbm9zIFNBIGJyYW5kLjxCUiAvPkl0IHdhcyBlc3RhYmxpc2hlZCBpbiB0aGUgMTkzMHMsIGFuZCB3YXMgZGlzY29udGludWVkIGNpcmNhIDIwMDUuPEJSIC8+PEJSIC8+PGI+R2VuZXJhbGx5PC9iPjxCUiAvPlRoZXJlIGlzIGEgbm9uLUN1YmFuIGJyYW5kIHdpdGggdGhlIHNhbWUgbmFtZS48QlIgLz48QlIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTQ0Ij5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xHaXNwZXJ0X2JhbmRfNTE5OTEyMjQ0ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xHaXNwZXJ0X2JhbmRfNTE5OTEyMjQ0c21hbGwuanBnIiBoZWlnaHQ9IjExMCIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEE8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+RW1ib3NzZWQuPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlRvIDE5NzBzIC0tIERpc2NvbnRpbnVlZDwvc3Bhbj4NCjwvZGl2PjwvcD48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcR2lzcGVydF9iYW5kXzEzMjU3OTM0NzdmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEdpc3BlcnRfYmFuZF8xMzI1NzkzNDc3c21hbGwuanBnIiBoZWlnaHQ9IjEyOCIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEI8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+RW1ib3NzZWQuPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPjE5NzBzIHRvIDIwMDUgLS0gRGlzY29udGludWVkPC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTQ2cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xHaXNwZXJ0X3BhY2thZ2luZ18xODBmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBHaXNwZXJ0IHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgR2lzcGVydCBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXEdpc3BlcnRfcGFja2FnaW5nXzE4MHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNDYiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q2VuYWRvcmVzIE9uZXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1cCAtIGVhcmx5IDE5NzBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEzN3B4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcR2lzcGVydF9wYWNrYWdpbmdfMzg2M2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIEdpc3BlcnQgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBHaXNwZXJ0IHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcR2lzcGVydF9wYWNrYWdpbmdfMzg2M3NtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMzciICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q29yb25hczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjUgLSAxOTg3PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE0MnB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcR2lzcGVydF9wYWNrYWdpbmdfMTgxZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgR2lzcGVydCBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEdpc3BlcnQgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHaXNwZXJ0X3BhY2thZ2luZ18xODFzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTQyIiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkhhYmFuZXJhcyBOby4yPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNWMgLSAxOTk3PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE0M3B4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcR2lzcGVydF9wYWNrYWdpbmdfMTgyZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgR2lzcGVydCBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIEdpc3BlcnQgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xHaXNwZXJ0X3BhY2thZ2luZ18xODJzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTQzIiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlBldGl0IENvcm9uYXMgZGUgTHV4ZTwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjUgLSAxOTg3PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj48L3RhYmxlPjxiciAvPjwvdGQ+PC90cj4NCmRkAgEPDxYCHwEF5IIBPHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSIgc3R5bGU9ImJvcmRlci10b3A6bm9uZSI+PHRib2R5Pjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ2VuYWRvcmVzX09uZXMiPkdpc3BlcnQ8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+Q2VuYWRvcmVzIE9uZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NCB4IDE1MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMCI+Jm5ic3A7KDUuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbmcgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0NTBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNzAiIGhyZWY9ImltYWdlc1xHaXNwZXJ0X0NlZGFkb3Jlc19PbmVzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR2lzcGVydF9DZWRhZG9yZXNfT25lc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJDZW5hZG9yZXMgT25lcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDZW5hZG9yZXMgT25lcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTkiIHdpZHRoPSI0NTAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEsIEIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBpbmRpdmlkdWFsIGNhcmRib2FyZCBwYWNrLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk3MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDb3JvbmFzIj5HaXNwZXJ0PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MiB4IDE0MjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkNvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDI2cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTcxIiBocmVmPSJpbWFnZXNcR2lzcGVydF9Db3JvbmFzX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR2lzcGVydF9Db3JvbmFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNvcm9uYXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ29yb25hcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTEiIHdpZHRoPSI0MjYiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEsIEIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIGMxOTkzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ29yb25hc19HcmFuZGVzIj5HaXNwZXJ0PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXMgR3JhbmRlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ0IHggMTQzPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjlweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNzIiIGhyZWY9ImltYWdlc1xHaXNwZXJ0X0Nvcm9uYXNfR3JhbmRlc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEdpc3BlcnRfQ29yb25hc19HcmFuZGVzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkNvcm9uYXMgR3JhbmRlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDb3JvbmFzIEdyYW5kZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU2IiB3aWR0aD0iNDI5Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+RWFybHkgbmFtZWQgYmFuZCB0eXBlIDEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDE5NzBzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRmFuY3lfVGFsZXMiPkdpc3BlcnQ8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RmFuY3kgVGFsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NiB4IDExMDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDQuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IFB5cmFtaWQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjUxM3B4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTE3MyIgaHJlZj0iaW1hZ2VzXEdpc3BlcnRfRmFuY3lfVGFsZXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xHaXNwZXJ0X0ZhbmN5X1RhbGVzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkZhbmN5IFRhbGVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkZhbmN5IFRhbGVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2MyIgd2lkdGg9IjUxMyI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQSwgQi48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk3MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJIYWJhbmVyYXNfTm8uMiI+R2lzcGVydDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5IYWJhbmVyYXMgTm8uMjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+U3RhbmRhcmQgTWFubzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQwIHggMTIzPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk0Ij4mbmJzcDsoNC44Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNzVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMjQxIiBocmVmPSJpbWFnZXNcR2lzcGVydF9IYWJhbmVyb3NfTm8uMl9jaWdhcl9vcmlnXzEuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR2lzcGVydF9IYWJhbmVyb3NfTm8uMl9jaWdhcl9mdWxsXzEuanBnIiBhbHQ9IkhhYmFuZXJhcyBOby4yIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkhhYmFuZXJhcyBOby4yIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0NiIgd2lkdGg9IjM3NSI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUgKHNob3J0IGZpbGxlcikuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEsIEIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBjMTk4MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAwNS4gwqA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+UmVwbGFjZWQgdGhlIGhhbmRtYWRlIEhhYmFuZXJvcyBOby4yLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJIYWJhbmVyb3NfTm8uMiI+R2lzcGVydDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5IYWJhbmVyb3MgTm8uMjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM4IHggMTIwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk1Ij4mbmJzcDsoNC43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2hvcnQgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM2MHB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR2lzcGVydF9IYWJhbmVyb3NfTm8uMl9jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IkhhYmFuZXJvcyBOby4yIiB0aXRsZT0iSGFiYW5lcm9zIE5vLjIiIGhlaWdodD0iNDkiIHdpZHRoPSIzNjAiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5FYXJseSBuYW1lZCBiYW5kIHR5cGUgMi48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgYzE5ODAuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5SZXBsYWNlZCBieSB0aGUgbWFjaGluZS1tYWRlIEhhYmFuZXJhcyBOby4yLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJNaW5pYXR1cmVzIj5HaXNwZXJ0PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk1pbmlhdHVyZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zMCB4IDEwMDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNiI+Jm5ic3A7KDMuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNtYWxsIFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMDBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNzYiIGhyZWY9ImltYWdlc1xHaXNwZXJ0X01pbmlhdHVyZXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xHaXNwZXJ0X01pbmlhdHVyZXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iTWluaWF0dXJlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJNaW5pYXR1cmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIzNiIgd2lkdGg9IjMwMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk3MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJQYWxtaXRhcyI+R2lzcGVydDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5QYWxtaXRhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjMyIHggMTUyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk3Ij4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2xpbSBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDU2cHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTc3IiBocmVmPSJpbWFnZXNcR2lzcGVydF9QYWxtaXRhc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEdpc3BlcnRfUGFsbWl0YXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iUGFsbWl0YXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iUGFsbWl0YXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ1IiB3aWR0aD0iNDU2Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAxOTcwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlBhbmV0ZWxhcyI+R2lzcGVydDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5QYW5ldGVsYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zNCB4IDEyNTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpOCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNtYWxsIFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNzVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNzgiIGhyZWY9ImltYWdlc1xHaXNwZXJ0X1BhbmV0ZWxhc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEdpc3BlcnRfUGFuZXRlbGFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IlBhbmV0ZWxhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQYW5ldGVsYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ2IiB3aWR0aD0iMzc1Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+RWFybHkgbmFtZWQgYmFuZCB0eXBlIDMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDE5NzBzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUGV0aXRfQ29yb25hc19kZV9MdXhlIj5HaXNwZXJ0PC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlBldGl0IENvcm9uYXMgZGUgTHV4ZTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTI5PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk5Ij4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozODdweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNzkiIGhyZWY9ImltYWdlc1xHaXNwZXJ0X1BldGl0X0Nvcm9uYXNfZGVfTHV4ZV9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEdpc3BlcnRfUGV0aXRfQ29yb25hc19kZV9MdXhlX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IlBldGl0IENvcm9uYXMgZGUgTHV4ZSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQZXRpdCBDb3JvbmFzIGRlIEx1eGUgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUxIiB3aWR0aD0iMzg3Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLCBCLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCBjMTk5My4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlRvbGVkb19DaGljbyI+R2lzcGVydDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Ub2xlZG8gQ2hpY288L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MyB4IDEwNjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTAiPiZuYnNwOyg0LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMxOHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTE4MCIgaHJlZj0iaW1hZ2VzXEdpc3BlcnRfVG9sZWRvX0NoaWNvX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcR2lzcGVydF9Ub2xlZG9fQ2hpY29fY2lnYXJfZnVsbC5qcGciIGFsdD0iVG9sZWRvIENoaWNvIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlRvbGVkbyBDaGljbyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTUiIHdpZHRoPSIzMTgiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEsIEIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDE5NzBzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iVmVsYXMiPkdpc3BlcnQ8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+VmVsYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zNCB4IDExNzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTEiPiZuYnNwOyg0LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5TbWFsbCBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzUxcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTgxIiBocmVmPSJpbWFnZXNcR2lzcGVydF9WZWxhc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXEdpc3BlcnRfVmVsYXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iVmVsYXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iVmVsYXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ0IiB3aWR0aD0iMzUxIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAxOTcwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+ZGRkPOs1YVxtMm0yPV5O5w2W3yWVtwwaKokCSA76FMOHAz8=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d44 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Gispert</span><br /><br /><a data-lightbox="brand" href="images\Gispert_logo_full.jpg"><img class="box" src="images\Gispert_logo_small.jpg" height="160" alt="Gispert" title="Gispert"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Cenadores_Ones">Cenadores Ones</option><option value="#Coronas">Coronas</option><option value="#Coronas_Grandes">Coronas Grandes</option><option value="#Fancy_Tales">Fancy Tales</option><option value="#Habaneras_No.2">Habaneras No.2</option><option value="#Habaneros_No.2">Habaneros No.2</option><option value="#Miniatures">Miniatures</option><option value="#Palmitas">Palmitas</option><option value="#Panetelas">Panetelas</option><option value="#Petit_Coronas_de_Luxe">Petit Coronas de Luxe</option><option value="#Toledo_Chico">Toledo Chico</option><option value="#Velas">Velas</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Gispert is a Discontinued pre-revolution Habanos SA brand.<BR />It was established in the 1930s, and was discontinued circa 2005.<BR /><BR /><b>Generally</b><BR />There is a non-Cuban brand with the same name.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=44">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Gispert_band_519912244full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Gispert_band_519912244small.jpg" height="110" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Embossed.</span><br /><span class="band-caption">To 1970s -- Discontinued</span>
</div></p><p><div><a data-lightbox="bands" href="images\Gispert_band_1325793477full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Gispert_band_1325793477small.jpg" height="128" width="400"  /></a>
<br /><span class="bandhead">Standard Band B</span><br />
<span class="band-caption2">Embossed.</span><br /><span class="band-caption">1970s to 2005 -- Discontinued</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:146px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Gispert_packaging_180full.jpg">
<img class="box" alt="Typical Gispert packaging" title="Typical Gispert packaging" src="images\Gispert_packaging_180small.jpg" height="150" width="146"  /></a>
</td></tr><tr><td><span class="bandhead">Cenadores Ones</span><br /><span class="band-caption">B25p - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:137px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Gispert_packaging_3863full.jpg">
<img class="box" alt="Typical Gispert packaging" title="Typical Gispert packaging" src="images\Gispert_packaging_3863small.jpg" height="150" width="137"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas</span><br /><span class="band-caption">B25 - 1987</span><br /></td></tr></table><table align="left" width="175" style="width:142px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Gispert_packaging_181full.jpg">
<img class="box" alt="Typical Gispert packaging" title="Typical Gispert packaging" src="images\Gispert_packaging_181small.jpg" height="150" width="142"  /></a>
</td></tr><tr><td><span class="bandhead">Habaneras No.2</span><br /><span class="band-caption">B25c - 1997</span><br /></td></tr></table><table align="left" width="175" style="width:143px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Gispert_packaging_182full.jpg">
<img class="box" alt="Typical Gispert packaging" title="Typical Gispert packaging" src="images\Gispert_packaging_182small.jpg" height="150" width="143"  /></a>
</td></tr><tr><td><span class="bandhead">Petit Coronas de Luxe</span><br /><span class="band-caption">B25 - 1987</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cenadores_Ones">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cenadores Ones</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">44 x 150<span class="inches" id="i0">&nbsp;(5.9")</span></td><td class="cigarDetailHead" style="width:21%">Long Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:450px">
<a data-lightbox="cigar-170" href="images\Gispert_Cedadores_Ones_cigar_orig.jpg">
<img class="box" src="images\Gispert_Cedadores_Ones_cigar_full.jpg" alt="Cenadores Ones - click to enlarge" title="Cenadores Ones - click to enlarge" height="59" width="450">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in individual cardboard pack.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas</td><td class="cigarDetailHead-i" style="width:30%">Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i1">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:426px">
<a data-lightbox="cigar-171" href="images\Gispert_Coronas_cigar_orig.jpg">
<img class="box" src="images\Gispert_Coronas_cigar_full.jpg" alt="Coronas - click to enlarge" title="Coronas - click to enlarge" height="51" width="426">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c1993. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_Grandes">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas Grandes</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">44 x 143<span class="inches" id="i2">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:429px">
<a data-lightbox="cigar-172" href="images\Gispert_Coronas_Grandes_cigar_orig.jpg">
<img class="box" src="images\Gispert_Coronas_Grandes_cigar_full.jpg" alt="Coronas Grandes - click to enlarge" title="Coronas Grandes - click to enlarge" height="56" width="429">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early named band type 1.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Fancy_Tales">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Fancy Tales</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">46 x 110<span class="inches" id="i3">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Petit Pyramid</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:513px">
<a data-lightbox="cigar-173" href="images\Gispert_Fancy_Tales_cigar_orig.jpg">
<img class="box" src="images\Gispert_Fancy_Tales_cigar_full.jpg" alt="Fancy Tales - click to enlarge" title="Fancy Tales - click to enlarge" height="63" width="513">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Habaneras_No.2">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Habaneras No.2</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i4">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:375px">
<a data-lightbox="cigar-1241" href="images\Gispert_Habaneros_No.2_cigar_orig_1.jpg">
<img class="box" src="images\Gispert_Habaneros_No.2_cigar_full_1.jpg" alt="Habaneras No.2 - click to enlarge" title="Habaneras No.2 - click to enlarge" height="46" width="375">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made (short filler).</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A c1980 release. Discontinued 2005.  </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Replaced the handmade Habaneros No.2.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Habaneros_No.2">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Habaneros No.2</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 120<span class="inches" id="i5">&nbsp;(4.7")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:360px">
<img class="box" src="images\Gispert_Habaneros_No.2_cigar_full_0.jpg" alt="Habaneros No.2" title="Habaneros No.2" height="49" width="360">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early named band type 2.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c1980. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Replaced by the machine-made Habaneras No.2.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Miniatures">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Miniatures</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">30 x 100<span class="inches" id="i6">&nbsp;(3.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:300px">
<a data-lightbox="cigar-176" href="images\Gispert_Miniatures_cigar_orig.jpg">
<img class="box" src="images\Gispert_Miniatures_cigar_full.jpg" alt="Miniatures - click to enlarge" title="Miniatures - click to enlarge" height="36" width="300">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Palmitas">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Palmitas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">32 x 152<span class="inches" id="i7">&nbsp;(6.0")</span></td><td class="cigarDetailHead" style="width:21%">Slim Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:456px">
<a data-lightbox="cigar-177" href="images\Gispert_Palmitas_cigar_orig.jpg">
<img class="box" src="images\Gispert_Palmitas_cigar_full.jpg" alt="Palmitas - click to enlarge" title="Palmitas - click to enlarge" height="45" width="456">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Panetelas">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Panetelas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">34 x 125<span class="inches" id="i8">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:375px">
<a data-lightbox="cigar-178" href="images\Gispert_Panetelas_cigar_orig.jpg">
<img class="box" src="images\Gispert_Panetelas_cigar_full.jpg" alt="Panetelas - click to enlarge" title="Panetelas - click to enlarge" height="46" width="375">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early named band type 3.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Petit_Coronas_de_Luxe">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Petit Coronas de Luxe</td><td class="cigarDetailHead-i" style="width:30%">Marevas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i9">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:387px">
<a data-lightbox="cigar-179" href="images\Gispert_Petit_Coronas_de_Luxe_cigar_orig.jpg">
<img class="box" src="images\Gispert_Petit_Coronas_de_Luxe_cigar_full.jpg" alt="Petit Coronas de Luxe - click to enlarge" title="Petit Coronas de Luxe - click to enlarge" height="51" width="387">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c1993. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Toledo_Chico">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Toledo Chico</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 106<span class="inches" id="i10">&nbsp;(4.2")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:318px">
<a data-lightbox="cigar-180" href="images\Gispert_Toledo_Chico_cigar_orig.jpg">
<img class="box" src="images\Gispert_Toledo_Chico_cigar_full.jpg" alt="Toledo Chico - click to enlarge" title="Toledo Chico - click to enlarge" height="55" width="318">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Velas">Gispert</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Velas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">34 x 117<span class="inches" id="i11">&nbsp;(4.6")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:351px">
<a data-lightbox="cigar-181" href="images\Gispert_Velas_cigar_orig.jpg">
<img class="box" src="images\Gispert_Velas_cigar_full.jpg" alt="Velas - click to enlarge" title="Velas - click to enlarge" height="44" width="351">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
