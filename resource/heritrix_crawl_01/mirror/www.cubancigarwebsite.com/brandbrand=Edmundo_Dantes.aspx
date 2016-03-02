


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Edmundo Dantes
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
var inchLimit = 1;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Edmundo_Dantes" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQXaETx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkVkbXVuZG8gRGFudGVzPC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcRWRtdW5kb19EYW50ZXNfbG9nb19mdWxsLmpwZyI+PGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xFZG11bmRvX0RhbnRlc19sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iRWRtdW5kbyBEYW50ZXMiIHRpdGxlPSJFZG11bmRvIERhbnRlcyI+PC9hPjxiciAvPjxiciAvPjxzZWxlY3Qgb25jaGFuZ2U9IkZQX2p1bXBNZW51KHRoaXMsJ3dpbmRvdycsZmFsc2UpIiBpZD0iaWQyIiBuYW1lPSJEMiIgY2xhc3M9ImRyb3Bkb3duIj48b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5TcGVjaWFsIFJlbGVhc2VzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMxMTBfRWRpY2l8b25fUmVnaW9uYWxfTWV4aWNvIj4yMDA3IC0gRWRpY2nDs24gUmVnaW9uYWwgTWV4aWNvPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzI5N19FZGljaXxvbl9SZWdpb25hbF9NZXhpY28iPjIwMTEgLSBFZGljacOzbiBSZWdpb25hbCBNZXhpY288L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PGJyIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iY2VsbC1DIj48dGQgY2xhc3M9ImNlbGwtQyI+PHNwYW4gY2xhc3M9aGVhZDM+QnJhbmQgTm90ZXM8L3NwYW4+PGJyIC8+PGJyIC8+PGI+U3RhdHVzPC9iPjxiciAvPkEgc3BlY2lhbCBicmFuZCwgdXNlZCBvY2Nhc2lvbmFsbHkgZm9yIE1leGljYW4gcmVnaW9uYWwgZWRpdGlvbiBjaWdhcnMuPGJyIC8+PGJyIC8+PGI+SGlzdG9yeTwvYj48YnIgLz5DcmVhdGVkIGluIDIwMDcgYnkgTWF4IEd1dG1hbm4sIG93bmVyIG9mIHRoZSBNZXhpY2FuIEhhYmFub3MgZGlzdHJpYnV0b3IsIGZvciB1c2Ugd2l0aCBNZXhpY2FuIHNwZWNpYWwgcmVsZWFzZXMuIEJlY2F1c2Ugb2YgdGhlIGRlc2lnbiBzaW1pbGFyaXRpZXMgd2l0aCBNb250ZWNyaXN0bywgaXQgd2FzIGxvbmcgcnVtb3VyZWQgdGhhdCB0aGVzZSB3ZXJlIE1vbnRlY3Jpc3RvIGNpZ2Fycywgc29sZCB1bmRlciB0aGUgRWRtdW5kbyBEYW50ZXMgYnJhbmQgYmVjYXVzZSBvZiBjb3B5cmlnaHQgaXNzdWVzIGluIE1leGljby4gVGhpcyBpcyB1bnRydWUsIGFzIE1vbnRlY3Jpc3RvIGNpZ2FycyBhcmUgc29sZCBpbiBNZXhpY28uICA8YnIgLz4gPGJyIC8+PGI+UmVsZWFzZXM8L2I+PGJyIC8+VGhlcmUgaGF2ZSBiZWVuIHR3byBFZGljacOzbiBSZWdpb25hbCBjaWdhcnMgcmVsZWFzZWQgdW5kZXIgdGhlIEVkbXVuZG8gRGFudGVzIGJyYW5kLiA8YnIgLz48YnIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTc5Ij5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xFZG11bmRvX0RhbnRlc19iYW5kXzEzMzAyNTYyMzZmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEVkbXVuZG9fRGFudGVzX2JhbmRfMTMzMDI1NjIzNnNtYWxsLmpwZyIgaGVpZ2h0PSIxMDIiIHdpZHRoPSI0MDAiICAvPjwvYT4NCjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+U3RhbmRhcmQgYmFuZCBBLjwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5Ob3QgZW1ib3NzZWQuPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPjIwMDcgb24gLSBjdXJyZW50Ljwvc3Bhbj4NCjwvZGl2PjwvcD48L2Rpdj48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+DQpkZAIBDw8WAh8BBYE4PHRhYmxlIGNsYXNzPSJicmFuZF90YWJsZSIgc3R5bGU9ImJvcmRlci10b3A6bm9uZSI+PHRib2R5Pjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+U3BlY2lhbCBSZWxlYXNlczwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjExMF9FZGljaXxvbl9SZWdpb25hbF9NZXhpY28iIGNsYXNzPSJlbnRyeWhlYWQiPkVkbXVuZG8gRGFudGVzPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAwNyAtIEVkaWNpw7NuIFJlZ2lvbmFsIE1leGljbyA8c3BhbiBjbGFzcz0ic3JzdWIiPlJlZ2lvbmFsIEVkaXRpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RWwgQ29uZGUgMTA5PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Ocm8uMTA5PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTAgeCAxODQ8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTAiPiZuYnNwOyg3LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Eb3VibGUgUm9idXN0bzwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NTUycHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTEwIiBocmVmPSJpbWFnZXNcTW9udGVjcmlzdG9fRWRtdW5kb19EYW50ZXNfRWxfQ29uZGVfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXE1vbnRlY3Jpc3RvX0VkbXVuZG9fRGFudGVzX0VsX0NvbmRlX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkVsIENvbmRlIDEwOSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJFbCBDb25kZSAxMDkgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjYwIiB3aWR0aD0iNTUyIj4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+RWwgQ29uZGUgMTA5IC0gYSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemU8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPGJyIC8+PCEtLSBiYW5kIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xMTAiIGhyZWY9ImltYWdlc1xNb250ZWNyaXN0b19FZG11bmRvX0RhbnRlc19FbF9Db25kZV8xMDlfYmFuZF9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcTW9udGVjcmlzdG9fRWRtdW5kb19EYW50ZXNfRWxfQ29uZGVfMTA5X2JhbmRfZnVsbC5qcGciIGFsdD0iRWwgQ29uZGUgMTA5IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVkaWNpw7NuIFJlZ2lvbmFsIE1leGljbyBiYW5kIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIxMDIiIHdpZHRoPSI0MDAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5FZG11bmRvIERhbnRlcyBCYW5kPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxNjFweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTExMCIgaHJlZj0iaW1hZ2VzXE1vbnRlY3Jpc3RvX0VkbXVuZG9fRGFudGVzX0VsX0NvbmRlXzEwOV9mdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXE1vbnRlY3Jpc3RvX0VkbXVuZG9fRGFudGVzX0VsX0NvbmRlXzEwOV9zbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTYxIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIwMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTEwIiBocmVmPSJpbWFnZXNcTW9udGVjcmlzdG9fRWRtdW5kb19EYW50ZXNfRWxfQ29uZGVfZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xNb250ZWNyaXN0b19FZG11bmRvX0RhbnRlc19FbF9Db25kZV9zbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjAwIiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQpSZWdpb25hbCBFZGl0aW9uIE1leGljbzwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQSwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIE1leGljby48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+MjAwNyAtIE51bWJlcmVkIFNlbWkgQm9pdGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMgKDYwMCBtYWRlKS48YnIgLz4yMDA4IC0gTnVtYmVyZWQgU2VtaSBCb2l0ZSBOYXR1cmUgQm94IG9mIDI1IGNpZ2FycyAoNjAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDcgcmVsZWFzZS4gwqBSZS1yZWxlYXNlZCAyMDA4LjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMjk3X0VkaWNpfG9uX1JlZ2lvbmFsX01leGljbyIgY2xhc3M9ImVudHJ5aGVhZCI+RWRtdW5kbyBEYW50ZXM8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDExIC0gRWRpY2nDs24gUmVnaW9uYWwgTWV4aWNvIDxzcGFuIGNsYXNzPSJzcnN1YiI+UmVnaW9uYWwgRWRpdGlvbiBTZXJpZXM8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db25kZSA1NDwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+U3VibGltZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41NCB4IDE2NDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDYuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkRvdWJsZSBSb2J1c3RvPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0OTJweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yOTciIGhyZWY9ImltYWdlc1xNb250ZWNyaXN0b19FZG11bmRvX0RhbnRlc19Db25kZV81NF9jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xNb250ZWNyaXN0b19FZG11bmRvX0RhbnRlc19Db25kZV81NF9jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IkNvbmRlIDU0IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvbmRlIDU0IC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2OCIgd2lkdGg9IjQ5MiI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkNvbmRlIDU0IC0gYW4gZXhpc3Rpbmcgc3BlY2lhbCByZWxlYXNlIHNpemU8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPGJyIC8+PCEtLSBiYW5kIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yOTciIGhyZWY9ImltYWdlc1xNb250ZWNyaXN0b19FZG11bmRvX0RhbnRlc19Db25kZV81NF9iYW5kX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xNb250ZWNyaXN0b19FZG11bmRvX0RhbnRlc19Db25kZV81NF9iYW5kX2Z1bGwuanBnIiBhbHQ9IkNvbmRlIDU0IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVkaWNpw7NuIFJlZ2lvbmFsIE1leGljbyBiYW5kIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIxMDIiIHdpZHRoPSI0MDAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5FZG11bmRvIERhbnRlcyBCYW5kPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMzNweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTI5NyIgaHJlZj0iaW1hZ2VzXDIwMTFfLV9FZGljacOzbl9SZWdpb25hbF9NZXhpY29fZnVsbF80LmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMTFfLV9FZGljacOzbl9SZWdpb25hbF9NZXhpY29fc21hbGxfNC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjMzIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIwMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjk3IiBocmVmPSJpbWFnZXNcMjAxMV8tX0VkaWNpw7NuX1JlZ2lvbmFsX01leGljb19mdWxsXzMuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMjAxMV8tX0VkaWNpw7NuX1JlZ2lvbmFsX01leGljb19zbWFsbF8zLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMDAiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MTkycHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yOTciIGhyZWY9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfTWV4aWNvX2Z1bGxfMi5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfTWV4aWNvX3NtYWxsXzIuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE5MiIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMTNweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTI5NyIgaHJlZj0iaW1hZ2VzXDIwMTFfLV9FZGljacOzbl9SZWdpb25hbF9NZXhpY29fZnVsbF8xLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMTFfLV9FZGljacOzbl9SZWdpb25hbF9NZXhpY29fc21hbGxfMS5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjEzIiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQpSZWdpb25hbCBFZGl0aW9uIE1leGljbzwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQSwgd2l0aCBhIFJlZ2lvbmFsIEVkaXRpb24gYmFuZCBmb3IgTWV4aWNvLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBTZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzICgxLDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDExIHJlbGVhc2UuIDwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT5kZGQU6Z3CiCUlXOU2zJRS4fl5iz1zqfBTR8l1FjxfzD5YUQ==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dEdmundo_Dantes ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Edmundo Dantes</span><br /><br /><a data-lightbox="brand" href="images\Edmundo_Dantes_logo_full.jpg"><img class="box" src="images\Edmundo_Dantes_logo_small.jpg" height="160" alt="Edmundo Dantes" title="Edmundo Dantes"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#110_Edici|on_Regional_Mexico">2007 - Edición Regional Mexico</option><option value="#297_Edici|on_Regional_Mexico">2011 - Edición Regional Mexico</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><br />A special brand, used occasionally for Mexican regional edition cigars.<br /><br /><b>History</b><br />Created in 2007 by Max Gutmann, owner of the Mexican Habanos distributor, for use with Mexican special releases. Because of the design similarities with Montecristo, it was long rumoured that these were Montecristo cigars, sold under the Edmundo Dantes brand because of copyright issues in Mexico. This is untrue, as Montecristo cigars are sold in Mexico.  <br /> <br /><b>Releases</b><br />There have been two Edición Regional cigars released under the Edmundo Dantes brand. <br /><br /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=79">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Edmundo_Dantes_band_1330256236full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Edmundo_Dantes_band_1330256236small.jpg" height="102" width="400"  /></a>
<br /><span class="bandhead">Standard band A.</span><br />
<span class="band-caption2">Not embossed.</span><br /><span class="band-caption">2007 on - current.</span>
</div></p></div></td></tr></table></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="110_Edici|on_Regional_Mexico" class="entryhead">Edmundo Dantes</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2007 - Edición Regional Mexico <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">El Conde 109</td><td class="cigarDetailHead-i" style="width:30%">Nro.109</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 184<span class="inches" id="i0">&nbsp;(7.2")</span></td><td class="cigarDetailHead" style="width:21%">Double Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:552px">
<a  data-lightbox="special-110" href="images\Montecristo_Edmundo_Dantes_El_Conde_cigar_orig.jpg">
<img class="box" src = "images\Montecristo_Edmundo_Dantes_El_Conde_cigar_full.jpg" alt="El Conde 109 - click to enlarge" title="El Conde 109 - click to enlarge" height="60" width="552">
</a>
<span class="comments">El Conde 109 - a new special release size</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-110" href="images\Montecristo_Edmundo_Dantes_El_Conde_109_band_orig.jpg">
<img class="box" src = "images\Montecristo_Edmundo_Dantes_El_Conde_109_band_full.jpg" alt="El Conde 109 - click to enlarge" title="Edición Regional Mexico band - click to enlarge" height="102" width="400">
</a>
<span class="comments">Edmundo Dantes Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:161px">
<a data-lightbox="special-110" href="images\Montecristo_Edmundo_Dantes_El_Conde_109_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Montecristo_Edmundo_Dantes_El_Conde_109_small.jpg" class="box" height="150" width="161" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:200px">
<a data-lightbox="special-110" href="images\Montecristo_Edmundo_Dantes_El_Conde_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Montecristo_Edmundo_Dantes_El_Conde_small.jpg" class="box" height="150" width="200" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition Mexico</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with Regional Edition band for Mexico.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>2007 - Numbered Semi Boite Nature Box of 25 cigars (600 made).<br />2008 - Numbered Semi Boite Nature Box of 25 cigars (600 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2007 release.  Re-released 2008.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="297_Edici|on_Regional_Mexico" class="entryhead">Edmundo Dantes</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2011 - Edición Regional Mexico <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Conde 54</td><td class="cigarDetailHead-i" style="width:30%">Sublimes</td><td class="cigarDetailHead" style="text-align:center;width:19%">54 x 164<span class="inches" id="i1">&nbsp;(6.5")</span></td><td class="cigarDetailHead" style="width:21%">Double Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:492px">
<a  data-lightbox="special-297" href="images\Montecristo_Edmundo_Dantes_Conde_54_cigar_orig_0.jpg">
<img class="box" src = "images\Montecristo_Edmundo_Dantes_Conde_54_cigar_full_0.jpg" alt="Conde 54 - click to enlarge" title="Conde 54 - click to enlarge" height="68" width="492">
</a>
<span class="comments">Conde 54 - an existing special release size</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-297" href="images\Montecristo_Edmundo_Dantes_Conde_54_band_orig.jpg">
<img class="box" src = "images\Montecristo_Edmundo_Dantes_Conde_54_band_full.jpg" alt="Conde 54 - click to enlarge" title="Edición Regional Mexico band - click to enlarge" height="102" width="400">
</a>
<span class="comments">Edmundo Dantes Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:233px">
<a data-lightbox="special-297" href="images\2011_-_Edición_Regional_Mexico_full_4.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Mexico_small_4.jpg" class="box" height="150" width="233" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:200px">
<a data-lightbox="special-297" href="images\2011_-_Edición_Regional_Mexico_full_3.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Mexico_small_3.jpg" class="box" height="150" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:192px">
<a data-lightbox="special-297" href="images\2011_-_Edición_Regional_Mexico_full_2.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Mexico_small_2.jpg" class="box" height="150" width="192" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:213px">
<a data-lightbox="special-297" href="images\2011_-_Edición_Regional_Mexico_full_1.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Mexico_small_1.jpg" class="box" height="150" width="213" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition Mexico</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with a Regional Edition band for Mexico.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Semi Boite Nature Box of 25 cigars (1,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2011 release. </td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
