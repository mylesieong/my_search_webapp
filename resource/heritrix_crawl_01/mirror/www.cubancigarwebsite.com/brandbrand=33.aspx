


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
var inchLimit = 14;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=33" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT88c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTQ7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFxS08dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQgY2xhc3M9ImNlbGwtQyI+PGJyIC8+PHNwYW4gY2xhc3M9ImhlYWQxIj5TYW4gQ3Jpc3TDs2JhbDwvc3Bhbj48YnIgLz48YnIgLz48YSBkYXRhLWxpZ2h0Ym94PSJicmFuZCIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdG9iYWxfbG9nb19mdWxsLmpwZyI+PGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3RvYmFsX2xvZ29fc21hbGwuanBnIiBoZWlnaHQ9IjE2MCIgYWx0PSJTYW4gQ3Jpc3TDs2JhbCIgdGl0bGU9IlNhbiBDcmlzdMOzYmFsIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNFbF9Nb3JybyI+RWwgTW9ycm88L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjRWxfUHJ8aW5jaXBlIj5FbCBQcsOtbmNpcGU8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTGFfRnVlcnphIj5MYSBGdWVyemE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTGFfUHVudGEiPkxhIFB1bnRhPC9vcHRpb24+CTwvc2VsZWN0PjxzZWxlY3Qgb25jaGFuZ2U9IkZQX2p1bXBNZW51KHRoaXMsJ3dpbmRvdycsZmFsc2UpIiBpZD0iaWQzIiBuYW1lPSJEMyIgY2xhc3M9ImRyb3Bkb3duIj4JPG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI01lcmNhZGVyZXMiPk1lcmNhZGVyZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTXVyYWxsYSI+TXVyYWxsYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNPZmljaW9zIj5PZmljaW9zPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMiIgbmFtZT0iRDIiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+U3BlY2lhbCBSZWxlYXNlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMTYzXzVfQW5pdmVyc2FyaW9fSHVtaWRvciI+MjAwNCAtIDUgQW5pdmVyc2FyaW8gSHVtaWRvcjwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMyMDFfQ29sZWNjaXxvbl9IYWJhbm9zXzIwMDkiPjIwMDkgLSBDb2xlY2Npw7NuIEhhYmFub3MgMjAwOTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMyMDZfWF9FZGljaXxvbl9GZXN0aXZhbF9kZWxfSGFiYW5vIj4yMDA5IC0gWCBFZGljacOzbiBGZXN0aXZhbCBkZWwgSGFiYW5vPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzMzM19Db2xlY2NpfG9uX0hhYmFub3NfMjAxMSI+MjAxMSAtIENvbGVjY2nDs24gSGFiYW5vcyAyMDExPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzMwNV9IYWJhbm9zX1NwZWNpYWxpc3RfRXhjbHVzaXZlX0phciI+MjAxMiAtIEhhYmFub3MgU3BlY2lhbGlzdCBFeGNsdXNpdmUgSmFyPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48YnIgLz5TYW4gQ3Jpc3TDs2JhbCBpcyBhIGN1cnJlbnQgcG9zdC1SZXZvbHV0aW9uIGJyYW5kLCBsYXVuY2hlZCBpbiBsYXRlIDE5OTkuPGJyIC8+IFRoZSBmdWxsIGJyYW5kIG5hbWUgaXMgU2FuIENyaXN0w7NiYWwgZGUgbGEgSGFiYW5hLCBuYW1lZCBhZnRlciB0aGUgb3JpZ2luYWwgbmFtZSBmb3IgSGF2YW5hIGFuZCBpbiBob25vdXIgb2YgIENocmlzdG9waGVyIENvbHVtYnVzLjxiciAvPjxiciAvPjxiPkdlbmVyYWxseTwvYj48YnIgLz5JdCBpcyBjbGFzc2lmaWVkIGJ5IEhhYmFub3MgU0EgYXMgYSBOaWNoZSBicmFuZCBhbmQgaGFzIGEgbWlub3IgbWFya2V0IHNoYXJlLjxiciAvPlRoZSByYW5nZSBjb21wcmlzZXMgbGlnaHQgdG8gbWVkaXVtLXN0cmVuZ3RoIGNpZ2FycywgdXNpbmcgdG9iYWNjbyBmcm9tIHRoZSBwcmVtaXVtIDxpPlZ1ZWx0YSBBYmFqbzwvaT4gcmVnaW9uLjxiciAvPlRoaXMgYnJhbmQgaXMgbm90IHJlbGF0ZWQgdG8gYSBwcmUtUmV2b2x1dGlvbiBicmFuZCBvZiB0aGUgc2FtZSBuYW1lLjxiciAvPjxiciAvPjxiPlJlbGVhc2VzPC9iPjxiciAvPlRoZSBvcmlnaW5hbCAxOTk5IHJlbGVhc2UgY2lnYXJzIHdlcmUgbmFtZWQgYWZ0ZXIgZm9ydHMgdGhhdCBwcm90ZWN0ZWQgb2xkIEhhdmFuYSBpbiB0aGUgU3BhbmlzaCBDb2xvbmlhbCBkYXlzLjxiciAvPlNwZWNpYWwgUmVsZWFzZXMgY29tbWVuY2VkIGluIDIwMDQgd2l0aCB0aGUgcmVsZWFzZSBvZiB0aGUgNXRoIEFubml2ZXJzYXJ5IEh1bWlkb3IuIEVhY2ggb2YgdGhlc2UgY2lnYXJzIHdhcyBuYW1lZCBhZnRlciBhbiBhbmNpZW50IHN0cmVldCBpbiBvbGQgSGF2YW5hLjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQ+PHNwYW4gY2xhc3M9ImhlYWQzIj5TdGFuZGFyZCBDaWdhciBCYW5kczwvc3Bhbj48YnIgLz48YSBocmVmPSJiYW5kLmFzcHg/YnJhbmQ9MzMiPkZ1bGwgYmFuZCBnYWxsYXJ5PC9hPjxiciAvPjxiciAvPg0KPHRhYmxlIHN0eWxlPSJtYXgtd2lkdGg6ODY1cHgiIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PGRpdiBjbGFzcz0iZ2FsbGVyeSI+PHA+PGRpdj48YSBkYXRhLWxpZ2h0Ym94PSJiYW5kcyIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX2JhbmRfMjE0NjY2MTkzNmZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfYmFuZF8yMTQ2NjYxOTM2c21hbGwuanBnIiBoZWlnaHQ9IjEwMiIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEE8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+RW1ib3NzZWQ8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+MTk5OSBvbiAtLSBDdXJyZW50PC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCjx0cj48dGQgY2xhc3M9ImJyYW5kX3RhYmxlIj48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIFByb2R1Y3Rpb24gUGFja2FnaW5nPC9zcGFuPjxiciAvPjxiciAvPg0KPHRhYmxlIGFsaWduPSJjZW50ZXIiPjx0cj48dGQ+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MjA4cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9wYWNrYWdpbmdfODE5NmZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIFNhbiBDcmlzdMOzYmFsIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgU2FuIENyaXN0w7NiYWwgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9wYWNrYWdpbmdfODE5NnNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMDgiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Rmlyc3QgUmVsZWFzZXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1IC0gMTk5OTwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxNTBweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX3BhY2thZ2luZ180NjQ5ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgU2FuIENyaXN0w7NiYWwgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBTYW4gQ3Jpc3TDs2JhbCBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX3BhY2thZ2luZ180NjQ5c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE1MCIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5MYSBQdW50YTwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5CMjUgLSAxOTk5PC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEyMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfcGFja2FnaW5nXzM0NDZmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBTYW4gQ3Jpc3TDs2JhbCBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIFNhbiBDcmlzdMOzYmFsIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfcGFja2FnaW5nXzM0NDZzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTIwIiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPk1lcmNhZGVyZXM8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+dkJOIC0gMjAwNjwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMjBweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX3BhY2thZ2luZ184ODY3ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgU2FuIENyaXN0w7NiYWwgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBTYW4gQ3Jpc3TDs2JhbCBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX3BhY2thZ2luZ184ODY3c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEyMCIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5PZmljaW9zPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPnZCTjI1IC0gMjAwNjwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+PC90YWJsZT48YnIgLz48L3RkPjwvdHI+DQpkZAIBDw8WAh8BBd/gATx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiIHN0eWxlPSJib3JkZXItdG9wOm5vbmUiPjx0Ym9keT48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJFbF9Nb3JybyI+U2FuIENyaXN0w7NiYWw8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RWwgTW9ycm88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlBhY29zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDkgeCAxODA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTAiPiZuYnNwOyg3LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Eb3VibGUgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1NDBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci03NjAiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fRWxfTW9ycm9fY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19FbF9Nb3Jyb19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IkVsIE1vcnJvIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVsIE1vcnJvIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1OSIgd2lkdGg9IjU0MCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTk5IHJlbGVhc2UuIEN1cnJlbnQuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJFbF9QcnxpbmNpcGUiPlNhbiBDcmlzdMOzYmFsPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkVsIFByw61uY2lwZTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TWludXRvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTEwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxIj4mbmJzcDsoNC4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozMzBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci03NjEiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fRWxfUHLDrW5jaXBlX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX0VsX1Byw61uY2lwZV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJFbCBQcsOtbmNpcGUgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRWwgUHLDrW5jaXBlIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1MiIgd2lkdGg9IjMzMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTk5IHJlbGVhc2UuIEN1cnJlbnQuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJMYV9GdWVyemEiPlNhbiBDcmlzdMOzYmFsPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkxhIEZ1ZXJ6YTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+R29yZGl0b3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41MCB4IDE0MTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMiI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlJvYnVzdG8gRXh0cmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyM3B4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTc5NSIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19MYV9GdWVyemFfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTGFfRnVlcnphX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkxhIEZ1ZXJ6YSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMYSBGdWVyemEgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU4IiB3aWR0aD0iNDIzIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5OTkgcmVsZWFzZS4gQ3VycmVudC4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkxhX1B1bnRhIj5TYW4gQ3Jpc3TDs2JhbDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5MYSBQdW50YTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q2FtcGFuYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41MiB4IDE0MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDUuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlB5cmFtaWQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTgxMSIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19MYV9QdW50YV9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19MYV9QdW50YV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJMYSBQdW50YSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJMYSBQdW50YSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjAiIHdpZHRoPSI0MjAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk5OSByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0ic2VjdGlvbi1oZWFkIj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCI+RGlzY29udGludWVkIFByb2R1Y3Rpb24gQ2lnYXJzPC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iTWVyY2FkZXJlcyI+U2FuIENyaXN0w7NiYWw8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+TWVyY2FkZXJlczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+SGVybW9zb3MgTm8uMTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ4IHggMTY3PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk0Ij4mbmJzcDsoNi42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+R3JhbmQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1MDFweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04MTIiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTWVyY2FkZXJlc19jaWdhcl9vcmlnXzMuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX01lcmNhZGVyZXNfY2lnYXJfZnVsbF8zLmpwZyIgYWx0PSJNZXJjYWRlcmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9Ik1lcmNhZGVyZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjYwIiB3aWR0aD0iNTAxIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBIHdpdGggYSAiTGEgQ2FzYSBkZWwgSGFiYW5vIiBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPlZhcm5pc2hlZCBCb8OudGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDYgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMTEuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5XYXMgYSBzcGVjaWFsIHJlbGVhc2UgaW4gMjAwNC4gSW50cm9kdWNlZCBpbiAyMDA2IGFzIGEgTENESCByZWxlYXNlIGJ1dCBkaXNjb250aW51ZWQgaW4gMjAxMSBhcyBwYXJ0IG9mIHRoZSBuZXcgcG9saWN5IG9mIHJlbGVhc2luZyBMQ0RIIGNpZ2FycyBpbiBsaW1pdGVkIG51bWJlcnMuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9Ik11cmFsbGEiPlNhbiBDcmlzdMOzYmFsPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk11cmFsbGE8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlJvZG9sZm88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41NCB4IDE4MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNSI+Jm5ic3A7KDcuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkRvdWJsZSBQeXJhbWlkPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1NDBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci04MTMiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTXVyYWxsYV9jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX011cmFsbGFfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJNdXJhbGxhIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9Ik11cmFsbGEgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjY0IiB3aWR0aD0iNTQwIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLCB3aXRoIGEgIkxhIENhc2EgZGVsIEhhYmFubyIgYmFuZC48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5WYXJuaXNoZWQgQm/DrnRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDA2IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDExLiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+V2FzIGEgc3BlY2lhbCByZWxlYXNlIGluIDIwMDQuIEludHJvZHVjZWQgaW4gMjAwNiBhcyBhIExDREggcmVsZWFzZSBidXQgZGlzY29udGludWVkIGluIDIwMTEgYXMgcGFydCBvZiB0aGUgbmV3IHBvbGljeSBvZiByZWxlYXNpbmcgTENESCBjaWdhcnMgaW4gbGltaXRlZCBudW1iZXJzLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJPZmljaW9zIj5TYW4gQ3Jpc3TDs2JhbDwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5PZmljaW9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5EYWxpYXMgQ29ydGFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDMgeCAxMzU8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTYiPiZuYnNwOyg1LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQwNXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTgzMCIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19PZmljaW9zX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fT2ZpY2lvc19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9Ik9maWNpb3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iT2ZpY2lvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTAiIHdpZHRoPSI0MDUiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEsIHdpdGggYSAiTGEgQ2FzYSBkZWwgSGFiYW5vIiBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPlZhcm5pc2hlZCBCb8OudGUgTmF0dXJlIEJveCBvZiAyNSBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDYgcmVsZWFzZS4gRGlzY29udGludWVkIDIwMTEuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5XYXMgYSBzcGVjaWFsIHJlbGVhc2UgaW4gMjAwNC4gSW50cm9kdWNlZCBpbiAyMDA2IGFzIGEgTENESCByZWxlYXNlIGJ1dCBkaXNjb250aW51ZWQgaW4gMjAxMSBhcyBwYXJ0IG9mIHRoZSBuZXcgcG9saWN5IG9mIHJlbGVhc2luZyBMQ0RIIGNpZ2FycyBpbiBsaW1pdGVkIG51bWJlcnMuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPlNwZWNpYWwgUmVsZWFzZXM8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIxNjNfNV9Bbml2ZXJzYXJpb19IdW1pZG9yIiBjbGFzcz0iZW50cnloZWFkIj5TYW4gQ3Jpc3TDs2JhbDwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjIwMDQgLSA1IEFuaXZlcnNhcmlvIEh1bWlkb3IgPHNwYW4gY2xhc3M9InNyc3ViIj5Db21tZW1vcmF0aXZlIFJlbGVhc2U8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5FbCBNb3JybyZuYnNwOyZuYnNwOzxzcGFuIGNsYXNzPSJub3NjaWciPigyNSk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5QYWNvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ5IHggMTgwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk3Ij4mbmJzcDsoNy4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+RG91YmxlIENvcm9uYTwvdGQ+PC90cj4NCjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk1lcmNhZGVyZXMmbmJzcDsmbmJzcDs8c3BhbiBjbGFzcz0ibm9zY2lnIj4oMjUpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+SGVybW9zb3MgTm8uMTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ4IHggMTY3PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk4Ij4mbmJzcDsoNi42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+R3JhbmQgQ29yb25hPC90ZD48L3RyPg0KPHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+TXVyYWxsYSZuYnNwOyZuYnNwOzxzcGFuIGNsYXNzPSJub3NjaWciPigyNSk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Sb2RvbGZvPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTQgeCAxODA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTkiPiZuYnNwOyg3LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Eb3VibGUgUHlyYW1pZDwvdGQ+PC90cj4NCjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk9maWNpb3MmbmJzcDsmbmJzcDs8c3BhbiBjbGFzcz0ibm9zY2lnIj4oMjUpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+RGFsaWFzIENvcnRhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQzIHggMTM1PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxMCI+Jm5ic3A7KDUuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkNvcm9uYTwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NTQwcHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTYzIiBocmVmPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX0VsX01vcnJvX2NpZ2FyX29yaWdfMS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX19FbF9Nb3Jyb19jaWdhcl9mdWxsXzEuanBnIiBhbHQ9IkVsIE1vcnJvIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVsIE1vcnJvIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1OCIgd2lkdGg9IjU0MCI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkVsIE1vcnJvIC0gPGk+YSBzdGFuZGFyZCBwcm9kdWN0aW9uIHNpemU8L2k+PC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1MDFweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNjMiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTWVyY2FkZXJlc19jaWdhcl9vcmlnXzQuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTWVyY2FkZXJlc19jaWdhcl9mdWxsXzQuanBnIiBhbHQ9Ik1lcmNhZGVyZXMgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iTWVyY2FkZXJlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTciIHdpZHRoPSI1MDEiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5NZXJjYWRlcmVzIC0gPGk+YSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemU8L2k+PC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo1NDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNjMiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTXVyYWxsYV9jaWdhcl9vcmlnXzEuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTXVyYWxsYV9jaWdhcl9mdWxsXzEuanBnIiBhbHQ9Ik11cmFsbGEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iTXVyYWxsYSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjUiIHdpZHRoPSI1NDAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5NdXJhbGxhIC0gPGk+YSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemU8L2k+PC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDVweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNjMiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fT2ZpY2lvc19jaWdhcl9vcmlnXzEuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fT2ZpY2lvc19jaWdhcl9mdWxsXzEuanBnIiBhbHQ9Ik9maWNpb3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iT2ZpY2lvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTUiIHdpZHRoPSI0MDUiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5PZmljaW9zIC0gPGk+YSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemU8L2k+PC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxOTJweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE2MyIgaHJlZj0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX09maWNpb3NfZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9PZmljaW9zX3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxOTIiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MTA4cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNjMiIGhyZWY9ImltYWdlc1wyMDA0Xy1fNV9Bbml2ZXJzYXJpb19IdW1pZG9yX2Z1bGxfMC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDA0Xy1fNV9Bbml2ZXJzYXJpb19IdW1pZG9yX3NtYWxsXzAuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEwOCIgLz4NCjwvYT4NCjwvZGl2PjxiciAvPjwhLS0gZW5kIG9mIGVuZCBicmVhayAtLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoIj48c3BhbiBjbGFzcz0iY29tbWVudHMiPg0KNXRoIEFubml2ZXJzYXJ5IEh1bWlkb3I8L3NwYW4+PGJyIC8+PCEtLSBhZnRlciBzcGVjaWFsIG5vdGUgYnJlYWsgLS0+PC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TcGVjaWFsICI1IEFuaXZlcnNhcmlvIiBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5IdW1pZG9yIG9mIDEwMCBjaWdhcnMgKDUwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDA0IHJlbGVhc2UuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5SZWxlYXNlZCB0byBjb21tZW1vcmF0ZSB0aGUgNXRoIEFubml2ZXJzYXJ5IG9mIHRoZSBicmFuZC48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjIwMV9Db2xlY2NpfG9uX0hhYmFub3NfMjAwOSIgY2xhc3M9ImVudHJ5aGVhZCI+U2FuIENyaXN0w7NiYWw8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDA5IC0gQ29sZWNjacOzbiBIYWJhbm9zIDIwMDkgPHNwYW4gY2xhc3M9InNyc3ViIj5IYWJhbm9zIENvbGxlY3Rpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+T8K0UmVpbGx5PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5PwrRSZWlsbHk8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj41NiB4IDE2MDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTEiPiZuYnNwOyg2LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Eb3VibGUgUm9idXN0bzwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDgwcHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjAxIiBocmVmPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX0/CtFJlaWxseV9jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fT8K0UmVpbGx5X2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iT8K0UmVpbGx5IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9Ik/CtFJlaWxseSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjciIHdpZHRoPSI0ODAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5PwrRSZWlsbHkgLSA8aT5hIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvaT48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIxOXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjAxIiBocmVmPSJpbWFnZXNcMjAwOV8tX0NvbGVjY2nDs25fSGFiYW5vc19mdWxsXzMuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMjAwOV8tX0NvbGVjY2nDs25fSGFiYW5vc19zbWFsbF8zLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMTkiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MTM2cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yMDEiIGhyZWY9ImltYWdlc1wyMDA5Xy1fQ29sZWNjacOzbl9IYWJhbm9zX2Z1bGxfNC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDA5Xy1fQ29sZWNjacOzbl9IYWJhbm9zX3NtYWxsXzQuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEzNiIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMTJweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTIwMSIgaHJlZj0iaW1hZ2VzXDIwMDlfLV9Db2xlY2Npw7NuX0hhYmFub3NfZnVsbF81LmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMDlfLV9Db2xlY2Npw7NuX0hhYmFub3Nfc21hbGxfNS5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjEyIiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQpIYWJhbm9zIENvbGxlY3Rpb24gMjAwOTwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+TnVtYmVyZWQgQm9vay1zaGFwZWQgQm/DrnRlIE5hdHVyZSBCb3ggb2YgMjAgY2lnYXJzICgxLDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDA5IHJlbGVhc2UuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5UaGUgbmludGggcmVsZWFzZSBvZiB0aGUgSGFiYW5vcyBDb2xsZWN0aW9uIFNlcmllcy48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjIwNl9YX0VkaWNpfG9uX0Zlc3RpdmFsX2RlbF9IYWJhbm8iIGNsYXNzPSJlbnRyeWhlYWQiPlNhbiBDcmlzdMOzYmFsPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAwOSAtIFggRWRpY2nDs24gRmVzdGl2YWwgZGVsIEhhYmFubyA8c3BhbiBjbGFzcz0ic3JzdWIiPk11bHRpIEJyYW5kIFJlbGVhc2U8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5NZXJjYWRlcmVzJm5ic3A7Jm5ic3A7PHNwYW4gY2xhc3M9Im5vc2NpZyI+KDEpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+SGVybW9zb3MgTm8uMTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ4IHggMTY3PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxMiI+Jm5ic3A7KDYuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkdyYW5kIENvcm9uYTwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NTAxcHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjA2IiBocmVmPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX01lcmNhZGVyZXNfY2lnYXJfb3JpZ181LmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX01lcmNhZGVyZXNfY2lnYXJfZnVsbF81LmpwZyIgYWx0PSJNZXJjYWRlcmVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9Ik1lcmNhZGVyZXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU5IiB3aWR0aD0iNTAxIj4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+TWVyY2FkZXJlcyAtIDxpPmEgc3RhbmRhcmQgcHJvZHVjdGlvbiBhbmQgYSBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvaT48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjI2N3B4Ij4NCjxkaXYgc3R5bGU9ImhlaWdodDoyN3B4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7d2lkdGg6MXB4Ij48L2Rpdj48IS0tdi1hbGlnbiBwdXNoIGRpdi0tPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yMDYiIGhyZWY9ImltYWdlc1wyMDA5Xy1fWF9GZXN0aXZhbF9kZWxfSGFiYW5vX2Z1bGxfMS5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDA5Xy1fWF9GZXN0aXZhbF9kZWxfSGFiYW5vX3NtYWxsXzEuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjEyMyIgd2lkdGg9IjI2NyIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxMzZweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTIwNiIgaHJlZj0iaW1hZ2VzXDIwMDlfLV9YX0Zlc3RpdmFsX2RlbF9IYWJhbm9fZnVsbF82LmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMDlfLV9YX0Zlc3RpdmFsX2RlbF9IYWJhbm9fc21hbGxfNi5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTM2IiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjEzNXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjA2IiBocmVmPSJpbWFnZXNcMjAwOV8tX1hfRmVzdGl2YWxfZGVsX0hhYmFub19mdWxsXzUuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMjAwOV8tX1hfRmVzdGl2YWxfZGVsX0hhYmFub19zbWFsbF81LmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMzUiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MjA3cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yMDYiIGhyZWY9ImltYWdlc1wyMDA5Xy1fWF9GZXN0aXZhbF9kZWxfSGFiYW5vX2Z1bGxfNC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDA5Xy1fWF9GZXN0aXZhbF9kZWxfSGFiYW5vX3NtYWxsXzQuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjIwNyIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyNjdweCI+DQo8ZGl2IHN0eWxlPSJoZWlnaHQ6MzlweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3dpZHRoOjFweCI+PC9kaXY+PCEtLXYtYWxpZ24gcHVzaCBkaXYtLT4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjA2IiBocmVmPSJpbWFnZXNcMjAwOV8tX1hfRmVzdGl2YWxfZGVsX0hhYmFub19mdWxsXzIuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMjAwOV8tX1hfRmVzdGl2YWxfZGVsX0hhYmFub19zbWFsbF8yLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxMTEiIHdpZHRoPSIyNjciIC8+DQo8L2E+DQo8L2Rpdj48YnIgLz48IS0tIGVuZCBvZiBlbmQgYnJlYWsgLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aCI+PHNwYW4gY2xhc3M9ImNvbW1lbnRzIj4NClggRWRpdGlvbiBvZiB0aGUgSGFiYW5vIEZlc3RpdmFsPC9zcGFuPjxiciAvPjwhLS0gYWZ0ZXIgc3BlY2lhbCBub3RlIGJyZWFrIC0tPjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBIHdpdGggYSBzcGVjaWFsICJYIEZlc3RpdmFsIGRlbCBIYWJhbm8iIGJhbmQuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPkJsYWNrIGxhY3F1ZXJlZCBCb8OudGUgTmF0dXJlIEJveCBvZiAxMCBjaWdhcnMgY29tcHJpc2luZyA5IGJyYW5kcyAoMjAsMDAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDkgcmVsZWFzZS4gwqBCb3hlcyBkYXRlIGZyb20gRElDIDA4LjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5UaGlzIHJlbGVhc2UgaXMgYSByZXBsaWNhIG9mIGEgc3BlY2lhbCBjb21tZW1vcmF0aXZlIGNhc2UgZ2lmdGVkIHRvIGF0dGVuZGVlcyBvZiB0aGUgdGVudGggSGFiYW5vcyBmZXN0aXZhbCBpbiBDdWJhLiA8YnIgLz5UaGUgY2FzZSBjb250YWlucyBhIHNlbGVjdGlvbiBvZiBzdGFuZGFyZCBwcm9kdWN0aW9uIDIwIGNpZ2FycyAoOSBicmFuZHMpIHJlbGVhc2VkIGluIHRoZSBwcmV2aW91cyB0ZW4geWVhcnMuPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIzMzNfQ29sZWNjaXxvbl9IYWJhbm9zXzIwMTEiIGNsYXNzPSJlbnRyeWhlYWQiPlNhbiBDcmlzdMOzYmFsPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAxMSAtIENvbGVjY2nDs24gSGFiYW5vcyAyMDExIDxzcGFuIGNsYXNzPSJzcnN1YiI+SGFiYW5vcyBDb2xsZWN0aW9uIFNlcmllczwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk/CtFJlaWxseSZuYnNwOyZuYnNwOzxzcGFuIGNsYXNzPSJub3NjaWciPigzKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk/CtFJlaWxseTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjU2IHggMTYwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxMyI+Jm5ic3A7KDYuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkRvdWJsZSBSb2J1c3RvPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0ODBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zMzMiIGhyZWY9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9PwrRSZWlsbHlfY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfT8K0UmVpbGx5X2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iT8K0UmVpbGx5IC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9Ik/CtFJlaWxseSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjciIHdpZHRoPSI0ODAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5PwrRSZWlsbHkgLSBhbiBleGlzdGluZyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MTU0cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zMzMiIGhyZWY9ImltYWdlc1wyMDExXy1fQ29sZWNjacOzbl9IYWJhbm9zXzIwMTFfZnVsbF8yLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMTFfLV9Db2xlY2Npw7NuX0hhYmFub3NfMjAxMV9zbWFsbF8yLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNTQiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MjE5cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0zMzMiIGhyZWY9ImltYWdlc1xDb2hpYmFfU3VibGltZXNfRXh0cmFfZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xDb2hpYmFfU3VibGltZXNfRXh0cmFfc21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjIxOSIgLz4NCjwvYT4NCjwvZGl2PjxiciAvPjwhLS0gZW5kIG9mIGVuZCBicmVhayAtLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoIj48c3BhbiBjbGFzcz0iY29tbWVudHMiPg0KSGFiYW5vcyBDb2xsZWN0aW9uIDIwMTEgLSBDb21wbGV0ZSBXb3Jrczwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPkxhcmdlIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+TnVtYmVyZWQgQm9vay1zaGFwZWQgQm/DrnRlIE5hdHVyZSBCb3ggb2YgMzAgY2lnYXJzICgxLDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDExIHJlbGVhc2UuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5UaGUgMTF0aCByZWxlYXNlIG9mIHRoZSBIYWJhbm9zIENvbGxlY3Rpb24gU2VyaWVzLCBjb21wcmlzaW5nIDEwIGJyYW5kcyB3aXRoIHRocmVlIGNpZ2FycyBpbiBlYWNoIGJyYW5kLiA8L2JyPiBUaGlzIHJlbGVhc2UgaXMgdGl0bGVkIDxpPiJPYnJhcyBDb21wbGV0YXMiPC9pPiAodGhlIENvbXBsZXRlIFdvcmtzKS48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjMwNV9IYWJhbm9zX1NwZWNpYWxpc3RfRXhjbHVzaXZlX0phciIgY2xhc3M9ImVudHJ5aGVhZCI+U2FuIENyaXN0w7NiYWw8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDEyIC0gSGFiYW5vcyBTcGVjaWFsaXN0IEV4Y2x1c2l2ZSBKYXIgPHNwYW4gY2xhc3M9InNyc3ViIj5IYWJhbm9zIFNwZWNpYWxpc3QgUmVsZWFzZTwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPlRvcnJlb248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkdlbmlhbGVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTQgeCAxNTA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTE0Ij4mbmJzcDsoNS45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Um9idXN0byBFeHRyYTwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDUwcHgiPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX1RvcnJlb25fY2lnYXJfZnVsbC5qcGciIGFsdD0iVG9ycmVvbiIgdGl0bGU9IlRvcnJlb24iIGhlaWdodD0iNjQiIHdpZHRoPSI0NTAiPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5Ub3JyZW9uIC0gYSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemU8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIwNXB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMzA1IiBocmVmPSJpbWFnZXNcMjAxMl8tX0hhYmFub3NfU3BlY2lhbGlzdF9FeGNsdXNpdmVfSmFyX2Z1bGxfMC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDEyXy1fSGFiYW5vc19TcGVjaWFsaXN0X0V4Y2x1c2l2ZV9KYXJfc21hbGxfMC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMjA1IiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIyNnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMzA1IiBocmVmPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfVG9ycmVvbl9mdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXFNhbl9DcmlzdMOzYmFsX1RvcnJlb25fc21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjIyNiIgLz4NCjwvYT4NCjwvZGl2PjxiciAvPjwhLS0gZW5kIG9mIGVuZCBicmVhayAtLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoIj48c3BhbiBjbGFzcz0iY29tbWVudHMiPg0KSGFiYW5vcyBTcGVjaWFsaXN0IEV4Y2x1c2l2ZSAyMDEyPC9zcGFuPjxiciAvPjwhLS0gYWZ0ZXIgc3BlY2lhbCBub3RlIGJyZWFrIC0tPjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLCB3aXRoIGEgIkxhIENhc2EgZGVsIEhhYmFubyIgYmFuZC48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+Q2VyYW1pYyBKYXIgb2YgMjUgY2lnYXJzICgyLDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDEyIHJlbGVhc2UuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5GaXJzdCByZWxlYXNlIG9mIHRoZSBleGNsdXNpdmUgcmVsZWFzZXMgZm9yIHRoZSBIYWJhbm9zIFNwZWNpYWxpc3Qgc2hvcHMuIFJlbGVhc2VkIDIwMTMuPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPmRkZBW8Fb0UXgSuNhZtirZGY0lv9qfoA0XpQHkKB6liCe7n" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d33 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">San Cristóbal</span><br /><br /><a data-lightbox="brand" href="images\San_Cristobal_logo_full.jpg"><img class="box" src="images\San_Cristobal_logo_small.jpg" height="160" alt="San Cristóbal" title="San Cristóbal"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#El_Morro">El Morro</option><option value="#El_Pr|incipe">El Príncipe</option><option value="#La_Fuerza">La Fuerza</option><option value="#La_Punta">La Punta</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Mercaderes">Mercaderes</option><option value="#Muralla">Muralla</option><option value="#Oficios">Oficios</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#163_5_Aniversario_Humidor">2004 - 5 Aniversario Humidor</option><option value="#201_Colecci|on_Habanos_2009">2009 - Colección Habanos 2009</option><option value="#206_X_Edici|on_Festival_del_Habano">2009 - X Edición Festival del Habano</option><option value="#333_Colecci|on_Habanos_2011">2011 - Colección Habanos 2011</option><option value="#305_Habanos_Specialist_Exclusive_Jar">2012 - Habanos Specialist Exclusive Jar</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><br />San Cristóbal is a current post-Revolution brand, launched in late 1999.<br /> The full brand name is San Cristóbal de la Habana, named after the original name for Havana and in honour of  Christopher Columbus.<br /><br /><b>Generally</b><br />It is classified by Habanos SA as a Niche brand and has a minor market share.<br />The range comprises light to medium-strength cigars, using tobacco from the premium <i>Vuelta Abajo</i> region.<br />This brand is not related to a pre-Revolution brand of the same name.<br /><br /><b>Releases</b><br />The original 1999 release cigars were named after forts that protected old Havana in the Spanish Colonial days.<br />Special Releases commenced in 2004 with the release of the 5th Anniversary Humidor. Each of these cigars was named after an ancient street in old Havana.<br /><br /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=33">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\San_Cristóbal_band_2146661936full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\San_Cristóbal_band_2146661936small.jpg" height="102" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">1999 on -- Current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:208px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Cristóbal_packaging_8196full.jpg">
<img class="box" alt="Typical San Cristóbal packaging" title="Typical San Cristóbal packaging" src="images\San_Cristóbal_packaging_8196small.jpg" height="150" width="208"  /></a>
</td></tr><tr><td><span class="bandhead">First Releases</span><br /><span class="band-caption">B25 - 1999</span><br /></td></tr></table><table align="left" width="175" style="width:150px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Cristóbal_packaging_4649full.jpg">
<img class="box" alt="Typical San Cristóbal packaging" title="Typical San Cristóbal packaging" src="images\San_Cristóbal_packaging_4649small.jpg" height="150" width="150"  /></a>
</td></tr><tr><td><span class="bandhead">La Punta</span><br /><span class="band-caption">B25 - 1999</span><br /></td></tr></table><table align="left" width="175" style="width:120px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Cristóbal_packaging_3446full.jpg">
<img class="box" alt="Typical San Cristóbal packaging" title="Typical San Cristóbal packaging" src="images\San_Cristóbal_packaging_3446small.jpg" height="150" width="120"  /></a>
</td></tr><tr><td><span class="bandhead">Mercaderes</span><br /><span class="band-caption">vBN - 2006</span><br /></td></tr></table><table align="left" width="175" style="width:120px;"><tr><td><a  data-lightbox="brand-packaging" href="images\San_Cristóbal_packaging_8867full.jpg">
<img class="box" alt="Typical San Cristóbal packaging" title="Typical San Cristóbal packaging" src="images\San_Cristóbal_packaging_8867small.jpg" height="150" width="120"  /></a>
</td></tr><tr><td><span class="bandhead">Oficios</span><br /><span class="band-caption">vBN25 - 2006</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="El_Morro">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">El Morro</td><td class="cigarDetailHead-i" style="width:30%">Pacos</td><td class="cigarDetailHead" style="text-align:center;width:19%">49 x 180<span class="inches" id="i0">&nbsp;(7.1")</span></td><td class="cigarDetailHead" style="width:21%">Double Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:540px">
<a data-lightbox="cigar-760" href="images\San_Cristóbal__El_Morro_cigar_orig_0.jpg">
<img class="box" src="images\San_Cristóbal__El_Morro_cigar_full_0.jpg" alt="El Morro - click to enlarge" title="El Morro - click to enlarge" height="59" width="540">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1999 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="El_Pr|incipe">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">El Príncipe</td><td class="cigarDetailHead-i" style="width:30%">Minutos</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 110<span class="inches" id="i1">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:330px">
<a data-lightbox="cigar-761" href="images\San_Cristóbal__El_Príncipe_cigar_orig.jpg">
<img class="box" src="images\San_Cristóbal__El_Príncipe_cigar_full.jpg" alt="El Príncipe - click to enlarge" title="El Príncipe - click to enlarge" height="52" width="330">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1999 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="La_Fuerza">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">La Fuerza</td><td class="cigarDetailHead-i" style="width:30%">Gorditos</td><td class="cigarDetailHead" style="text-align:center;width:19%">50 x 141<span class="inches" id="i2">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Robusto Extra</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:423px">
<a data-lightbox="cigar-795" href="images\San_Cristóbal__La_Fuerza_cigar_orig.jpg">
<img class="box" src="images\San_Cristóbal__La_Fuerza_cigar_full.jpg" alt="La Fuerza - click to enlarge" title="La Fuerza - click to enlarge" height="58" width="423">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1999 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="La_Punta">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">La Punta</td><td class="cigarDetailHead-i" style="width:30%">Campanas</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 140<span class="inches" id="i3">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Pyramid</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:420px">
<a data-lightbox="cigar-811" href="images\San_Cristóbal__La_Punta_cigar_orig.jpg">
<img class="box" src="images\San_Cristóbal__La_Punta_cigar_full.jpg" alt="La Punta - click to enlarge" title="La Punta - click to enlarge" height="60" width="420">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1999 release. Current. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Mercaderes">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Mercaderes</td><td class="cigarDetailHead-i" style="width:30%">Hermosos No.1</td><td class="cigarDetailHead" style="text-align:center;width:19%">48 x 167<span class="inches" id="i4">&nbsp;(6.6")</span></td><td class="cigarDetailHead" style="width:21%">Grand Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:501px">
<a data-lightbox="cigar-812" href="images\San_Cristóbal__Mercaderes_cigar_orig_3.jpg">
<img class="box" src="images\San_Cristóbal__Mercaderes_cigar_full_3.jpg" alt="Mercaderes - click to enlarge" title="Mercaderes - click to enlarge" height="60" width="501">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A with a "La Casa del Habano" band.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Varnished Boîte Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2006 release. Discontinued 2011. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Was a special release in 2004. Introduced in 2006 as a LCDH release but discontinued in 2011 as part of the new policy of releasing LCDH cigars in limited numbers.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Muralla">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Muralla</td><td class="cigarDetailHead-i" style="width:30%">Rodolfo</td><td class="cigarDetailHead" style="text-align:center;width:19%">54 x 180<span class="inches" id="i5">&nbsp;(7.1")</span></td><td class="cigarDetailHead" style="width:21%">Double Pyramid</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:540px">
<a data-lightbox="cigar-813" href="images\San_Cristóbal__Muralla_cigar_orig_0.jpg">
<img class="box" src="images\San_Cristóbal__Muralla_cigar_full_0.jpg" alt="Muralla - click to enlarge" title="Muralla - click to enlarge" height="64" width="540">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with a "La Casa del Habano" band.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Varnished Boîte Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2006 release. Discontinued 2011. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Was a special release in 2004. Introduced in 2006 as a LCDH release but discontinued in 2011 as part of the new policy of releasing LCDH cigars in limited numbers.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Oficios">San Cristóbal</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Oficios</td><td class="cigarDetailHead-i" style="width:30%">Dalias Cortas</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 135<span class="inches" id="i6">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:405px">
<a data-lightbox="cigar-830" href="images\San_Cristóbal__Oficios_cigar_orig_0.jpg">
<img class="box" src="images\San_Cristóbal__Oficios_cigar_full_0.jpg" alt="Oficios - click to enlarge" title="Oficios - click to enlarge" height="50" width="405">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with a "La Casa del Habano" band.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Varnished Boîte Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2006 release. Discontinued 2011. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Was a special release in 2004. Introduced in 2006 as a LCDH release but discontinued in 2011 as part of the new policy of releasing LCDH cigars in limited numbers.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="163_5_Aniversario_Humidor" class="entryhead">San Cristóbal</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2004 - 5 Aniversario Humidor <span class="srsub">Commemorative Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">El Morro&nbsp;&nbsp;<span class="noscig">(25)</span></td><td class="cigarDetailHead-i" style="width:30%">Pacos</td><td class="cigarDetailHead" style="text-align:center;width:19%">49 x 180<span class="inches" id="i7">&nbsp;(7.1")</span></td><td class="cigarDetailHead" style="width:21%">Double Corona</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Mercaderes&nbsp;&nbsp;<span class="noscig">(25)</span></td><td class="cigarDetailHead-i" style="width:30%">Hermosos No.1</td><td class="cigarDetailHead" style="text-align:center;width:19%">48 x 167<span class="inches" id="i8">&nbsp;(6.6")</span></td><td class="cigarDetailHead" style="width:21%">Grand Corona</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Muralla&nbsp;&nbsp;<span class="noscig">(25)</span></td><td class="cigarDetailHead-i" style="width:30%">Rodolfo</td><td class="cigarDetailHead" style="text-align:center;width:19%">54 x 180<span class="inches" id="i9">&nbsp;(7.1")</span></td><td class="cigarDetailHead" style="width:21%">Double Pyramid</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Oficios&nbsp;&nbsp;<span class="noscig">(25)</span></td><td class="cigarDetailHead-i" style="width:30%">Dalias Cortas</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 135<span class="inches" id="i10">&nbsp;(5.3")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr>
</table><div style="clear:both;padding-right:24px;width:540px">
<a  data-lightbox="special-163" href="images\San_Cristóbal__El_Morro_cigar_orig_1.jpg">
<img class="box" src = "images\San_Cristóbal__El_Morro_cigar_full_1.jpg" alt="El Morro - click to enlarge" title="El Morro - click to enlarge" height="58" width="540">
</a>
<span class="comments">El Morro - <i>a standard production size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:501px">
<a  data-lightbox="special-163" href="images\San_Cristóbal__Mercaderes_cigar_orig_4.jpg">
<img class="box" src = "images\San_Cristóbal__Mercaderes_cigar_full_4.jpg" alt="Mercaderes - click to enlarge" title="Mercaderes - click to enlarge" height="57" width="501">
</a>
<span class="comments">Mercaderes - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:540px">
<a  data-lightbox="special-163" href="images\San_Cristóbal__Muralla_cigar_orig_1.jpg">
<img class="box" src = "images\San_Cristóbal__Muralla_cigar_full_1.jpg" alt="Muralla - click to enlarge" title="Muralla - click to enlarge" height="65" width="540">
</a>
<span class="comments">Muralla - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:405px">
<a  data-lightbox="special-163" href="images\San_Cristóbal__Oficios_cigar_orig_1.jpg">
<img class="box" src = "images\San_Cristóbal__Oficios_cigar_full_1.jpg" alt="Oficios - click to enlarge" title="Oficios - click to enlarge" height="55" width="405">
</a>
<span class="comments">Oficios - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:192px">
<a data-lightbox="special-163" href="images\San_Cristóbal_Oficios_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\San_Cristóbal_Oficios_small.jpg" class="box" height="150" width="192" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:108px">
<a data-lightbox="special-163" href="images\2004_-_5_Aniversario_Humidor_full_0.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2004_-_5_Aniversario_Humidor_small_0.jpg" class="box" height="150" width="108" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
5th Anniversary Humidor</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special "5 Aniversario" band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Humidor of 100 cigars (500 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2004 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released to commemorate the 5th Anniversary of the brand.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="201_Colecci|on_Habanos_2009" class="entryhead">San Cristóbal</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2009 - Colección Habanos 2009 <span class="srsub">Habanos Collection Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">O´Reilly</td><td class="cigarDetailHead-i" style="width:30%">O´Reilly</td><td class="cigarDetailHead" style="text-align:center;width:19%">56 x 160<span class="inches" id="i11">&nbsp;(6.3")</span></td><td class="cigarDetailHead" style="width:21%">Double Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:480px">
<a  data-lightbox="special-201" href="images\San_Cristóbal__O´Reilly_cigar_orig_0.jpg">
<img class="box" src = "images\San_Cristóbal__O´Reilly_cigar_full_0.jpg" alt="O´Reilly - click to enlarge" title="O´Reilly - click to enlarge" height="67" width="480">
</a>
<span class="comments">O´Reilly - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:219px">
<a data-lightbox="special-201" href="images\2009_-_Colección_Habanos_full_3.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_Colección_Habanos_small_3.jpg" class="box" height="150" width="219" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:136px">
<a data-lightbox="special-201" href="images\2009_-_Colección_Habanos_full_4.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_Colección_Habanos_small_4.jpg" class="box" height="150" width="136" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:212px">
<a data-lightbox="special-201" href="images\2009_-_Colección_Habanos_full_5.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_Colección_Habanos_small_5.jpg" class="box" height="150" width="212" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Habanos Collection 2009</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Book-shaped Boîte Nature Box of 20 cigars (1,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2009 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">The ninth release of the Habanos Collection Series.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="206_X_Edici|on_Festival_del_Habano" class="entryhead">San Cristóbal</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2009 - X Edición Festival del Habano <span class="srsub">Multi Brand Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Mercaderes&nbsp;&nbsp;<span class="noscig">(1)</span></td><td class="cigarDetailHead-i" style="width:30%">Hermosos No.1</td><td class="cigarDetailHead" style="text-align:center;width:19%">48 x 167<span class="inches" id="i12">&nbsp;(6.6")</span></td><td class="cigarDetailHead" style="width:21%">Grand Corona</td></tr>
</table><div style="clear:both;padding-right:24px;width:501px">
<a  data-lightbox="special-206" href="images\San_Cristóbal__Mercaderes_cigar_orig_5.jpg">
<img class="box" src = "images\San_Cristóbal__Mercaderes_cigar_full_5.jpg" alt="Mercaderes - click to enlarge" title="Mercaderes - click to enlarge" height="59" width="501">
</a>
<span class="comments">Mercaderes - <i>a standard production and a special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:267px">
<div style="height:27px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-206" href="images\2009_-_X_Festival_del_Habano_full_1.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_X_Festival_del_Habano_small_1.jpg" class="box" height="123" width="267" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:136px">
<a data-lightbox="special-206" href="images\2009_-_X_Festival_del_Habano_full_6.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_X_Festival_del_Habano_small_6.jpg" class="box" height="150" width="136" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:135px">
<a data-lightbox="special-206" href="images\2009_-_X_Festival_del_Habano_full_5.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_X_Festival_del_Habano_small_5.jpg" class="box" height="150" width="135" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:207px">
<a data-lightbox="special-206" href="images\2009_-_X_Festival_del_Habano_full_4.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_X_Festival_del_Habano_small_4.jpg" class="box" height="150" width="207" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:267px">
<div style="height:39px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-206" href="images\2009_-_X_Festival_del_Habano_full_2.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2009_-_X_Festival_del_Habano_small_2.jpg" class="box" height="111" width="267" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
X Edition of the Habano Festival</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A with a special "X Festival del Habano" band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Black lacquered Boîte Nature Box of 10 cigars comprising 9 brands (20,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2009 release.  Boxes date from DIC 08.</td></tr><tr><td class="histhead">History:</td><td class="histnotes">This release is a replica of a special commemorative case gifted to attendees of the tenth Habanos festival in Cuba. <br />The case contains a selection of standard production 20 cigars (9 brands) released in the previous ten years.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="333_Colecci|on_Habanos_2011" class="entryhead">San Cristóbal</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2011 - Colección Habanos 2011 <span class="srsub">Habanos Collection Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">O´Reilly&nbsp;&nbsp;<span class="noscig">(3)</span></td><td class="cigarDetailHead-i" style="width:30%">O´Reilly</td><td class="cigarDetailHead" style="text-align:center;width:19%">56 x 160<span class="inches" id="i13">&nbsp;(6.3")</span></td><td class="cigarDetailHead" style="width:21%">Double Robusto</td></tr>
</table><div style="clear:both;padding-right:24px;width:480px">
<a  data-lightbox="special-333" href="images\San_Cristóbal_O´Reilly_cigar_orig_0.jpg">
<img class="box" src = "images\San_Cristóbal_O´Reilly_cigar_full_0.jpg" alt="O´Reilly - click to enlarge" title="O´Reilly - click to enlarge" height="67" width="480">
</a>
<span class="comments">O´Reilly - an existing special release size</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:154px">
<a data-lightbox="special-333" href="images\2011_-_Colección_Habanos_2011_full_2.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Colección_Habanos_2011_small_2.jpg" class="box" height="150" width="154" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:219px">
<a data-lightbox="special-333" href="images\Cohiba_Sublimes_Extra_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Cohiba_Sublimes_Extra_small.jpg" class="box" height="150" width="219" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Habanos Collection 2011 - Complete Works</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Large band A.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Book-shaped Boîte Nature Box of 30 cigars (1,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2011 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">The 11th release of the Habanos Collection Series, comprising 10 brands with three cigars in each brand. </br> This release is titled <i>"Obras Completas"</i> (the Complete Works).</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="305_Habanos_Specialist_Exclusive_Jar" class="entryhead">San Cristóbal</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2012 - Habanos Specialist Exclusive Jar <span class="srsub">Habanos Specialist Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Torreon</td><td class="cigarDetailHead-i" style="width:30%">Geniales</td><td class="cigarDetailHead" style="text-align:center;width:19%">54 x 150<span class="inches" id="i14">&nbsp;(5.9")</span></td><td class="cigarDetailHead" style="width:21%">Robusto Extra</td></tr>
</table><div style="clear:both;padding-right:24px;width:450px">
<img class="box" src = "images\San_Cristóbal_Torreon_cigar_full.jpg" alt="Torreon" title="Torreon" height="64" width="450">
<span class="comments">Torreon - a new special release size</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:205px">
<a data-lightbox="special-305" href="images\2012_-_Habanos_Specialist_Exclusive_Jar_full_0.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2012_-_Habanos_Specialist_Exclusive_Jar_small_0.jpg" class="box" height="150" width="205" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:226px">
<a data-lightbox="special-305" href="images\San_Cristóbal_Torreon_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\San_Cristóbal_Torreon_small.jpg" class="box" height="150" width="226" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Habanos Specialist Exclusive 2012</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A, with a "La Casa del Habano" band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Ceramic Jar of 25 cigars (2,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2012 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">First release of the exclusive releases for the Habanos Specialist shops. Released 2013.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
