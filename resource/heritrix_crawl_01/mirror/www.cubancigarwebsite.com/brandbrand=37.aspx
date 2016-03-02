


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
var inchLimit = 12;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=37" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT88c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTI7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEF2C48dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQgY2xhc3M9ImNlbGwtQyI+PGJyIC8+PHNwYW4gY2xhc3M9ImhlYWQxIj5WZWd1ZXJvczwvc3Bhbj48YnIgLz48YnIgLz48YSBkYXRhLWxpZ2h0Ym94PSJicmFuZCIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX2xvZ29fZnVsbC5qcGciPjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcVmVndWVyb3NfbG9nb19zbWFsbC5qcGciIGhlaWdodD0iMTYwIiBhbHQ9IlZlZ3Vlcm9zIiB0aXRsZT0iVmVndWVyb3MiPjwvYT48YnIgLz48YnIgLz48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMSIgbmFtZT0iRDEiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+Q3VycmVudCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0VudHJldGllbXBvcyI+RW50cmV0aWVtcG9zPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI01hfG5hbml0YXMiPk1hw7Fhbml0YXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjVGFwYWRvcyI+VGFwYWRvczwvb3B0aW9uPgk8L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMyIgbmFtZT0iRDMiIGNsYXNzPSJkcm9wZG93biI+CTxvcHRpb24gc2VsZWN0ZWQ9InNlbGVjdGVkIiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2Fyczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNFc3BlY2lhbGVzX05vLjEiPkVzcGVjaWFsZXMgTm8uMTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNFc3BlY2lhbGVzX05vLjIiPkVzcGVjaWFsZXMgTm8uMjwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNNYXJldmFzIj5NYXJldmFzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1Nlb2FuZSI+U2VvYW5lPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMiIgbmFtZT0iRDIiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+U3BlY2lhbCBSZWxlYXNlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMzQ0X0NvbGxlY3RvciI+MjAwMiAtIENvbGxlY3Rvcjwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMxNzZfMTM1dGhfQW5pdmVyc2FyaW9fSHVtaWRvciI+MjAwMyAtIDEzNXRoIEFuaXZlcnNhcmlvIEh1bWlkb3I8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PGJyIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iY2VsbC1DIj48dGQgY2xhc3M9ImNlbGwtQyI+PHNwYW4gY2xhc3M9aGVhZDM+QnJhbmQgTm90ZXM8L3NwYW4+PGJyIC8+PGJyIC8+PGI+U3RhdHVzPC9iPjxCUiAvPlZlZ3Vlcm9zIGlzIGEgcG9zdC1yZXZvbHV0aW9uIEhhYmFub3MgU0EgYnJhbmQuPEJSIC8+SXQgd2FzIGVzdGFibGlzaGVkIGluIDE5OTcgYW5kIGFsbCBjdXJyZW50IGNpZ2FycyB3ZXJlIGRpc2NvbnRpbnVlZCBpbiAyMDEyLiAgSW4gMjAxMyB0aGUgYnJhbmQgd2FzIHJlbGF1bmNoZWQgd2l0aCB0aHJlZSBuZXcgdml0b2xhcy48QlIgLz5JdCBpcyBjbGFzc2lmaWVkIGFzIGEgTG9jYWwgYnJhbmQsIGFuZCBoYXMgYSBtaW5vciBtYXJrZXQgc2hhcmUuPEJSIC8+PEJSIC8+PGI+R2VuZXJhbGx5PC9iPjxCUiAvPlRoZSByYW5nZSBjb21wcmlzZXMgdG9iYWNjbyBmcm9tIHRoZSBwcmVtaXVtIDxpPlZ1ZWx0YSBBYmFqbzwvaT4gcmVnaW9uLiAgPEJSIC8+VW50aWwgMjAxMiB0aGUgY2lnYXJzIHdlcmUgZnVsbCBzdHJlbmd0aC4gIFRoZSBuZXcgMjAxMyBjaWdhciByZWxlYXNlcyBhcmUgbWVkaXVtIHN0cmVuZ3RoLjxCUiAvPjxCUiAvPjxiPiBSZWxlYXNlczwvYj48QlIgLz5UaGVyZSBoYXZlIGJlZW4gdHdvIHNwZWNpYWwgY29tbWlzc2lvbnMuPEJSIC8+PEJSIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZD48c3BhbiBjbGFzcz0iaGVhZDMiPlN0YW5kYXJkIENpZ2FyIEJhbmRzPC9zcGFuPjxiciAvPjxhIGhyZWY9ImJhbmQuYXNweD9icmFuZD0zNyI+RnVsbCBiYW5kIGdhbGxhcnk8L2E+PGJyIC8+PGJyIC8+DQo8dGFibGUgc3R5bGU9Im1heC13aWR0aDo4NjVweCIgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48ZGl2IGNsYXNzPSJnYWxsZXJ5Ij48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcVmVndWVyb3NfYmFuZF8xNzk3MDk5MzczZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xWZWd1ZXJvc19iYW5kXzE3OTcwOTkzNzNzbWFsbC5qcGciIGhlaWdodD0iMTMzIiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQTwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5Ob3QgZW1ib3NzZWQ8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+MTk5NyB0byAyMDEyIC0tIERpc2NvbnRpbnVlZDwvc3Bhbj4NCjwvZGl2PjwvcD48cD48ZGl2PjxhIGRhdGEtbGlnaHRib3g9ImJhbmRzIiBocmVmPSJpbWFnZXNcVmVndWVyb3NfYmFuZF8xNjQxMzcyNDA5ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xWZWd1ZXJvc19iYW5kXzE2NDEzNzI0MDlzbWFsbC5qcGciIGhlaWdodD0iMTA4IiB3aWR0aD0iNDAwIiAgLz48L2E+DQo8YnIgLz48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlN0YW5kYXJkIEJhbmQgQjwvc3Bhbj48YnIgLz4NCjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24yIj5FbWJvc3NlZD88L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+MjAxMyBvbiAtIEN1cnJlbnQ8L3NwYW4+DQo8L2Rpdj48L3A+PC9kaXY+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPg0KPHRyPjx0ZCBjbGFzcz0iYnJhbmRfdGFibGUiPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgUHJvZHVjdGlvbiBQYWNrYWdpbmc8L3NwYW4+PGJyIC8+PGJyIC8+DQo8dGFibGUgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMTZweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX3BhY2thZ2luZ183ODM4ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgVmVndWVyb3MgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBWZWd1ZXJvcyBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX3BhY2thZ2luZ183ODM4c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjExNiIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5FbnRyZXRpZW1wb3M8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+TVQxNiAtIDIwMTM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6OTlweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX3BhY2thZ2luZ180OWZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIFZlZ3Vlcm9zIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgVmVndWVyb3MgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xWZWd1ZXJvc19wYWNrYWdpbmdfNDlzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iOTkiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+RXNwZWNpYWxlcyBOby4xPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlNCTjI1IC0gMjAxMDwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMTVweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX3BhY2thZ2luZ18zNDg3ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgVmVndWVyb3MgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBWZWd1ZXJvcyBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX3BhY2thZ2luZ18zNDg3c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjExNSIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5NYcOxYW5pdGFzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPk1UMTYgLSAyMDEzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjEwMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcVmVndWVyb3NfcGFja2FnaW5nXzUwZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgVmVndWVyb3MgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBWZWd1ZXJvcyBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX3BhY2thZ2luZ181MHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMDAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+U2VvYW5lPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlA1IC0gMjAxMjwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDo4OXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcVmVndWVyb3NfcGFja2FnaW5nXzg2NjJmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBWZWd1ZXJvcyBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIFZlZ3Vlcm9zIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcVmVndWVyb3NfcGFja2FnaW5nXzg2NjJzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iODkiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+VGFwYWRvczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5NVDE2IC0gMjAxMzwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+PC90YWJsZT48YnIgLz48L3RkPjwvdHI+DQpkZAIBDw8WAh8BBbuYATx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiIHN0eWxlPSJib3JkZXItdG9wOm5vbmUiPjx0Ym9keT48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkN1cnJlbnQgUHJvZHVjdGlvbiBDaWdhcnM8L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJFbnRyZXRpZW1wb3MiPlZlZ3Vlcm9zPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkVudHJldGllbXBvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+UGV0aXQgRWRtdW5kbzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjUyIHggMTEwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkwIj4mbmJzcDsoNC4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgUm9idXN0bzwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzMwcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMTU1MyIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX0VudHJldGllbXBvc19jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcVmVndWVyb3NfRW50cmV0aWVtcG9zX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iRW50cmV0aWVtcG9zIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVudHJldGllbXBvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNjQiIHdpZHRoPSIzMzAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+TWV0YWwgVGluIG9mIDE2IGNpZ2Fycy48YnIgLz5DYXJkYm9hcmQgUGFjayBvZiA0IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxMyByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+UmVsZWFzZWQgbWlkLTIwMTQuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9Ik1hfG5hbml0YXMiPlZlZ3Vlcm9zPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPk1hw7Fhbml0YXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk1hw7Fhbml0YXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NiB4IDEwMDxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDMuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IFB5cmFtaWQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjMwMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTE1NTQiIGhyZWY9ImltYWdlc1xWZWd1ZXJvc19NYcOxYW5pdGFzX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xWZWd1ZXJvc19NYcOxYW5pdGFzX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iTWHDsWFuaXRhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJNYcOxYW5pdGFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1NSIgd2lkdGg9IjMwMCI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQi48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj5NZXRhbCBUaW4gb2YgMTYgY2lnYXJzLjxiciAvPkNhcmRib2FyZCBQYWNrIG9mIDQgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDEzIHJlbGVhc2UuIEN1cnJlbnQuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5SZWxlYXNlZCBtaWQtMjAxNC48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iVGFwYWRvcyI+VmVndWVyb3M8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+VGFwYWRvczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TWFyZXZhIEdydWVzYTwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ2IHggMTIwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkyIj4mbmJzcDsoNC43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hIEV4dHJhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNjBweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xNTUyIiBocmVmPSJpbWFnZXNcVmVndWVyb3NfVGFwYWRvc19jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcVmVndWVyb3NfVGFwYWRvc19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IlRhcGFkb3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iVGFwYWRvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTciIHdpZHRoPSIzNjAiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEIuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+TWV0YWwgVGluIG9mIDE2IGNpZ2Fycy48YnIgLz5DYXJkYm9hcmQgUGFjayBvZiA0IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxMyByZWxlYXNlLiBDdXJyZW50LiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+UmVsZWFzZWQgbWlkLTIwMTQuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2FyczwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkVzcGVjaWFsZXNfTm8uMSI+VmVndWVyb3M8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RXNwZWNpYWxlcyBOby4xPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5MYWd1aXRvIE5vLjE8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOCB4IDE5MjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbmcgUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjU3NnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTExMiIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMV9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMV9jaWdhcl9mdWxsLmpwZyIgYWx0PSJFc3BlY2lhbGVzIE5vLjEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRXNwZWNpYWxlcyBOby4xIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0OCIgd2lkdGg9IjU3NiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTk3IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDEwLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRXNwZWNpYWxlc19Oby4yIj5WZWd1ZXJvczwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Fc3BlY2lhbGVzIE5vLjI8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkxhZ3VpdG8gTm8uMjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjM4IHggMTUyPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk0Ij4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQ1NnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTExMyIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMl9jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMl9jaWdhcl9mdWxsLmpwZyIgYWx0PSJFc3BlY2lhbGVzIE5vLjIgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRXNwZWNpYWxlcyBOby4yIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0NyIgd2lkdGg9IjQ1NiI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5TZW1pIEJvaXRlIE5hdHVyZSBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTk3IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDEwLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iTWFyZXZhcyI+VmVndWVyb3M8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TWFyZXZhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQyIHggMTI5PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk1Ij4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozODdweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMTQiIGhyZWY9ImltYWdlc1xWZWd1ZXJvc19NYXJldmFzX2NpZ2FyX29yaWdfMS5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xWZWd1ZXJvc19NYXJldmFzX2NpZ2FyX2Z1bGxfMS5qcGciIGFsdD0iTWFyZXZhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJNYXJldmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0OSIgd2lkdGg9IjM4NyI+DQo8L2E+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMTk5NyByZWxlYXNlLiBEaXNjb250aW51ZWQgMjAxMi4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlNlb2FuZSI+VmVndWVyb3M8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+U2VvYW5lPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5TZW9hbmU8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zNiB4IDEyNTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNiI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNtYWxsIFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNzhweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0xMTUiIGhyZWY9ImltYWdlc1xWZWd1ZXJvc19TZW9hbmVfY2lnYXJfb3JpZ18xLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX1Nlb2FuZV9jaWdhcl9mdWxsXzEuanBnIiBhbHQ9IlNlb2FuZSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJTZW9hbmUgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQyIiB3aWR0aD0iMzc4Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTk3IHJlbGVhc2UuIERpc2NvbnRpbnVlZCAyMDEyLiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+VW50aWwgYzIwMDIgdGhpcyBjaWdhciB3YXMgYSBoYW5kbWFkZSBTZW9hbmUtb2xkICgzNiB4IDEyNSkgdml0b2xhLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5TcGVjaWFsIFJlbGVhc2VzPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMzQ0X0NvbGxlY3RvciIgY2xhc3M9ImVudHJ5aGVhZCI+VmVndWVyb3M8L2E+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlICBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyIGNsYXNzPSJyZWxlYXNlbmFtZSI+PHRkID4yMDAyIC0gQ29sbGVjdG9yIDxzcGFuIGNsYXNzPSJzcnN1YiI+T3RoZXIgU3BlY2lhbCBSZWxlYXNlPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+QmVsaWNvc29zIEV4dHJhPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5DYW1wYW5hczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjUyIHggMTQwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk3Ij4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UHlyYW1pZDwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDIwcHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMzQ0IiBocmVmPSJpbWFnZXNcVmVndWVyb3NfQmVsaWNvc29zX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFZlZ3Vlcm9zX0JlbGljb3Nvc19jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IkJlbGljb3NvcyBFeHRyYSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJCZWxpY29zb3MgRXh0cmEgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjY0IiB3aWR0aD0iNDIwIj4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+QmVsaWNvc29zIEV4dHJhIC0gPGk+YSBuZXcgc3BlY2lhbCByZWxlYXNlIHNpemU8L2k+PC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO2hlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxNTVweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTM0NCIgaHJlZj0iaW1hZ2VzXDIwMDJfLV9Db2xsZWN0b3JfZnVsbF8wLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMDJfLV9Db2xsZWN0b3Jfc21hbGxfMC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTU1IiAvPg0KPC9hPg0KPC9kaXY+PGRpdiBzdHlsZT0iaGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE5N3B4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMzQ0IiBocmVmPSJpbWFnZXNcVmVndWVyb3NfQmVsaWNvc29zX0V4dHJhX2Z1bGwuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcVmVndWVyb3NfQmVsaWNvc29zX0V4dHJhX3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxOTciIC8+DQo8L2E+DQo8L2Rpdj48YnIgLz48IS0tIGVuZCBvZiBlbmQgYnJlYWsgLS0+PHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3BlY2lhbCBiYW5kIChhbG1vc3QgaWRlbnRpY2FsIHRvIGJhbmQgQSwgYnV0IGRlZXBlciBzaGFkaW5nIG9mIHRoZSBsb3dlciBzdGVtIHdpdGhpbiB0aGUgVikuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48VEQgY2xhc3M9cGFja25vdGVzPk51bWJlcmVkIEh1bWlkb3Igb2YgMjUgY2lnYXJzICgyMDAgbWFkZSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAwMiByZWxlYXNlLiBMaW1pdGVkIGRpc3RyaWJ1dGlvbiAoYSBzcGVjaWFsIGNvbW1pc3Npb24pLjwvdGQ+PC90cj48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImVudHJ5Ij48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0ciBjbGFzcz0iZW50cnloZWFkIj48dGQgY29sc3Bhbj0iMiI+PGEgbmFtZT0iMTc2XzEzNXRoX0FuaXZlcnNhcmlvX0h1bWlkb3IiIGNsYXNzPSJlbnRyeWhlYWQiPlZlZ3Vlcm9zPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAwMyAtIDEzNXRoIEFuaXZlcnNhcmlvIEh1bWlkb3IgPHNwYW4gY2xhc3M9InNyc3ViIj5PdGhlciBTcGVjaWFsIFJlbGVhc2U8L3NwYW4+PC90ZD48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5DZXBvJm5ic3A7Jm5ic3A7PHNwYW4gY2xhc3M9Im5vc2NpZyI+KDUwKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlVua25vd248L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40OSB4IDE0MTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpOCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkdyYW5kIENvcm9uYTwvdGQ+PC90cj4NCjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRyPg0KPHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkVzcGVjaWFsZXMgTm8uMSZuYnNwOyZuYnNwOzxzcGFuIGNsYXNzPSJub3NjaWciPigyMCk8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5MYWd1aXRvIE5vLjE8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOCB4IDE5MjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpOSI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPkxvbmcgUGFuZXRlbGE8L3RkPjwvdHI+DQo8dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Fc3BlY2lhbGVzIE5vLjImbmJzcDsmbmJzcDs8c3BhbiBjbGFzcz0ibm9zY2lnIj4oMTUpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TGFndWl0byBOby4yPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzggeCAxNTI8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEwIj4mbmJzcDsoNi4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGFuZXRlbGE8L3RkPjwvdHI+DQo8dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5NYXJldmFzJm5ic3A7Jm5ic3A7PHNwYW4gY2xhc3M9Im5vc2NpZyI+KDI1KTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk1hcmV2YXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MiB4IDEyOTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTEiPiZuYnNwOyg1LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+DQo8dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0cj4NCjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5TZW9hbmUmbmJzcDsmbmJzcDs8c3BhbiBjbGFzcz0ibm9zY2lnIj4oMjUpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+U2VvYW5lPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzYgeCAxMjU8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEyIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+U21hbGwgUGFuZXRlbGE8L3RkPjwvdHI+DQo8L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyM3B4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3NiIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX0NlcG9fY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFZlZ3Vlcm9zX0NlcG9fY2lnYXJfZnVsbC5qcGciIGFsdD0iQ2VwbyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDZXBvIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI2MiIgd2lkdGg9IjQyMyI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkNlcG8gLSA8aT5hIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvaT48L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjU3NnB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3NiIgaHJlZj0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMV9jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xWZWd1ZXJvc19Fc3BlY2lhbGVzX05vLjFfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJFc3BlY2lhbGVzIE5vLjEgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iRXNwZWNpYWxlcyBOby4xIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI0NiIgd2lkdGg9IjU3NiI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPkVzcGVjaWFsZXMgTm8uMSAtIGEgY3VycmVudCBwcm9kdWN0aW9uIGNpZ2FyPC9zcGFuPjxiciAvPjwhLS0gbm90ZSBicmVhayAtLT4NCjwhLS1lbmQgb2YgZWFjaCBjaWdhciBicmVhay0tPjwvZGl2Pg0KPGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O2hlaWdodDoxNXB4Ij48YnIgLz48L2Rpdj48IS0tdmVyeSBlbmQgYnJlYWstLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0NTZweCI+DQo8YSAgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzYiIGhyZWY9ImltYWdlc1xWZWd1ZXJvc19Fc3BlY2lhbGVzX05vLjJfY2lnYXJfb3JpZ18wLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcVmVndWVyb3NfRXNwZWNpYWxlc19Oby4yX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iRXNwZWNpYWxlcyBOby4yIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVzcGVjaWFsZXMgTm8uMiAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDgiIHdpZHRoPSI0NTYiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5Fc3BlY2lhbGVzIE5vLjIgLSBhIGN1cnJlbnQgcHJvZHVjdGlvbiBjaWdhcjwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6Mzg3cHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTc2IiBocmVmPSJpbWFnZXNcVmVndWVyb3NfTWFyZXZhc19jaWdhcl9vcmlnXzAuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xWZWd1ZXJvc19NYXJldmFzX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iTWFyZXZhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJNYXJldmFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSI1MCIgd2lkdGg9IjM4NyI+DQo8L2E+DQo8c3BhbiBjbGFzcz0iY29tbWVudHMiPk1hcmV2YXMgLSBhIGN1cnJlbnQgcHJvZHVjdGlvbiBjaWdhcjwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6Mzc4cHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMTc2IiBocmVmPSJpbWFnZXNcVmVndWVyb3NfU2VvYW5lX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmMgPSAiaW1hZ2VzXFZlZ3Vlcm9zX1Nlb2FuZV9jaWdhcl9mdWxsXzAuanBnIiBhbHQ9IlNlb2FuZSAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJTZW9hbmUgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQxIiB3aWR0aD0iMzc4Ij4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+U2VvYW5lIC0gYSBjdXJyZW50IHByb2R1Y3Rpb24gY2lnYXI8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjIwMHB4Ij4NCjxkaXYgc3R5bGU9ImhlaWdodDoyMHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7d2lkdGg6MXB4Ij48L2Rpdj48IS0tdi1hbGlnbiBwdXNoIGRpdi0tPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0xNzYiIGhyZWY9ImltYWdlc1wyMDAzXy1fVmVndWVyb3NfMTM1X0FuaXZlcnNhcmlvX0h1bWlkb3JfMTk2ZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDAzXy1fVmVndWVyb3NfMTM1X0FuaXZlcnNhcmlvX0h1bWlkb3JfMTk2c21hbGwuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjEzMCIgd2lkdGg9IjIwMCIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxMzJweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTE3NiIgaHJlZj0iaW1hZ2VzXDIwMDNfLV9WZWd1ZXJvc18xMzVfQW5pdmVyc2FyaW9fSHVtaWRvcl8xOTVmdWxsLmpwZyI+DQo8aW1nIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXDIwMDNfLV9WZWd1ZXJvc18xMzVfQW5pdmVyc2FyaW9fSHVtaWRvcl8xOTVzbWFsbC5qcGciIGNsYXNzPSJib3giIGhlaWdodD0iMTUwIiB3aWR0aD0iMTMyIiAvPg0KPC9hPg0KPC9kaXY+PGJyIC8+PCEtLSBlbmQgb2YgZW5kIGJyZWFrIC0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGgiPjxzcGFuIGNsYXNzPSJjb21tZW50cyI+DQoxMzV0aCBBbm5pdmVyc2FyeSBIdW1pZG9yPC9zcGFuPjxiciAvPjwhLS0gYWZ0ZXIgc3BlY2lhbCBub3RlIGJyZWFrIC0tPjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+Q2VwbyAtIFNwZWNpYWwgYmFuZCAoc2FtZSBhcyBCZWxpY29zb3MgQ29sbGVjdG9yKS4gIDxiciAvPk90aGVycyAtIFN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+TnVtYmVyZWQgSHVtaWRvciBvZiAxMzUgY2lnYXJzICgxMzUgbWFkZSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAwMyByZWxlYXNlLiDCoEEgcHJpdmF0ZSBjb21taXNzaW9uIGJ5IENhcmFjb2wgU0Egb2YgQ3ViYS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+Q29tbWVtb3JhdGVzIHRoZSAxMzV0aCBBbm5pdmVyc2FyeSBvZiB0aGUgZXN0YWJsaXNobWVudCBvZiB0aGUgQ2l0eSBvZiBQaW5hciBkZWwgUmlvLCBrbm93biBhcyB0aGUgIkNhcGl0YWwgb2YgQ3ViYW4gVG9iYWNjbyIuIFNpZ25lZCBieSBmaXZlIGxlYWRpbmcgY3VsdGl2YXRvcnMuPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPmRkZJZTu5OEzZhoa0HjpPR1hNbwt0tpeSH3wpPOBAcROzdW" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d37 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Vegueros</span><br /><br /><a data-lightbox="brand" href="images\Vegueros_logo_full.jpg"><img class="box" src="images\Vegueros_logo_small.jpg" height="160" alt="Vegueros" title="Vegueros"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Current Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">------------------------------------------------------</option><option value="#Entretiempos">Entretiempos</option><option value="#Ma|nanitas">Mañanitas</option><option value="#Tapados">Tapados</option>	</select><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Especiales_No.1">Especiales No.1</option><option value="#Especiales_No.2">Especiales No.2</option><option value="#Marevas">Marevas</option><option value="#Seoane">Seoane</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#344_Collector">2002 - Collector</option><option value="#176_135th_Aniversario_Humidor">2003 - 135th Aniversario Humidor</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Vegueros is a post-revolution Habanos SA brand.<BR />It was established in 1997 and all current cigars were discontinued in 2012.  In 2013 the brand was relaunched with three new vitolas.<BR />It is classified as a Local brand, and has a minor market share.<BR /><BR /><b>Generally</b><BR />The range comprises tobacco from the premium <i>Vuelta Abajo</i> region.  <BR />Until 2012 the cigars were full strength.  The new 2013 cigar releases are medium strength.<BR /><BR /><b> Releases</b><BR />There have been two special commissions.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=37">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Vegueros_band_1797099373full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Vegueros_band_1797099373small.jpg" height="133" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Not embossed</span><br /><span class="band-caption">1997 to 2012 -- Discontinued</span>
</div></p><p><div><a data-lightbox="bands" href="images\Vegueros_band_1641372409full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Vegueros_band_1641372409small.jpg" height="108" width="400"  /></a>
<br /><span class="bandhead">Standard Band B</span><br />
<span class="band-caption2">Embossed?</span><br /><span class="band-caption">2013 on - Current</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:116px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Vegueros_packaging_7838full.jpg">
<img class="box" alt="Typical Vegueros packaging" title="Typical Vegueros packaging" src="images\Vegueros_packaging_7838small.jpg" height="150" width="116"  /></a>
</td></tr><tr><td><span class="bandhead">Entretiempos</span><br /><span class="band-caption">MT16 - 2013</span><br /></td></tr></table><table align="left" width="175" style="width:99px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Vegueros_packaging_49full.jpg">
<img class="box" alt="Typical Vegueros packaging" title="Typical Vegueros packaging" src="images\Vegueros_packaging_49small.jpg" height="150" width="99"  /></a>
</td></tr><tr><td><span class="bandhead">Especiales No.1</span><br /><span class="band-caption">SBN25 - 2010</span><br /></td></tr></table><table align="left" width="175" style="width:115px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Vegueros_packaging_3487full.jpg">
<img class="box" alt="Typical Vegueros packaging" title="Typical Vegueros packaging" src="images\Vegueros_packaging_3487small.jpg" height="150" width="115"  /></a>
</td></tr><tr><td><span class="bandhead">Mañanitas</span><br /><span class="band-caption">MT16 - 2013</span><br /></td></tr></table><table align="left" width="175" style="width:100px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Vegueros_packaging_50full.jpg">
<img class="box" alt="Typical Vegueros packaging" title="Typical Vegueros packaging" src="images\Vegueros_packaging_50small.jpg" height="150" width="100"  /></a>
</td></tr><tr><td><span class="bandhead">Seoane</span><br /><span class="band-caption">P5 - 2012</span><br /></td></tr></table><table align="left" width="175" style="width:89px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Vegueros_packaging_8662full.jpg">
<img class="box" alt="Typical Vegueros packaging" title="Typical Vegueros packaging" src="images\Vegueros_packaging_8662small.jpg" height="150" width="89"  /></a>
</td></tr><tr><td><span class="bandhead">Tapados</span><br /><span class="band-caption">MT16 - 2013</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Current Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Entretiempos">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Entretiempos</td><td class="cigarDetailHead-i" style="width:30%">Petit Edmundo</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 110<span class="inches" id="i0">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Petit Robusto</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:330px">
<a data-lightbox="cigar-1553" href="images\Vegueros_Entretiempos_cigar_orig_0.jpg">
<img class="box" src="images\Vegueros_Entretiempos_cigar_full_0.jpg" alt="Entretiempos - click to enlarge" title="Entretiempos - click to enlarge" height="64" width="330">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Metal Tin of 16 cigars.<br />Cardboard Pack of 4 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2013 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released mid-2014.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Ma|nanitas">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Mañanitas</td><td class="cigarDetailHead-i" style="width:30%">Mañanitas</td><td class="cigarDetailHead" style="text-align:center;width:19%">46 x 100<span class="inches" id="i1">&nbsp;(3.9")</span></td><td class="cigarDetailHead" style="width:21%">Petit Pyramid</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:300px">
<a data-lightbox="cigar-1554" href="images\Vegueros_Mañanitas_cigar_orig_0.jpg">
<img class="box" src="images\Vegueros_Mañanitas_cigar_full_0.jpg" alt="Mañanitas - click to enlarge" title="Mañanitas - click to enlarge" height="55" width="300">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Metal Tin of 16 cigars.<br />Cardboard Pack of 4 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2013 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released mid-2014.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Tapados">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Tapados</td><td class="cigarDetailHead-i" style="width:30%">Mareva Gruesa</td><td class="cigarDetailHead" style="text-align:center;width:19%">46 x 120<span class="inches" id="i2">&nbsp;(4.7")</span></td><td class="cigarDetailHead" style="width:21%">Corona Extra</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:360px">
<a data-lightbox="cigar-1552" href="images\Vegueros_Tapados_cigar_orig_0.jpg">
<img class="box" src="images\Vegueros_Tapados_cigar_full_0.jpg" alt="Tapados - click to enlarge" title="Tapados - click to enlarge" height="57" width="360">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band B.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes">Metal Tin of 16 cigars.<br />Cardboard Pack of 4 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2013 release. Current. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released mid-2014.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Especiales_No.1">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Especiales No.1</td><td class="cigarDetailHead-i" style="width:30%">Laguito No.1</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 192<span class="inches" id="i3">&nbsp;(7.6")</span></td><td class="cigarDetailHead" style="width:21%">Long Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:576px">
<a data-lightbox="cigar-112" href="images\Vegueros_Especiales_No.1_cigar_orig.jpg">
<img class="box" src="images\Vegueros_Especiales_No.1_cigar_full.jpg" alt="Especiales No.1 - click to enlarge" title="Especiales No.1 - click to enlarge" height="48" width="576">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1997 release. Discontinued 2010. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Especiales_No.2">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Especiales No.2</td><td class="cigarDetailHead-i" style="width:30%">Laguito No.2</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 152<span class="inches" id="i4">&nbsp;(6.0")</span></td><td class="cigarDetailHead" style="width:21%">Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:456px">
<a data-lightbox="cigar-113" href="images\Vegueros_Especiales_No.2_cigar_orig.jpg">
<img class="box" src="images\Vegueros_Especiales_No.2_cigar_full.jpg" alt="Especiales No.2 - click to enlarge" title="Especiales No.2 - click to enlarge" height="47" width="456">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Semi Boite Nature Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1997 release. Discontinued 2010. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Marevas">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Marevas</td><td class="cigarDetailHead-i" style="width:30%">Marevas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i5">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:387px">
<a data-lightbox="cigar-114" href="images\Vegueros_Marevas_cigar_orig_1.jpg">
<img class="box" src="images\Vegueros_Marevas_cigar_full_1.jpg" alt="Marevas - click to enlarge" title="Marevas - click to enlarge" height="49" width="387">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1997 release. Discontinued 2012. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Seoane">Vegueros</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Seoane</td><td class="cigarDetailHead-i" style="width:30%">Seoane</td><td class="cigarDetailHead" style="text-align:center;width:19%">36 x 125<span class="inches" id="i6">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:378px">
<a data-lightbox="cigar-115" href="images\Vegueros_Seoane_cigar_orig_1.jpg">
<img class="box" src="images\Vegueros_Seoane_cigar_full_1.jpg" alt="Seoane - click to enlarge" title="Seoane - click to enlarge" height="42" width="378">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1997 release. Discontinued 2012. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Until c2002 this cigar was a handmade Seoane-old (36 x 125) vitola.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="344_Collector" class="entryhead">Vegueros</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2002 - Collector <span class="srsub">Other Special Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Belicosos Extra</td><td class="cigarDetailHead-i" style="width:30%">Campanas</td><td class="cigarDetailHead" style="text-align:center;width:19%">52 x 140<span class="inches" id="i7">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Pyramid</td></tr>
</table><div style="clear:both;padding-right:24px;width:420px">
<a  data-lightbox="special-344" href="images\Vegueros_Belicosos_cigar_orig_0.jpg">
<img class="box" src = "images\Vegueros_Belicosos_cigar_full_0.jpg" alt="Belicosos Extra - click to enlarge" title="Belicosos Extra - click to enlarge" height="64" width="420">
</a>
<span class="comments">Belicosos Extra - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:155px">
<a data-lightbox="special-344" href="images\2002_-_Collector_full_0.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2002_-_Collector_small_0.jpg" class="box" height="150" width="155" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:197px">
<a data-lightbox="special-344" href="images\Vegueros_Belicosos_Extra_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\Vegueros_Belicosos_Extra_small.jpg" class="box" height="150" width="197" />
</a>
</div><br /><!-- end of end break --><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special band (almost identical to band A, but deeper shading of the lower stem within the V).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Humidor of 25 cigars (200 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2002 release. Limited distribution (a special commission).</td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="176_135th_Aniversario_Humidor" class="entryhead">Vegueros</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2003 - 135th Aniversario Humidor <span class="srsub">Other Special Release</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Cepo&nbsp;&nbsp;<span class="noscig">(50)</span></td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">49 x 141<span class="inches" id="i8">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Grand Corona</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Especiales No.1&nbsp;&nbsp;<span class="noscig">(20)</span></td><td class="cigarDetailHead-i" style="width:30%">Laguito No.1</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 192<span class="inches" id="i9">&nbsp;(7.6")</span></td><td class="cigarDetailHead" style="width:21%">Long Panetela</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Especiales No.2&nbsp;&nbsp;<span class="noscig">(15)</span></td><td class="cigarDetailHead-i" style="width:30%">Laguito No.2</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 152<span class="inches" id="i10">&nbsp;(6.0")</span></td><td class="cigarDetailHead" style="width:21%">Panetela</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Marevas&nbsp;&nbsp;<span class="noscig">(25)</span></td><td class="cigarDetailHead-i" style="width:30%">Marevas</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 129<span class="inches" id="i11">&nbsp;(5.1")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr>
<table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Seoane&nbsp;&nbsp;<span class="noscig">(25)</span></td><td class="cigarDetailHead-i" style="width:30%">Seoane</td><td class="cigarDetailHead" style="text-align:center;width:19%">36 x 125<span class="inches" id="i12">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Small Panetela</td></tr>
</table><div style="clear:both;padding-right:24px;width:423px">
<a  data-lightbox="special-176" href="images\Vegueros_Cepo_cigar_orig.jpg">
<img class="box" src = "images\Vegueros_Cepo_cigar_full.jpg" alt="Cepo - click to enlarge" title="Cepo - click to enlarge" height="62" width="423">
</a>
<span class="comments">Cepo - <i>a new special release size</i></span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:576px">
<a  data-lightbox="special-176" href="images\Vegueros_Especiales_No.1_cigar_orig_0.jpg">
<img class="box" src = "images\Vegueros_Especiales_No.1_cigar_full_0.jpg" alt="Especiales No.1 - click to enlarge" title="Especiales No.1 - click to enlarge" height="46" width="576">
</a>
<span class="comments">Especiales No.1 - a current production cigar</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:456px">
<a  data-lightbox="special-176" href="images\Vegueros_Especiales_No.2_cigar_orig_0.jpg">
<img class="box" src = "images\Vegueros_Especiales_No.2_cigar_full_0.jpg" alt="Especiales No.2 - click to enlarge" title="Especiales No.2 - click to enlarge" height="48" width="456">
</a>
<span class="comments">Especiales No.2 - a current production cigar</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:387px">
<a  data-lightbox="special-176" href="images\Vegueros_Marevas_cigar_orig_0.jpg">
<img class="box" src = "images\Vegueros_Marevas_cigar_full_0.jpg" alt="Marevas - click to enlarge" title="Marevas - click to enlarge" height="50" width="387">
</a>
<span class="comments">Marevas - a current production cigar</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;padding-right:24px;width:378px">
<a  data-lightbox="special-176" href="images\Vegueros_Seoane_cigar_orig_0.jpg">
<img class="box" src = "images\Vegueros_Seoane_cigar_full_0.jpg" alt="Seoane - click to enlarge" title="Seoane - click to enlarge" height="41" width="378">
</a>
<span class="comments">Seoane - a current production cigar</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:200px">
<div style="height:20px;position:relative;float:left;width:1px"></div><!--v-align push div-->
<a data-lightbox="special-176" href="images\2003_-_Vegueros_135_Aniversario_Humidor_196full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2003_-_Vegueros_135_Aniversario_Humidor_196small.jpg" class="box" height="130" width="200" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:132px">
<a data-lightbox="special-176" href="images\2003_-_Vegueros_135_Aniversario_Humidor_195full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2003_-_Vegueros_135_Aniversario_Humidor_195small.jpg" class="box" height="150" width="132" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
135th Anniversary Humidor</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Cepo - Special band (same as Belicosos Collector).  <br />Others - Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Humidor of 135 cigars (135 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2003 release.  A private commission by Caracol SA of Cuba.</td></tr><tr><td class="histhead">History:</td><td class="histnotes">Commemorates the 135th Anniversary of the establishment of the City of Pinar del Rio, known as the "Capital of Cuban Tobacco". Signed by five leading cultivators.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
