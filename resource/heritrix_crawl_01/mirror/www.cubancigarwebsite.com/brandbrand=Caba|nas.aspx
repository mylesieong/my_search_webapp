


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Cabañas
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
var inchLimit = 6;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Caba%7cnas" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gNjsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQXiFjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkNhYmHDsWFzPC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcQ2FiYcOxYXNfbG9nb19mdWxsLmpwZyI+PGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xDYWJhw7Fhc19sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iQ2FiYcOxYXMiIHRpdGxlPSJDYWJhw7FhcyI+PC9hPjxiciAvPjxiciAvPjxzZWxlY3Qgb25jaGFuZ2U9IkZQX2p1bXBNZW51KHRoaXMsJ3dpbmRvdycsZmFsc2UpIiBpZD0iaWQzIiBuYW1lPSJEMyIgY2xhc3M9ImRyb3Bkb3duIj4JPG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0JlbHZlZGVyZXMiPkJlbHZlZGVyZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ2hpcXVpdG9zIj5DaGlxdWl0b3M8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ29yb25pdGFzIj5Db3Jvbml0YXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGVyZmVjdG9zIj5QZXJmZWN0b3M8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUHJlY2lvc2FzIj5QcmVjaW9zYXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjU3VhdmVzIj5TdWF2ZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjU3VwZXJmaW5vcyI+U3VwZXJmaW5vczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PGJyIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iY2VsbC1DIj48dGQgY2xhc3M9ImNlbGwtQyI+PHNwYW4gY2xhc3M9aGVhZDM+QnJhbmQgTm90ZXM8L3NwYW4+PGJyIC8+PGJyIC8+PGI+U3RhdHVzPC9iPjxCUiAvPkNhYmHDsWFzIGlzIGEgRGlzY29udGludWVkIHByZS1yZXZvbHV0aW9uIEhhYmFub3MgU0EgYnJhbmQuPGJyIC8+SXQgd2FzIGVzdGFibGlzaGVkIGluIDE4MTAgYW5kIHByb2R1Y3Rpb24gbGFwc2VkIGNpcmNhIDE5NjIuPGJyIC8+IEl0IHdhcyByZWludHJvZHVjZWQgaW4gMTk4OSBhbmQgd2FzIGZpbmFsbHkgZGVsZXRlZCBmcm9tIEhhYmFub3MgcG9ydGZvbGlvIGNpcmNhIDIwMDUuIDxiciAvPkl0IHdhcyBjbGFzc2lmaWVkIGJ5IEhhYmFub3MgYXMgYSBMb2NhbCBicmFuZCBhbmQgaGFkIGEgbWlub3IgbWFya2V0IHNoYXJlLjxCUiAvPjxCUiAvPjxiPkdlbmVyYWxseTwvYj48QlIgLz5UaGUgcG9zdC0xOTg5IHJhbmdlIGNvbXByaXNlZCBmdWxsIHN0cmVuZ3RoIGNpZ2FycyB1c2luZyB0b2JhY2NvIGZyb20gdGhlIDxpPlZ1ZWx0YSBBYmFqbzwvaT4gcmVnaW9uLjxCUiAvPlRoZXJlIGlzIGEgbm9uLUN1YmFuIGJyYW5kIHdpdGggdGhlIHNhbWUgbmFtZS48QlIgLz48YnIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTM5Ij5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xDYWJhw7Fhc19iYW5kXzEzOTUwNjEzOTBmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXENhYmHDsWFzX2JhbmRfMTM5NTA2MTM5MHNtYWxsLmpwZyIgaGVpZ2h0PSIxMTgiIHdpZHRoPSI0MDAiICAvPjwvYT4NCjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+U3RhbmRhcmQgQmFuZCBBPC9zcGFuPjxiciAvPg0KPHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbjIiPkxlc3MgZW1ib3NzaW5nPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPjE5ODkgdG8gYzIwMDUgLS0gRGlzY29udGludWVkPC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTI3cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xDYWJhw7Fhc19wYWNrYWdpbmdfMTQ4ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgQ2FiYcOxYXMgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBDYWJhw7FhcyBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXENhYmHDsWFzX3BhY2thZ2luZ18xNDhzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTI3IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlBlcmZlY3Rvczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjVjIC0gMTk5Nzwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+PC90YWJsZT48YnIgLz48L3RkPjwvdHI+DQpkZAIBDw8WAh8BBYVMPHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSIgc3R5bGU9ImJvcmRlci10b3A6bm9uZSI+PHRib2R5Pjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQmVsdmVkZXJlcyI+Q2FiYcOxYXM8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+QmVsdmVkZXJlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+QmVsdmVkZXJlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM5IHggMTI1PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkwIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2hvcnQgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM3NXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEzNSIgaHJlZj0iaW1hZ2VzXENhYmHDsWFzX0JlbHZlZGVyZXNfY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXENhYmHDsWFzX0JlbHZlZGVyZXNfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJCZWx2ZWRlcmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkJlbHZlZGVyZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ0IiB3aWR0aD0iMzc1Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODkgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDUuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDaGlxdWl0b3MiPkNhYmHDsWFzPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNoaXF1aXRvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+SW5mYW50ZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zNyB4IDk4PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxIj4mbmJzcDsoMy45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgUGVyZmVjdG88L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjI5NHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEzNiIgaHJlZj0iaW1hZ2VzXENhYmHDsWFzX0NoaXF1aXRvc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXENhYmHDsWFzX0NoaXF1aXRvc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJDaGlxdWl0b3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2hpcXVpdG9zIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0NSIgd2lkdGg9IjI5NCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTg5IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDAzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iQ29yb25pdGFzIj5DYWJhw7FhczwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db3Jvbml0YXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNoaWNvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjI5IHggMTA2PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNC4yIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q2lnYXJpbGxvPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMThweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMzciIGhyZWY9ImltYWdlc1xDYWJhw7Fhc19Db3Jvbml0YXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xDYWJhw7Fhc19Db3Jvbml0YXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iQ29yb25pdGFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uaXRhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDAiIHdpZHRoPSIzMTgiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4OSByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAwMy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlBlcmZlY3RvcyI+Q2FiYcOxYXM8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGVyZmVjdG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5QZXJmZWN0b3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NCB4IDEyNzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDUuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IFBlcmZlY3RvPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozOTNweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMzgiIGhyZWY9ImltYWdlc1xDYWJhw7Fhc19QZXJmZWN0b3NfY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXENhYmHDsWFzX1BlcmZlY3Rvc19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IlBlcmZlY3RvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJQZXJmZWN0b3MgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU2IiB3aWR0aD0iMzkzIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODkgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJQcmVjaW9zYXMiPkNhYmHDsWFzPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlByZWNpb3NhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+RGVtaSBUYXNzZTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjMyIHggMTAwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk0Ij4mbmJzcDsoMy45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U21hbGwgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMwMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTEzOSIgaHJlZj0iaW1hZ2VzXENhYmHDsWFzX1ByZWNpb3Nhc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXENhYmHDsWFzX1ByZWNpb3Nhc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJQcmVjaW9zYXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iUHJlY2lvc2FzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIzOSIgd2lkdGg9IjMwMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTg5IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDA1LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iU3VhdmVzIj5DYWJhw7FhczwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5TdWF2ZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlNwb3J0czwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM1IHggMTE3PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk1Ij4mbmJzcDsoNC42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U2hvcnQgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM1MXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTE0MCIgaHJlZj0iaW1hZ2VzXENhYmHDsWFzX1N1YXZlc19jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcQ2FiYcOxYXNfU3VhdmVzX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iU3VhdmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlN1YXZlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDUiIHdpZHRoPSIzNTEiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk4OSByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAwMi4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlN1cGVyZmlub3MiPkNhYmHDsWFzPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlN1cGVyZmlub3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uaXRhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQwIHggMTE3PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk2Ij4mbmJzcDsoNC42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNTFweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNDEiIGhyZWY9ImltYWdlc1xDYWJhw7Fhc19TdXBlcmZpbm9zX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcQ2FiYcOxYXNfU3VwZXJmaW5vc19jaWdhcl9mdWxsLmpwZyIgYWx0PSJTdXBlcmZpbm9zIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlN1cGVyZmlub3MgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ4IiB3aWR0aD0iMzUxIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODkgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMDMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPmRkZA9L8zfUzW5HJAd92qdY4nplDPS2npr9oELBN5QyG4tU" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dCaba|nas ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Cabañas</span><br /><br /><a data-lightbox="brand" href="images\Cabañas_logo_full.jpg"><img class="box" src="images\Cabañas_logo_small.jpg" height="160" alt="Cabañas" title="Cabañas"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Belvederes">Belvederes</option><option value="#Chiquitos">Chiquitos</option><option value="#Coronitas">Coronitas</option><option value="#Perfectos">Perfectos</option><option value="#Preciosas">Preciosas</option><option value="#Suaves">Suaves</option><option value="#Superfinos">Superfinos</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Cabañas is a Discontinued pre-revolution Habanos SA brand.<br />It was established in 1810 and production lapsed circa 1962.<br /> It was reintroduced in 1989 and was finally deleted from Habanos portfolio circa 2005. <br />It was classified by Habanos as a Local brand and had a minor market share.<BR /><BR /><b>Generally</b><BR />The post-1989 range comprised full strength cigars using tobacco from the <i>Vuelta Abajo</i> region.<BR />There is a non-Cuban brand with the same name.<BR /><br /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=39">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Cabañas_band_1395061390full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Cabañas_band_1395061390small.jpg" height="118" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Less embossing</span><br /><span class="band-caption">1989 to c2005 -- Discontinued</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:127px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Cabañas_packaging_148full.jpg">
<img class="box" alt="Typical Cabañas packaging" title="Typical Cabañas packaging" src="images\Cabañas_packaging_148small.jpg" height="150" width="127"  /></a>
</td></tr><tr><td><span class="bandhead">Perfectos</span><br /><span class="band-caption">B25c - 1997</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Belvederes">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Belvederes</td><td class="cigarDetailHead-i" style="width:30%">Belvederes</td><td class="cigarDetailHead" style="text-align:center;width:19%">39 x 125<span class="inches" id="i0">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:375px">
<a data-lightbox="cigar-135" href="images\Cabañas_Belvederes_cigar_orig_0.jpg">
<img class="box" src="images\Cabañas_Belvederes_cigar_full_0.jpg" alt="Belvederes - click to enlarge" title="Belvederes - click to enlarge" height="44" width="375">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2005. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Chiquitos">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Chiquitos</td><td class="cigarDetailHead-i" style="width:30%">Infantes</td><td class="cigarDetailHead" style="text-align:center;width:19%">37 x 98<span class="inches" id="i1">&nbsp;(3.9")</span></td><td class="cigarDetailHead" style="width:21%">Petit Perfecto</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:294px">
<a data-lightbox="cigar-136" href="images\Cabañas_Chiquitos_cigar_orig.jpg">
<img class="box" src="images\Cabañas_Chiquitos_cigar_full.jpg" alt="Chiquitos - click to enlarge" title="Chiquitos - click to enlarge" height="45" width="294">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronitas">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronitas</td><td class="cigarDetailHead-i" style="width:30%">Chicos</td><td class="cigarDetailHead" style="text-align:center;width:19%">29 x 106<span class="inches" id="i2">&nbsp;(4.2")</span></td><td class="cigarDetailHead" style="width:21%">Cigarillo</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:318px">
<a data-lightbox="cigar-137" href="images\Cabañas_Coronitas_cigar_orig.jpg">
<img class="box" src="images\Cabañas_Coronitas_cigar_full.jpg" alt="Coronitas - click to enlarge" title="Coronitas - click to enlarge" height="40" width="318">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Perfectos">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Perfectos</td><td class="cigarDetailHead-i" style="width:30%">Perfectos</td><td class="cigarDetailHead" style="text-align:center;width:19%">44 x 127<span class="inches" id="i3">&nbsp;(5.0")</span></td><td class="cigarDetailHead" style="width:21%">Petit Perfecto</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:393px">
<a data-lightbox="cigar-138" href="images\Cabañas_Perfectos_cigar_orig_0.jpg">
<img class="box" src="images\Cabañas_Perfectos_cigar_full_0.jpg" alt="Perfectos - click to enlarge" title="Perfectos - click to enlarge" height="56" width="393">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Preciosas">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Preciosas</td><td class="cigarDetailHead-i" style="width:30%">Demi Tasse</td><td class="cigarDetailHead" style="text-align:center;width:19%">32 x 100<span class="inches" id="i4">&nbsp;(3.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:300px">
<a data-lightbox="cigar-139" href="images\Cabañas_Preciosas_cigar_orig.jpg">
<img class="box" src="images\Cabañas_Preciosas_cigar_full.jpg" alt="Preciosas - click to enlarge" title="Preciosas - click to enlarge" height="39" width="300">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2005. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Suaves">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Suaves</td><td class="cigarDetailHead-i" style="width:30%">Sports</td><td class="cigarDetailHead" style="text-align:center;width:19%">35 x 117<span class="inches" id="i5">&nbsp;(4.6")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:351px">
<a data-lightbox="cigar-140" href="images\Cabañas_Suaves_cigar_orig_0.jpg">
<img class="box" src="images\Cabañas_Suaves_cigar_full_0.jpg" alt="Suaves - click to enlarge" title="Suaves - click to enlarge" height="45" width="351">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2002. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Superfinos">Cabañas</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Superfinos</td><td class="cigarDetailHead-i" style="width:30%">Coronitas</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 117<span class="inches" id="i6">&nbsp;(4.6")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:351px">
<a data-lightbox="cigar-141" href="images\Cabañas_Superfinos_cigar_orig.jpg">
<img class="box" src="images\Cabañas_Superfinos_cigar_full.jpg" alt="Superfinos - click to enlarge" title="Superfinos - click to enlarge" height="48" width="351">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1989 release. Discontinued 2003. </td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
