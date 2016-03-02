


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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=53" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQWNEDx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkhhYmFub3M8L3NwYW4+PGJyIC8+PGJyIC8+PGEgZGF0YS1saWdodGJveD0iYnJhbmQiIGhyZWY9ImltYWdlc1xIYWJhbm9zX2xvZ29fZnVsbC5qcGciPjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcSGFiYW5vc19sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iSGFiYW5vcyIgdGl0bGU9IkhhYmFub3MiPjwvYT48YnIgLz48YnIgLz48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMiIgbmFtZT0iRDIiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+U3BlY2lhbCBSZWxlYXNlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMTZfMTk5NF9IdW1pZG9yIj4xOTk0IC0gMTk5NCBIdW1pZG9yPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIzE3OV9GZXN0aXZhbF8yMDAwX0JveCI+MjAwMCAtIEZlc3RpdmFsIDIwMDAgQm94PC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjwvc2VsZWN0PjxiciAvPjxiciAvPjwvdGQ+PC90cj48dHIgY2xhc3M9ImNlbGwtQyI+PHRkIGNsYXNzPSJjZWxsLUMiPjxzcGFuIGNsYXNzPWhlYWQzPkJyYW5kIE5vdGVzPC9zcGFuPjxiciAvPjxiciAvPjxiPlN0YXR1czwvYj48QlIgLz5IYWJhbm9zIFMuQS4gd2FzIGZvcm1lZCBpbiAxOTk0IGFuZCBpcyB0aGUgdHJhZGVtYXJrIG5hbWUgb2YgSGFiYW5vcyBTb2NpZWRhZCBBbm9taW5hLjxCUiAvPjxCUiAvPjxiPkhpc3Rvcnk8L2I+PEJSIC8+SW4gMTk5NiBpdCB0b29rIG92ZXIgdGhlIGNvbW1lcmNpYWwgKHNhbGVzKSByZXNwb25zaWJpbGl0aWVzIGZyb20gQ3ViYXRhYmFjby48QlIgLz5JbiAyMDAwIHRoZSBGcmVuY2ggLyBTcGFuaXNoIGNvbXBhbnkgQWx0YWRpcyBTLkEuIHB1cmNoYXNlcyBhIDUwJSBzaGFyZSBvZiBIYWJhbm9zIFMuQS48QlIgLz5JbiAyMDA3IEJyaXRhaW7igJlzIEltcGVyaWFsIFRvYmFjY28gcHVyY2hhc2VkIDEwMCUgb2YgQWx0YWRpcyBTLkEuPEJSIC8+IDxCUiAvPjxiPlJlbGVhc2VzPC9iPjxCUiAvPlRoZXkgaGF2ZSByZWxlYXNlZCAyIHNwZWNpYWwgQ29tbWVtb3JhdGl2ZSBodW1pZG9ycyB1bmRlciB0aGUgSGFiYW5vcyBTLkEuIG5hbWUuPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD01MyI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcSGFiYW5vc19iYW5kXzExMzQzODUwMzlmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXEhhYmFub3NfYmFuZF8xMTM0Mzg1MDM5c21hbGwuanBnIiBoZWlnaHQ9Ijg5IiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkdlbmVyYWwgUHVycG9zZSBCYW5kPC9zcGFuPjxiciAvPg0KPHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbjIiPkVtYm9zc2VkLjwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj4xOTk2IG9uPC9zcGFuPg0KPC9kaXY+PC9wPjwvZGl2PjwvdGQ+PC90cj48L3RhYmxlPjwvdGQ+PC90cj4NCmRkAgEPDxYCHwEF8DM8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5TcGVjaWFsIFJlbGVhc2VzPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMTZfMTk5NF9IdW1pZG9yIiBjbGFzcz0iZW50cnloZWFkIj5IYWJhbm9zPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MTk5NCAtIDE5OTQgSHVtaWRvciA8c3BhbiBjbGFzcz0ic3JzdWIiPkNvbW1lbW9yYXRpdmUgUmVsZWFzZTwvc3Bhbj48L3RkPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkdyYW5kIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25hcyBHb3JkYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NiB4IDE0MzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkdyYW5kIENvcm9uYTwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDI5cHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTYiIGhyZWY9ImltYWdlc1xIYWJhbm9zX0dyYW5kX0Nvcm9uYV9jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xIYWJhbm9zX0dyYW5kX0Nvcm9uYV9jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IkdyYW5kIENvcm9uYSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJHcmFuZCBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU2IiB3aWR0aD0iNDI5Ij4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+R3JhbmQgQ29yb25hPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjxiciAvPjwhLS0gYmFuZCBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDAwcHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTYiIGhyZWY9ImltYWdlc1xIYWJhbm9zX0dyYW5kX0Nvcm9uYV9iYW5kX29yaWdfMS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXEhhYmFub3NfR3JhbmRfQ29yb25hX2JhbmRfZnVsbF8xLmpwZyIgYWx0PSJHcmFuZCBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iMTk5NCBIdW1pZG9yIGJhbmQgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjEyMyIgd2lkdGg9IjQwMCI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPjE5OTQgSHVtaWRvciBCYW5kPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMDBweCI+DQo8ZGl2IHN0eWxlPSJoZWlnaHQ6NjVweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3dpZHRoOjFweCI+PC9kaXY+PCEtLXYtYWxpZ24gcHVzaCBkaXYtLT4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTYiIGhyZWY9ImltYWdlc1wxOTk0Xy1fSGFiYW5vc18xOTk0X0h1bWlkb3JfMjUwZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wxOTk0Xy1fSGFiYW5vc18xOTk0X0h1bWlkb3JfMjUwc21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9Ijg1IiB3aWR0aD0iMjAwIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjEyNnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTYiIGhyZWY9ImltYWdlc1wxOTk0Xy1fSGFiYW5vc18xOTk0X0h1bWlkb3JfMjQ5ZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wxOTk0Xy1fSGFiYW5vc18xOTk0X0h1bWlkb3JfMjQ5c21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEyNiIgLz4NCjwvYT4NCjwvZGl2PjxiciAvPjwhLS0gZW5kIG9mIGVuZCBicmVhayAtLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoIj48c3BhbiBjbGFzcz0iY29tbWVudHMiPg0KMTk5NCBIdW1pZG9yPC9zcGFuPjxiciAvPjwhLS0gYWZ0ZXIgc3BlY2lhbCBub3RlIGJyZWFrIC0tPjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLiAgTWFkZSBpbiB0aGUgSC4gVXBtYW5uIGZhY3RvcnkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TcGVjaWFsICIxOTk0IiBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBIdW1pZG9yIG9mIDUwIGNpZ2FycyAoNTAyIG1hZGUpLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDE5OTQgcmVsZWFzZS4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPlJlbGVhc2VkIHRvIGNvbW1lbW9yYXRlIHRoZSBlc3RhYmxpc2htZW50IG9mIEhhYmFub3MgUy5BLjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMTc5X0Zlc3RpdmFsXzIwMDBfQm94IiBjbGFzcz0iZW50cnloZWFkIj5IYWJhbm9zPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAwMCAtIEZlc3RpdmFsIDIwMDAgQm94IDxzcGFuIGNsYXNzPSJzcnN1YiI+Q29tbWVtb3JhdGl2ZSBSZWxlYXNlPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDIgeCAxMjk8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEiPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM4N3B4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3OSIgaHJlZj0iaW1hZ2VzXEhhYmFub3NfUGV0aXRfQ29yb25hX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXEhhYmFub3NfUGV0aXRfQ29yb25hX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iUGV0aXQgQ29yb25hIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IlBldGl0IENvcm9uYSAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTEiIHdpZHRoPSIzODciPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5QZXRpdCBDb3JvbmE8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPGJyIC8+PCEtLSBiYW5kIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MDBweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzkiIGhyZWY9ImltYWdlc1xIYWJhbm9zX1BldGl0X0Nvcm9uYV9iYW5kX29yaWdfMS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXEhhYmFub3NfUGV0aXRfQ29yb25hX2JhbmRfZnVsbF8xLmpwZyIgYWx0PSJQZXRpdCBDb3JvbmEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRmVzdGl2YWwgMjAwMCBCb3ggYmFuZCAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iMTAzIiB3aWR0aD0iNDAwIj4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+RmVzdGl2YWwgMjAwMCBCYW5kPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyMDBweCI+DQo8ZGl2IHN0eWxlPSJoZWlnaHQ6MjZweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3dpZHRoOjFweCI+PC9kaXY+PCEtLXYtYWxpZ24gcHVzaCBkaXYtLT4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTc5IiBocmVmPSJpbWFnZXNcMjAwMF8tX0hhYmFub19GZXN0aXZhbF8yMDAwX0h1bWlkb3JfMjYzZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDAwXy1fSGFiYW5vX0Zlc3RpdmFsXzIwMDBfSHVtaWRvcl8yNjNzbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTI0IiB3aWR0aD0iMjAwIiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjEyOHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTc5IiBocmVmPSJpbWFnZXNcMjAwMF8tX0hhYmFub19GZXN0aXZhbF8yMDAwX0h1bWlkb3JfMjYyZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDAwXy1fSGFiYW5vX0Zlc3RpdmFsXzIwMDBfSHVtaWRvcl8yNjJzbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTI4IiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQpGZXN0aXZhbCAyMDAwIEJveDwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS4gIE1hZGUgaW4gdGhlIEguIFVwbWFubiBmYWN0b3J5LjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3BlY2lhbCAiRmVzdGl2YWwgZGVsIExhIEhhYmFuYSAyMDAwIiBiYW5kLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5WYXJuaXNoZWQgQm/DrnRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIDIwMDAgcmVsZWFzZS4gwqBUaGV5IHdlcmUgYXZhaWxhYmxlIGZvciBzYWxlIHdvcmxkd2lkZS4gQXBwcm94aW1hdGVseSAxLDUwMCBiZWxpZXZlZCB0byBiZSBtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5SZWxlYXNlZCB0byBjb21tZW1vcmF0ZSB0aGUgc2Vjb25kIEhhYmFub3MgZmVzdGl2YWwgaW4gMjAwMC48L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+ZGRkmgu+Ru8p7IdgJZAOIyDBX6qDBBzwcMk1a/61K10/He8=" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d53 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Habanos</span><br /><br /><a data-lightbox="brand" href="images\Habanos_logo_full.jpg"><img class="box" src="images\Habanos_logo_small.jpg" height="160" alt="Habanos" title="Habanos"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#16_1994_Humidor">1994 - 1994 Humidor</option><option value="#179_Festival_2000_Box">2000 - Festival 2000 Box</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Habanos S.A. was formed in 1994 and is the trademark name of Habanos Sociedad Anomina.<BR /><BR /><b>History</b><BR />In 1996 it took over the commercial (sales) responsibilities from Cubatabaco.<BR />In 2000 the French / Spanish company Altadis S.A. purchases a 50% share of Habanos S.A.<BR />In 2007 Britain’s Imperial Tobacco purchased 100% of Altadis S.A.<BR /> <BR /><b>Releases</b><BR />They have released 2 special Commemorative humidors under the Habanos S.A. name.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=53">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Habanos_band_1134385039full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Habanos_band_1134385039small.jpg" height="89" width="400"  /></a>
<br /><span class="bandhead">General Purpose Band</span><br />
<span class="band-caption2">Embossed.</span><br /><span class="band-caption">1996 on</span>
</div></p></div></td></tr></table></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="16_1994_Humidor" class="entryhead">Habanos</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >1994 - 1994 Humidor <span class="srsub">Commemorative Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Grand Corona</td><td class="cigarDetailHead-i" style="width:30%">Coronas Gordas</td><td class="cigarDetailHead" style="text-align:center;width:19%">46 x 143<span class="inches" id="i0">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Grand Corona</td></tr>
</table><div style="clear:both;padding-right:24px;width:429px">
<a  data-lightbox="special-16" href="images\Habanos_Grand_Corona_cigar_orig_0.jpg">
<img class="box" src = "images\Habanos_Grand_Corona_cigar_full_0.jpg" alt="Grand Corona - click to enlarge" title="Grand Corona - click to enlarge" height="56" width="429">
</a>
<span class="comments">Grand Corona</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-16" href="images\Habanos_Grand_Corona_band_orig_1.jpg">
<img class="box" src = "images\Habanos_Grand_Corona_band_full_1.jpg" alt="Grand Corona - click to enlarge" title="1994 Humidor band - click to enlarge" height="123" width="400">
</a>
<span class="comments">1994 Humidor Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:200px">
<div style="height:65px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-16" href="images\1994_-_Habanos_1994_Humidor_250full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1994_-_Habanos_1994_Humidor_250small.jpg" class="box" height="85" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:126px">
<a data-lightbox="special-16" href="images\1994_-_Habanos_1994_Humidor_249full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\1994_-_Habanos_1994_Humidor_249small.jpg" class="box" height="150" width="126" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
1994 Humidor</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Made in the H. Upmann factory.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special "1994" band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Humidor of 50 cigars (502 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1994 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released to commemorate the establishment of Habanos S.A.</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="179_Festival_2000_Box" class="entryhead">Habanos</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2000 - Festival 2000 Box <span class="srsub">Commemorative Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Petit Corona</td><td class="cigarDetailHead-i" style="width:30%">Marevas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i1">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr>
</table><div style="clear:both;padding-right:24px;width:387px">
<a  data-lightbox="special-179" href="images\Habanos_Petit_Corona_cigar_orig_0.jpg">
<img class="box" src = "images\Habanos_Petit_Corona_cigar_full_0.jpg" alt="Petit Corona - click to enlarge" title="Petit Corona - click to enlarge" height="51" width="387">
</a>
<span class="comments">Petit Corona</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-179" href="images\Habanos_Petit_Corona_band_orig_1.jpg">
<img class="box" src = "images\Habanos_Petit_Corona_band_full_1.jpg" alt="Petit Corona - click to enlarge" title="Festival 2000 Box band - click to enlarge" height="103" width="400">
</a>
<span class="comments">Festival 2000 Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:200px">
<div style="height:26px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-179" href="images\2000_-_Habano_Festival_2000_Humidor_263full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2000_-_Habano_Festival_2000_Humidor_263small.jpg" class="box" height="124" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:128px">
<a data-lightbox="special-179" href="images\2000_-_Habano_Festival_2000_Humidor_262full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2000_-_Habano_Festival_2000_Humidor_262small.jpg" class="box" height="150" width="128" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Festival 2000 Box</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.  Made in the H. Upmann factory.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special "Festival del La Habana 2000" band.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Varnished Boîte Nature Box of 25 cigars.</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2000 release.  They were available for sale worldwide. Approximately 1,500 believed to be made.</td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released to commemorate the second Habanos festival in 2000.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
