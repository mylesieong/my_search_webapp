


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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=52" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQXiETx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkN1YmF0YWJhY288L3NwYW4+PGJyIC8+PGJyIC8+PGEgZGF0YS1saWdodGJveD0iYnJhbmQiIGhyZWY9ImltYWdlc1xDdWJhdGFiYWNvX2xvZ29fZnVsbC5qcGciPjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcQ3ViYXRhYmFjb19sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iQ3ViYXRhYmFjbyIgdGl0bGU9IkN1YmF0YWJhY28iPjwvYT48YnIgLz48YnIgLz48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMiIgbmFtZT0iRDIiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+U3BlY2lhbCBSZWxlYXNlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMTc3XzI1X0FuaXZlcnNhcmlvX0h1bWlkb3IiPjE5ODcgLSAyNSBBbml2ZXJzYXJpbyBIdW1pZG9yPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzE3OF8xNDkyX0h1bWlkb3IiPjE5OTIgLSAxNDkyIEh1bWlkb3I8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PGJyIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iY2VsbC1DIj48dGQgY2xhc3M9ImNlbGwtQyI+PHNwYW4gY2xhc3M9aGVhZDM+QnJhbmQgTm90ZXM8L3NwYW4+PGJyIC8+PGJyIC8+PGI+U3RhdHVzPC9iPjxCUiAvPkN1YmF0YWJhY28gd2FzIGZvcm1lZCBpbiAxOTYyIGFuZCBpcyB0aGUgdHJhZGVtYXJrIG5hbWUgb2YgRW1wcmVzYSBDdWJhbmEgZGVsIFRhYmFjby48QlIgLz48QlIgLz48Yj5IaXN0b3J5PC9iPjxCUiAvPkN1YmF0YWJhY28gaW5pdGlhbGx5IG93bmVkIHRoZSBjaWdhciBicmFuZHMgYW5kIHdhcyByZXNwb25zaWJsZSBjaWdhciBwcm9kdWN0aW9uIGFuZCBzYWxlcy48QlIgLz5JbiAxOTY2IHRoZSBjb21wYW55IHdhcyByZW5hbWVkIEVtcHJlc2EgRXhwb3J0YWRvcmEgZGVsIFRhYmFjby48QlIgLz5JbiAxOTk0IHNhbGVzIGJlY2FtZSB0aGUgcmVzcG9uc2liaWxpdHkgb2YgYSBuZXcgY29tcGFueSBuYW1lZCBIYWJhbm9zIFMuQS4gPEJSIC8+SW4gMjAwMSBtYW51ZmFjdHVyaW5nIGJlY2FtZSB0aGUgcmVzcG9uc2liaWxpdHkgb2YgYSBuZXcgY29tcGFueSBuYW1lZCBUYWJhY3ViYTxCUiAvPkN1YmF0YWJhY28gaXMgY3VycmVudGx5IHRoZSBvd25lciBvZiB0aGUgQ3ViYW4gY2lnYXIgYnJhbmQgbmFtZXMuPEJSIC8+PEJSIC8+PGI+UmVsZWFzZXM8L2I+PEJSIC8+VGhleSBoYXZlIHJlbGVhc2VkIDIgc3BlY2lhbCBDb21tZW1vcmF0aXZlIGh1bWlkb3JzIHVuZGVyIHRoZWlyIG93biBUcmFkZW1hcmsgYnJhbmQgbmFtZS48QlIgLz48QlIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTUyIj5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xDdWJhdGFiYWNvX2JhbmRfOTgzODUyNzc1ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xDdWJhdGFiYWNvX2JhbmRfOTgzODUyNzc1c21hbGwuanBnIiBoZWlnaHQ9IjEyOCIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5HZW5lcmFsIFB1cnBvc2UgQmFuZDwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5FbWJvc3NlZDwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj4xOTYyIHRvIDE5NjYgLS0gRGlzY29udGludWVkPC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCmRkAgEPDxYCHwEFxTg8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5TcGVjaWFsIFJlbGVhc2VzPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMTc3XzI1X0FuaXZlcnNhcmlvX0h1bWlkb3IiIGNsYXNzPSJlbnRyeWhlYWQiPkN1YmF0YWJhY288L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4xOTg3IC0gMjUgQW5pdmVyc2FyaW8gSHVtaWRvciA8c3BhbiBjbGFzcz0ic3JzdWIiPkNvbW1lbW9yYXRpdmUgUmVsZWFzZTwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25hczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTQyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkwIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjZweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzciIGhyZWY9ImltYWdlc1xDdWJhdGFiYWNvX0Nvcm9uYV9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcQ3ViYXRhYmFjb19Db3JvbmFfY2lnYXJfZnVsbC5qcGciIGFsdD0iQ29yb25hIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNvcm9uYSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTIiIHdpZHRoPSI0MjYiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5Db3JvbmE8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPGJyIC8+PCEtLSBiYW5kIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzciIGhyZWY9ImltYWdlc1xDdWJhdGFiYWNvX0Nvcm9uYV9iYW5kX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXEN1YmF0YWJhY29fQ29yb25hX2JhbmRfZnVsbF8wLmpwZyIgYWx0PSJDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iMjUgQW5pdmVyc2FyaW8gSHVtaWRvciBiYW5kIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIxMTYiIHdpZHRoPSI0MDAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj4yNSBBbml2ZXJzYXJpbyBCYW5kPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMDBweCI+DQo8ZGl2IHN0eWxlPSJoZWlnaHQ6MTNweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3dpZHRoOjFweCI+PC9kaXY+PCEtLXYtYWxpZ24gcHVzaCBkaXYtLT4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTc3IiBocmVmPSJpbWFnZXNcMTk4N18tX0N1YmF0YWJhY29fMjVfQW5pdmVyc2FyaW9fSHVtaWRvcl8yNDhmdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDE5ODdfLV9DdWJhdGFiYWNvXzI1X0FuaXZlcnNhcmlvX0h1bWlkb3JfMjQ4c21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjEzNyIgd2lkdGg9IjIwMCIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxNTFweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3NyIgaHJlZj0iaW1hZ2VzXDE5ODdfLV9DdWJhdGFiYWNvXzI1X0FuaXZlcnNhcmlvX0h1bWlkb3JfMjQ3ZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wxOTg3Xy1fQ3ViYXRhYmFjb18yNV9Bbml2ZXJzYXJpb19IdW1pZG9yXzI0N3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNTEiIC8+DQo8L2E+DQo8L2Rpdj48YnIgLz48IS0tIGVuZCBvZiBlbmQgYnJlYWsgLS0+PHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3BlY2lhbCAyNSBBbml2ZXJzYXJpbyBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5IdW1pZG9yIG9mIDUwIGNpZ2FycyAoMTAwIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5ODcgcmVsZWFzZS4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlJlbGVhc2VkIHRvIGNvbW1lbW9yYXRlIHRoZSAyNXRoIGFubml2ZXJzYXJ5IG9mIEN1YmF0YWJhY28uPEJSIC8+ICBUaGlzIHdhcyB0aGUgZmlyc3QgY29tbWVtb3JhdGl2ZSBodW1pZG9yIHByb2R1Y2VkIHNpbmNlIHRoZSBSZXZvbHV0aW9uLjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMTc4XzE0OTJfSHVtaWRvciIgY2xhc3M9ImVudHJ5aGVhZCI+Q3ViYXRhYmFjbzwvYT48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgIGNsYXNzPSJjaWdhcnRhYmxlIj48dHIgY2xhc3M9InJlbGVhc2VuYW1lIj48dGQgPjE5OTIgLSAxNDkyIEh1bWlkb3IgPHNwYW4gY2xhc3M9InNyc3ViIj5Db21tZW1vcmF0aXZlIFJlbGVhc2U8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkNvcm9uYXMgR29yZGFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDYgeCAxNDM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEiPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5HcmFuZCBDb3JvbmE8L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyOXB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3OCIgaHJlZj0iaW1hZ2VzXEN1YmF0YWJhY29fR3JhbmRfQ29yb25hX2NpZ2FyX29yaWcuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xDdWJhdGFiYWNvX0dyYW5kX0Nvcm9uYV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJHcmFuZCBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iR3JhbmQgQ29yb25hIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NiIgd2lkdGg9IjQyOSI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkdyYW5kIENvcm9uYTwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8YnIgLz48IS0tIGJhbmQgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQwMHB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3OCIgaHJlZj0iaW1hZ2VzXEN1YmF0YWJhY29fR3JhbmRfQ29yb25hX2JhbmRfb3JpZ18xLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcQ3ViYXRhYmFjb19HcmFuZF9Db3JvbmFfYmFuZF9mdWxsXzEuanBnIiBhbHQ9IkdyYW5kIENvcm9uYSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSIxNDkyIEh1bWlkb3IgYmFuZCAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMTAzIiB3aWR0aD0iNDAwIj4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+MTQ5MiBIdW1pZG9yIEJhbmQ8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzgiIGhyZWY9ImltYWdlc1xDdWJhdGFiYWNvX0dyYW5kX0Nvcm9uYV9iYW5kX29yaWdfMi5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXEN1YmF0YWJhY29fR3JhbmRfQ29yb25hX2JhbmRfZnVsbF8yLmpwZyIgYWx0PSJHcmFuZCBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iMTQ5MiBIdW1pZG9yIGJhbmQgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjEwMyIgd2lkdGg9IjQwMCI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPjxpPjE0OTIgSHVtaWRvciBiYW5kcyBhcmUgbnVtYmVyZWQgYW5kIG5vdCBlbWJvc3NlZDwvaT48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIwMHB4Ij4NCjxkaXYgc3R5bGU9ImhlaWdodDo0NXB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7d2lkdGg6MXB4Ij48L2Rpdj48IS0tdi1hbGlnbiBwdXNoIGRpdi0tPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzgiIGhyZWY9ImltYWdlc1wxOTkyXy1fQ3ViYXRhYmFjb18xNDkyX0h1bWlkb3JfMjM5ZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wxOTkyXy1fQ3ViYXRhYmFjb18xNDkyX0h1bWlkb3JfMjM5c21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjEwNSIgd2lkdGg9IjIwMCIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxNTJweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3OCIgaHJlZj0iaW1hZ2VzXDE5OTJfLV9DdWJhdGFiYWNvXzE0OTJfSHVtaWRvcl8yMzhmdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDE5OTJfLV9DdWJhdGFiYWNvXzE0OTJfSHVtaWRvcl8yMzhzbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTUyIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE2OHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTc4IiBocmVmPSJpbWFnZXNcMTk5Ml8tX0N1YmF0YWJhY29fMTQ5Ml9IdW1pZG9yXzIzN2Z1bGwuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMTk5Ml8tX0N1YmF0YWJhY29fMTQ5Ml9IdW1pZG9yXzIzN3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxNjgiIC8+DQo8L2E+DQo8L2Rpdj48YnIgLz48IS0tIGVuZCBvZiBlbmQgYnJlYWsgLS0+PHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLiAgTWFkZSBpbiB0aGUgSC4gVXBtYW5uIGZhY3RvcnkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TcGVjaWFsIG51bWJlcmVkICIxNDkyIiBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBIdW1pZG9yIG9mIDUwIGNpZ2FycyAoNTAxIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5OTIgcmVsZWFzZS4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlJlbGVhc2VkIGJ5IEN1YmF0YWJhY28gdG8gY29tbWVtb3JhdGUgdGhlIDUwMHRoIGFubml2ZXJzYXJ5IG9mIENvbHVtYnVzJiMzOTsgImRpc2NvdmVyeSIgb2YgdG9iYWNjby48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+ZGRkj8IiUp97MZRpjVgABKOso11+r2fdPD7VSVn3QZipeMQ=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d52 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Cubatabaco</span><br /><br /><a data-lightbox="brand" href="images\Cubatabaco_logo_full.jpg"><img class="box" src="images\Cubatabaco_logo_small.jpg" height="160" alt="Cubatabaco" title="Cubatabaco"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#177_25_Aniversario_Humidor">1987 - 25 Aniversario Humidor</option><option value="#178_1492_Humidor">1992 - 1492 Humidor</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Cubatabaco was formed in 1962 and is the trademark name of Empresa Cubana del Tabaco.<BR /><BR /><b>History</b><BR />Cubatabaco initially owned the cigar brands and was responsible cigar production and sales.<BR />In 1966 the company was renamed Empresa Exportadora del Tabaco.<BR />In 1994 sales became the responsibility of a new company named Habanos S.A. <BR />In 2001 manufacturing became the responsibility of a new company named Tabacuba<BR />Cubatabaco is currently the owner of the Cuban cigar brand names.<BR /><BR /><b>Releases</b><BR />They have released 2 special Commemorative humidors under their own Trademark brand name.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=52">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Cubatabaco_band_983852775full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Cubatabaco_band_983852775small.jpg" height="128" width="400"  /></a>
<br /><span class="bandhead">General Purpose Band</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">1962 to 1966 -- Discontinued</span>
</div></p></div></td></tr></table></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="177_25_Aniversario_Humidor" class="entryhead">Cubatabaco</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >1987 - 25 Aniversario Humidor <span class="srsub">Commemorative Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Corona</td><td class="cigarDetailHead-i" style="width:30%">Coronas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i0">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr>
</table><div style="clear:both;padding-right:24px;width:426px">
<a  data-lightbox="special-177" href="images\Cubatabaco_Corona_cigar_orig.jpg">
<img class="box" src = "images\Cubatabaco_Corona_cigar_full.jpg" alt="Corona - click to enlarge" title="Corona - click to enlarge" height="52" width="426">
</a>
<span class="comments">Corona</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-177" href="images\Cubatabaco_Corona_band_orig_0.jpg">
<img class="box" src = "images\Cubatabaco_Corona_band_full_0.jpg" alt="Corona - click to enlarge" title="25 Aniversario Humidor band - click to enlarge" height="116" width="400">
</a>
<span class="comments">25 Aniversario Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:200px">
<div style="height:13px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-177" href="images\1987_-_Cubatabaco_25_Aniversario_Humidor_248full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1987_-_Cubatabaco_25_Aniversario_Humidor_248small.jpg" class="box" height="137" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:151px">
<a data-lightbox="special-177" href="images\1987_-_Cubatabaco_25_Aniversario_Humidor_247full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1987_-_Cubatabaco_25_Aniversario_Humidor_247small.jpg" class="box" height="150" width="151" />
</a>
</div><br /><!-- end of end break --><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special 25 Aniversario band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Humidor of 50 cigars (100 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1987 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released to commemorate the 25th anniversary of Cubatabaco.<BR />  This was the first commemorative humidor produced since the Revolution.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="178_1492_Humidor" class="entryhead">Cubatabaco</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >1992 - 1492 Humidor <span class="srsub">Commemorative Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Grand Corona</td><td class="cigarDetailHead-i" style="width:30%">Coronas Gordas</td><td class="cigarDetailHead" style="text-align:center;width:19%">46 x 143<span class="inches" id="i1">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Grand Corona</td></tr>
</table><div style="clear:both;padding-right:24px;width:429px">
<a  data-lightbox="special-178" href="images\Cubatabaco_Grand_Corona_cigar_orig.jpg">
<img class="box" src = "images\Cubatabaco_Grand_Corona_cigar_full.jpg" alt="Grand Corona - click to enlarge" title="Grand Corona - click to enlarge" height="56" width="429">
</a>
<span class="comments">Grand Corona</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-178" href="images\Cubatabaco_Grand_Corona_band_orig_1.jpg">
<img class="box" src = "images\Cubatabaco_Grand_Corona_band_full_1.jpg" alt="Grand Corona - click to enlarge" title="1492 Humidor band - click to enlarge" height="103" width="400">
</a>
<span class="comments">1492 Humidor Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-178" href="images\Cubatabaco_Grand_Corona_band_orig_2.jpg">
<img class="box" src = "images\Cubatabaco_Grand_Corona_band_full_2.jpg" alt="Grand Corona - click to enlarge" title="1492 Humidor band - click to enlarge" height="103" width="400">
</a>
<span class="comments"><i>1492 Humidor bands are numbered and not embossed</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:200px">
<div style="height:45px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-178" href="images\1992_-_Cubatabaco_1492_Humidor_239full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1992_-_Cubatabaco_1492_Humidor_239small.jpg" class="box" height="105" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:152px">
<a data-lightbox="special-178" href="images\1992_-_Cubatabaco_1492_Humidor_238full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1992_-_Cubatabaco_1492_Humidor_238small.jpg" class="box" height="150" width="152" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:168px">
<a data-lightbox="special-178" href="images\1992_-_Cubatabaco_1492_Humidor_237full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1992_-_Cubatabaco_1492_Humidor_237small.jpg" class="box" height="150" width="168" />
</a>
</div><br /><!-- end of end break --><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Made in the H. Upmann factory.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special numbered "1492" band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Humidor of 50 cigars (501 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1992 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released by Cubatabaco to commemorate the 500th anniversary of Columbus&#39; "discovery" of tobacco.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
