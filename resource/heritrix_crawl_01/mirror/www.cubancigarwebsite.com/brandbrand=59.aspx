


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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=59" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT88c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gMTI7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEF+TY8dHIgY2xhc3M9ImJyYW5kX3RhYmxlIj48dGQgY2xhc3M9ImNlbGwtQyI+PGJyIC8+PHNwYW4gY2xhc3M9ImhlYWQxIj5MYSBFc2NlcGNpw7NuPC9zcGFuPjxiciAvPjxiciAvPjxhIGRhdGEtbGlnaHRib3g9ImJyYW5kIiBocmVmPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2nDs25fbG9nb19zbWFsbC5qcGciIGhlaWdodD0iMTYwIiBhbHQ9IkxhIEVzY2VwY2nDs24iIHRpdGxlPSJMYSBFc2NlcGNpw7NuIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDMiIG5hbWU9IkQzIiBjbGFzcz0iZHJvcGRvd24iPgk8b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQmVsdmVkZXJlcyI+QmVsdmVkZXJlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNCb21ib25lcyI+Qm9tYm9uZXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ2F6YWRvcmVzX01pcmFtYXIiPkNhemFkb3JlcyBNaXJhbWFyPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0Nvcm9uYXNfRXh0cmFfTGFyZ2FzIj5Db3JvbmFzIEV4dHJhIExhcmdhczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNFeGNlcGNpb25hbGVzIj5FeGNlcGNpb25hbGVzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0dyYWNpZWxhcyI+R3JhY2llbGFzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0dyYW5fR2VuZXIiPkdyYW4gR2VuZXI8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjTG9uZ29zIj5Mb25nb3M8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUGFsbWFzX1JlYWxlcyI+UGFsbWFzIFJlYWxlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQZXJmZWN0b3MiPlBlcmZlY3Rvczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNTdXBlcmZpbm9zIj5TdXBlcmZpbm9zPC9vcHRpb24+CTxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48L3NlbGVjdD48c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMiIgbmFtZT0iRDIiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiBzZWxlY3RlZD0ic2VsZWN0ZWQiIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+U3BlY2lhbCBSZWxlYXNlczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjMjc4X0VkaWNpfG9uX1JlZ2lvbmFsX0l0YWxpYSI+MjAxMSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEl0YWxpYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiMxNDI3X0VkaWNpfG9uX1JlZ2lvbmFsX0l0YWxpYSI+MjAxNSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEl0YWxpYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48L3NlbGVjdD48YnIgLz48YnIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJjZWxsLUMiPjx0ZCBjbGFzcz0iY2VsbC1DIj48c3BhbiBjbGFzcz1oZWFkMz5CcmFuZCBOb3Rlczwvc3Bhbj48YnIgLz48YnIgLz48Yj5TdGF0dXM8L2I+IDxCUiAvPkxhIEVzY2VwY2nDs24gaXMgYSBEaXNjb250aW51ZWQgcHJlLXJldm9sdXRpb24gYnJhbmQsIGVzdGFibGlzaGVkIGluIHRoZSAxODUwcy48QlIgLz5Qcm9kdWN0aW9uIGRlY3JlYXNlZCBpbiB0aGUgMTk4MCYjMzk7cyBhbmQgZXZlbnR1YWxseSBkaXNjb250aW51ZWQgMTk4OS48QlIgLz5JbiAyMDExLCB0aGUgYnJhbmQgd2FzIHRlbXBvcmFyaWx5ICg/KSByZWluc3RhdGVkIGZvciB0aGUgcmVsZWFzZSBvZiB0aGUgUmVnaW9uYWwgRWRpdGlvbiBjaWdhciBmb3IgSXRhbHkuPEJSIC8+PEJSIC8+PGI+R2VuZXJhbGx5PC9iPjxiciAvPkxhIEVzY2VwY2nDs24gd2FzIGEgc2lzdGVyIGJyYW5kIG9mIHRoZSBIb3lvIGRlIE1vbnRlcnJleSBicmFuZC48QlIgLz5UaGUgcmFuZ2UgY29tcHJpc2VkIHZlcnkgZnVsbCBzdHJlbmd0aCBjaWdhcnMuIDxiciAvPlRoZXJlIGlzIGEgbm9uLUN1YmFuIGJyYW5kIHdpdGggdGhlIHNhbWUgbmFtZS48QlIgLz48QlIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTU5Ij5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX2JhbmRfOTMyNjg1MjZmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iQ2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNsaWNrIHRvIGVubGFyZ2UiIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2nDs25fYmFuZF85MzI2ODUyNnNtYWxsLmpwZyIgaGVpZ2h0PSIxMTgiIHdpZHRoPSI0MDAiICAvPjwvYT4NCjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+U3RhbmRhcmQgQmFuZCBBPC9zcGFuPjxiciAvPg0KPHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbjIiPkVtYm9zc2VkPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPk1pZC0xOTcwcyB0byAxOTg5IC0tIERpc2NvbnRpbnVlZDwvc3Bhbj4NCjwvZGl2PjwvcD48L2Rpdj48L3RkPjwvdHI+PC90YWJsZT48L3RkPjwvdHI+DQo8dHI+PHRkIGNsYXNzPSJicmFuZF90YWJsZSI+PHNwYW4gY2xhc3M9ImhlYWQzIj5TdGFuZGFyZCBQcm9kdWN0aW9uIFBhY2thZ2luZzwvc3Bhbj48YnIgLz48YnIgLz4NCjx0YWJsZSBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE5N3B4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9wYWNrYWdpbmdfODIwZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgTGEgRXNjZXBjacOzbiBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIExhIEVzY2VwY2nDs24gcGFja2FnaW5nIiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX3BhY2thZ2luZ184MjBzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTk3IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkJhbWJvbmVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNSAtIGVhcmx5IDE5NzBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjExNXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9wYWNrYWdpbmdfOTg0MGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIExhIEVzY2VwY2nDs24gcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBMYSBFc2NlcGNpw7NuIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9wYWNrYWdpbmdfOTg0MHNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMTUiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q2F6YWRvcmVzIE1pcmFtYXI8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1IC0gMTk4NTwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMThweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXExhX0VzY2VwY2nDs25fcGFja2FnaW5nXzgwMzNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBMYSBFc2NlcGNpw7NuIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgTGEgRXNjZXBjacOzbiBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2nDs25fcGFja2FnaW5nXzgwMzNzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTE4IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPkNvcm9uYXMgRXh0cmE8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+QjI1IC0gZWFybHkgMTk3MHM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTI0cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX3BhY2thZ2luZ183NTIzZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgTGEgRXNjZXBjacOzbiBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIExhIEVzY2VwY2nDs24gcGFja2FnaW5nIiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX3BhY2thZ2luZ183NTIzc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEyNCIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5FeGNlcGNpb25hbGVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlA1YyAtIGVhcmx5IDE5NzBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjE5OXB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9wYWNrYWdpbmdfMTc5NWZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIExhIEVzY2VwY2nDs24gcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBMYSBFc2NlcGNpw7NuIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9wYWNrYWdpbmdfMTc5NXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxOTkiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+R3JhY2llbGFzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNWMgLSBlYXJseSAxOTcwczwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxNjdweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXExhX0VzY2VwY2nDs25fcGFja2FnaW5nXzEzNGZ1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIExhIEVzY2VwY2nDs24gcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBMYSBFc2NlcGNpw7NuIHBhY2thZ2luZyIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9wYWNrYWdpbmdfMTM0c21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE2NyIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5HcmFuIEdlbmVyPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkNCMTBiMWFmIC0gZWFybHkgMTk3MHM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6ODBweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXExhX0VzY2VwY2nDs25fcGFja2FnaW5nXzgzMDNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBMYSBFc2NlcGNpw7NuIHBhY2thZ2luZyIgdGl0bGU9IlR5cGljYWwgTGEgRXNjZXBjacOzbiBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2nDs25fcGFja2FnaW5nXzgzMDNzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iODAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+TG9uZ29zPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNSAtIDE5ODc8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTAzcHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX3BhY2thZ2luZ18yMzMzZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IlR5cGljYWwgTGEgRXNjZXBjacOzbiBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIExhIEVzY2VwY2nDs24gcGFja2FnaW5nIiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX3BhY2thZ2luZ18yMzMzc21hbGwuanBnIiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEwMyIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5QYWxtYXMgUmVhbGVzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlNMQjI1IC0gZWFybHkgMTk3MHM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPjwvdGFibGU+PGJyIC8+PC90ZD48L3RyPg0KZGQCAQ8PFgIfAQX2mAE8dGFibGUgY2xhc3M9ImJyYW5kX3RhYmxlIiBzdHlsZT0iYm9yZGVyLXRvcDpub25lIj48dGJvZHk+PHRyIGNsYXNzPSJzZWN0aW9uLWhlYWQiPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJCZWx2ZWRlcmVzIj5MYSBFc2NlcGNpw7NuPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkJlbHZlZGVyZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkJlbHZlZGVyZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOSB4IDEyNTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMCI+Jm5ic3A7KDQuOSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNzVweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2lvbl9CZWx2ZWRlcmVzX2Z1bGwuanBnIiBhbHQ9IkJlbHZlZGVyZXMiIHRpdGxlPSJCZWx2ZWRlcmVzIiBoZWlnaHQ9IjUyIiB3aWR0aD0iMzc1Ij4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAxOTgwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkJvbWJvbmVzIj5MYSBFc2NlcGNpw7NuPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkJvbWJvbmVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Vbmtub3duPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzcgeCA4OTxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMSI+Jm5ic3A7KDMuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNob3J0IFBhbmV0ZWxhPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoyNjdweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2lvbl9Cb21ib25lc19mdWxsLmpwZyIgYWx0PSJCb21ib25lcyIgdGl0bGU9IkJvbWJvbmVzIiBoZWlnaHQ9IjQ2IiB3aWR0aD0iMjY3Ij4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPkVhcmx5IGJhbmQgMS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk3MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDYXphZG9yZXNfTWlyYW1hciI+TGEgRXNjZXBjacOzbjwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5DYXphZG9yZXMgTWlyYW1hcjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q2F6YWRvcmVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDMgeCAxNjI8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTIiPiZuYnNwOyg2LjQiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Mb25zZGFsZTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDg2cHgiPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpb25fQ2F6YWRvcmVzX01pcmFtYXJfZnVsbC5qcGciIGFsdD0iQ2F6YWRvcmVzIE1pcmFtYXIiIHRpdGxlPSJDYXphZG9yZXMgTWlyYW1hciIgaGVpZ2h0PSI1NyIgd2lkdGg9IjQ4NiI+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgYzE5ODguIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDb3JvbmFzX0V4dHJhX0xhcmdhcyI+TGEgRXNjZXBjacOzbjwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Db3JvbmFzIEV4dHJhIExhcmdhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+VW5rbm93bjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQ0IHggMTk1PHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkzIj4mbmJzcDsoNy43Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+TG9uc2RhbGU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjU4NXB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjaW9uX0Nvcm9uYXNfRXh0cmFfTGFyZ2FzX2Z1bGwuanBnIiBhbHQ9IkNvcm9uYXMgRXh0cmEgTGFyZ2FzIiB0aXRsZT0iQ29yb25hcyBFeHRyYSBMYXJnYXMiIGhlaWdodD0iNTkiIHdpZHRoPSI1ODUiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5FYXJseSBiYW5kIDEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDE5NzBzLiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iRXhjZXBjaW9uYWxlcyI+TGEgRXNjZXBjacOzbjwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5FeGNlcGNpb25hbGVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5TdGFuZGFyZCBNYW5vPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMjM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTQiPiZuYnNwOyg0LjgiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QZXRpdCBDb3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjM2OXB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjaW9uX0V4Y2VwY2lvbmFsZXNfZnVsbC5qcGciIGFsdD0iRXhjZXBjaW9uYWxlcyIgdGl0bGU9IkV4Y2VwY2lvbmFsZXMiIGhlaWdodD0iNTIiIHdpZHRoPSIzNjkiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAxOTYwcyByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk4MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJHcmFjaWVsYXMiPkxhIEVzY2VwY2nDs248L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+R3JhY2llbGFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Vbmtub3duPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+MzUgeCAxMTA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTUiPiZuYnNwOyg0LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzMwcHgiPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpb25fR3JhY2llbGFzX2Z1bGwuanBnIiBhbHQ9IkdyYWNpZWxhcyIgdGl0bGU9IkdyYWNpZWxhcyIgaGVpZ2h0PSI0NyIgd2lkdGg9IjMzMCI+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5NYWNoaW5lLW1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5FYXJseSBiYW5kIDMuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk3MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJHcmFuX0dlbmVyIj5MYSBFc2NlcGNpw7NuPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkdyYW4gR2VuZXI8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPkRpYWRlbWFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NTUgeCAyMzM8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTYiPiZuYnNwOyg5LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5HaWFudCBQZXJmZWN0bzwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6Njk5cHgiPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpb25fR3Jhbl9HZW5lcl9mdWxsLmpwZyIgYWx0PSJHcmFuIEdlbmVyIiB0aXRsZT0iR3JhbiBHZW5lciIgaGVpZ2h0PSI3NyIgd2lkdGg9IjY5OSI+DQo8YnIgLz48IS0tIGFmdGVyIHRoZSBpbWFnZSBicmVhayAtLT4NCjwvZGl2Pg0KPHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPkVhcmx5IGJhbmQgMiwgdGhlbiBzdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+Q2FyZGJvYXJkIEJveCBvZiAxMCBjaWdhcnMgaW4gYWx1bWluaXVtIGZvaWwgJiBpbmRpdmlkdWFsIHNsaWRlIGxpZCBib3hlcy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIDE5ODAuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJMb25nb3MiPkxhIEVzY2VwY2nDs248L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+TG9uZ29zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5OaW5mYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zMyB4IDE3ODxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpNyI+Jm5ic3A7KDcuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlNsaW0gUGFuZXRlbGE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjUzNHB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjaW9uX0xvbmdvc19mdWxsLmpwZyIgYWx0PSJMb25nb3MiIHRpdGxlPSJMb25nb3MiIGhlaWdodD0iNDMiIHdpZHRoPSI1MzQiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+SGFuZG1hZGUuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJhbmRub3RlaGVhZCI+QmFuZHM6PC90ZD48dGQgY2xhc3M9ImJhbmRub3RlIj5TdGFuZGFyZCBiYW5kIEEuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InBhY2toZWFkIj5QYWNrYWdpbmc6PC90ZD48dGQgY2xhc3M9InBhY2tub3RlcyI+PHNwYW4gY2xhc3M9InBhY2stZGlzYyI+RHJlc3MgQm94IG9mIDI1IGNpZ2Fycy48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIGMxOTg4LiA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgY2xhc3M9InNwYWNlbm90ZSI+PC9kaXY+PC90ZD48L3RyPjx0ciBjbGFzcz0iZW50cnkiPjx0ZD48dGFibGUgc3R5bGU9IndpZHRoOjEwMCUiPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImVudHJ5aGVhZCI+PGEgbmFtZT0iUGFsbWFzX1JlYWxlcyI+TGEgRXNjZXBjacOzbjwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5QYWxtYXMgUmVhbGVzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5Vbmtub3duPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDIgeCAxNDI8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTgiPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyNnB4Ij4NCjxpbWcgY2xhc3M9ImJveCIgc3JjPSJpbWFnZXNcTGFfRXNjZXBjaW9uX1BhbG1hc19SZWFsZXNfZnVsbC5qcGciIGFsdD0iUGFsbWFzIFJlYWxlcyIgdGl0bGU9IlBhbG1hcyBSZWFsZXMiIGhlaWdodD0iNTIiIHdpZHRoPSI0MjYiPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+RWFybHkgYmFuZCA0LjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPlNsaWRlIExpZCBCb3ggb2YgMjUgY2lnYXJzLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgMTk4MHMuIDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJQZXJmZWN0b3MiPkxhIEVzY2VwY2nDs248L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+UGVyZmVjdG9zPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5QZXJmZWN0b3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40NCB4IDEyNzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpOSI+Jm5ic3A7KDUuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IFBlcmZlY3RvPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozODFweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2lvbl9QZXJmZWN0b3NfZnVsbC5qcGciIGFsdD0iUGVyZmVjdG9zIiB0aXRsZT0iUGVyZmVjdG9zIiBoZWlnaHQ9IjU1IiB3aWR0aD0iMzgxIj4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAxOTgwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlN1cGVyZmlub3MiPkxhIEVzY2VwY2nDs248L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+U3VwZXJmaW5vczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+Q29yb25pdGFzPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxMTc8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEwIj4mbmJzcDsoNC42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+UGV0aXQgQ29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozNTFweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExhX0VzY2VwY2lvbl9TdXBlcmZpbm9zX2Z1bGwuanBnIiBhbHQ9IlN1cGVyZmlub3MiIHRpdGxlPSJTdXBlcmZpbm9zIiBoZWlnaHQ9IjUxIiB3aWR0aD0iMzUxIj4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5EcmVzcyBCb3ggb2YgMjUgY2lnYXJzIGluIGNlbGxvcGhhbmUuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCAxOTgwcy4gPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPlNwZWNpYWwgUmVsZWFzZXM8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iZW50cnkiPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyIGNsYXNzPSJlbnRyeWhlYWQiPjx0ZCBjb2xzcGFuPSIyIj48YSBuYW1lPSIyNzhfRWRpY2l8b25fUmVnaW9uYWxfSXRhbGlhIiBjbGFzcz0iZW50cnloZWFkIj5MYSBFc2NlcGNpw7NuPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAxMSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEl0YWxpYSA8c3BhbiBjbGFzcz0ic3JzdWIiPlJlZ2lvbmFsIEVkaXRpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+U2VsZWN0b3MgRmlub3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlBhcmVqb3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj4zOCB4IDE2NjxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMTEiPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5QYW5ldGVsYTwvdGQ+PC90cj4NCjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6NDk4cHgiPg0KPGEgIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjc4IiBocmVmPSJpbWFnZXNcTGFfRXNjZXBjacOzbl9TZWxlY3Rvc19GaW5vc19jaWdhcl9vcmlnXzEuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgc3JjID0gImltYWdlc1xMYV9Fc2NlcGNpw7NuX1NlbGVjdG9zX0Zpbm9zX2NpZ2FyX2Z1bGxfMS5qcGciIGFsdD0iU2VsZWN0b3MgRmlub3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iU2VsZWN0b3MgRmlub3MgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjQ3IiB3aWR0aD0iNDk4Ij4NCjwvYT4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+U2VsZWN0b3MgRmlub3MgLSBhIG5ldyBzcGVjaWFsIHJlbGVhc2Ugc2l6ZTwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8YnIgLz48IS0tIGJhbmQgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQwMHB4Ij4NCjxhICBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTI3OCIgaHJlZj0iaW1hZ2VzXExhX0VzY2VwY2nDs25fU2VsZWN0b3NfRmlub3NfYmFuZF9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcTGFfRXNjZXBjacOzbl9TZWxlY3Rvc19GaW5vc19iYW5kX2Z1bGwuanBnIiBhbHQ9IlNlbGVjdG9zIEZpbm9zIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkVkaWNpw7NuIFJlZ2lvbmFsIEl0YWxpYSBiYW5kIC0gY2xpY2sgdG8gZW5sYXJnZSIgaGVpZ2h0PSIxMjEiIHdpZHRoPSI0MDAiPg0KPC9hPg0KPHNwYW4gY2xhc3M9ImNvbW1lbnRzIj5TcGVjaWFsIEJhbmQ8L3NwYW4+PGJyIC8+PCEtLSBub3RlIGJyZWFrIC0tPg0KPCEtLWVuZCBvZiBlYWNoIGNpZ2FyIGJyZWFrLS0+PC9kaXY+DQo8ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7aGVpZ2h0OjE1cHgiPjxiciAvPjwvZGl2PjwhLS12ZXJ5IGVuZCBicmVhay0tPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7aGVpZ2h0OjE2MHB4O3Bvc2l0aW9uOnJlbGF0aXZlO2Zsb2F0OmxlZnQ7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjE5MnB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9InNwZWNpYWwtMjc4IiBocmVmPSJpbWFnZXNcMjAxMV8tX0VkaWNpw7NuX1JlZ2lvbmFsX0l0YWxpYV9mdWxsXzQuanBnIj4NCjxpbWcgYWx0PSJDbGljayB0byBlbmxhcmdlIiB0aXRsZT0iQ2xpY2sgdG8gZW5sYXJnZSIgc3JjPSJpbWFnZXNcMjAxMV8tX0VkaWNpw7NuX1JlZ2lvbmFsX0l0YWxpYV9zbWFsbF80LmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxOTIiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MTMzcHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yNzgiIGhyZWY9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfSXRhbGlhX2Z1bGxfNS5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfSXRhbGlhX3NtYWxsXzUuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjEzMyIgLz4NCjwvYT4NCjwvZGl2PjxkaXYgc3R5bGU9ImhlaWdodDoxNjBweDtwb3NpdGlvbjpyZWxhdGl2ZTtmbG9hdDpsZWZ0O3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDoxOTlweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJzcGVjaWFsLTI3OCIgaHJlZj0iaW1hZ2VzXExhX0VzY2VwY2nDs25fU2VsZWN0b3NfRmlub3NfZnVsbC5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xMYV9Fc2NlcGNpw7NuX1NlbGVjdG9zX0Zpbm9zX3NtYWxsLmpwZyIgY2xhc3M9ImJveCIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxOTkiIC8+DQo8L2E+DQo8L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6MTYwcHg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MTQ5cHgiPg0KPGEgZGF0YS1saWdodGJveD0ic3BlY2lhbC0yNzgiIGhyZWY9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfSXRhbGlhX2Z1bGxfMi5qcGciPg0KPGltZyBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1wyMDExXy1fRWRpY2nDs25fUmVnaW9uYWxfSXRhbGlhX3NtYWxsXzIuanBnIiBjbGFzcz0iYm94IiBoZWlnaHQ9IjE1MCIgd2lkdGg9IjE0OSIgLz4NCjwvYT4NCjwvZGl2PjxiciAvPjwhLS0gZW5kIG9mIGVuZCBicmVhayAtLT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoIj48c3BhbiBjbGFzcz0iY29tbWVudHMiPg0KUmVnaW9uYWwgRWRpdGlvbiBJdGFseTwvc3Bhbj48YnIgLz48IS0tIGFmdGVyIHNwZWNpYWwgbm90ZSBicmVhayAtLT48L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dHI+PHRkIGNsYXNzPSJtYWtlaGVhZHMiPkNpZ2Fyczo8L3RkPjx0ZCBjbGFzcz0ibWFrZW5vdGVzIj5IYW5kbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlNwZWNpYWwgYmFuZCwgd2l0aCBSZWdpb25hbCBFZGl0aW9uIGJhbmQgZm9yIEl0YWx5ICg8aT5JdGFsaWE8L2k+KS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjxURCBjbGFzcz1wYWNrbm90ZXM+TnVtYmVyZWQgRHJlc3MgQm94IG9mIDI1IGNpZ2FycyAoMiwwMDAgbWFkZSkuPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgMjAxMSByZWxlYXNlLiA8L3RkPjwvdHI+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJlbnRyeSI+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHIgY2xhc3M9ImVudHJ5aGVhZCI+PHRkIGNvbHNwYW49IjIiPjxhIG5hbWU9IjE0MjdfRWRpY2l8b25fUmVnaW9uYWxfSXRhbGlhIiBjbGFzcz0iZW50cnloZWFkIj5MYSBFc2NlcGNpw7NuPC9hPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSAgY2xhc3M9ImNpZ2FydGFibGUiPjx0ciBjbGFzcz0icmVsZWFzZW5hbWUiPjx0ZCA+MjAxNSAtIEVkaWNpw7NuIFJlZ2lvbmFsIEl0YWxpYSA8c3BhbiBjbGFzcz0ic3JzdWIiPlJlZ2lvbmFsIEVkaXRpb24gU2VyaWVzPC9zcGFuPjwvdGQ+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dHI+DQo8dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RG9uIEpvc8OpPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZC1pIiBzdHlsZT0id2lkdGg6MzAlIj5IZXJtb3NvcyBOby40PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDggeCAxMjc8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTEyIj4mbmJzcDsoNS4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hIEV4dHJhPC90ZD48L3RyPg0KPC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDozODFweCI+DQo8aW1nIGNsYXNzPSJib3giIHNyYyA9ICJpbWFnZXNcTGFfRXNjZXBjacOzbl9Eb25fSm9zw6lfY2lnYXJfZnVsbC5qcGciIGFsdD0iRG9uIEpvc8OpIiB0aXRsZT0iRG9uIEpvc8OpIiBoZWlnaHQ9IjU3IiB3aWR0aD0iMzgxIj4NCjxzcGFuIGNsYXNzPSJjb21tZW50cyI+SGVybW9zb3MgTm8uIDQsIGEgbmV3IHNwZWNpYWwgcmVsZWFzZSBzaXplLjwvc3Bhbj48YnIgLz48IS0tIG5vdGUgYnJlYWsgLS0+DQo8IS0tZW5kIG9mIGVhY2ggY2lnYXIgYnJlYWstLT48L2Rpdj4NCjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cG9zaXRpb246cmVsYXRpdmU7ZmxvYXQ6bGVmdDtoZWlnaHQ6MTVweCI+PGJyIC8+PC9kaXY+PCEtLXZlcnkgZW5kIGJyZWFrLS0+PHRhYmxlIGNsYXNzPSJub3RldGFibGUiPjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPkhhbmRtYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3BlY2lhbCBiYW5kLCB3aXRoIFJlZ2lvbmFsIEVkaXRpb24gYmFuZCBmb3IgSXRhbHkgKDxpPkl0YWxpYTwvaT4pLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PFREIGNsYXNzPXBhY2tub3Rlcz5OdW1iZXJlZCBEcmVzcyBCb3ggb2YgMjUgY2lnYXJzICg0LDAwMCBtYWRlKS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSAyMDE1IHJlbGVhc2UuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5SZWxlYXNlZCBsYXRlLTIwMTUuPC90ZD48L3RyPjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPmRkZJJAm/V+V1vs03VNdMRLzfbprxnRL3j50AwKzp9d1XL+" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3d59 ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">La Escepción</span><br /><br /><a data-lightbox="brand" href="images\La_Escepción_logo_full.jpg"><img class="box" src="images\La_Escepción_logo_small.jpg" height="160" alt="La Escepción" title="La Escepción"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Belvederes">Belvederes</option><option value="#Bombones">Bombones</option><option value="#Cazadores_Miramar">Cazadores Miramar</option><option value="#Coronas_Extra_Largas">Coronas Extra Largas</option><option value="#Excepcionales">Excepcionales</option><option value="#Gracielas">Gracielas</option><option value="#Gran_Gener">Gran Gener</option><option value="#Longos">Longos</option><option value="#Palmas_Reales">Palmas Reales</option><option value="#Perfectos">Perfectos</option><option value="#Superfinos">Superfinos</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><select onchange="FP_jumpMenu(this,'window',false)" id="id2" name="D2" class="dropdown"><option selected="selected" value="#www.CubanCigarWebsite.com">Special Releases</option><option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option><option value="#278_Edici|on_Regional_Italia">2011 - Edición Regional Italia</option><option value="#1427_Edici|on_Regional_Italia">2015 - Edición Regional Italia</option><option value="#www.CubanCigarWebsite.com">------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b> <BR />La Escepción is a Discontinued pre-revolution brand, established in the 1850s.<BR />Production decreased in the 1980&#39;s and eventually discontinued 1989.<BR />In 2011, the brand was temporarily (?) reinstated for the release of the Regional Edition cigar for Italy.<BR /><BR /><b>Generally</b><br />La Escepción was a sister brand of the Hoyo de Monterrey brand.<BR />The range comprised very full strength cigars. <br />There is a non-Cuban brand with the same name.<BR /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=59">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\La_Escepción_band_93268526full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\La_Escepción_band_93268526small.jpg" height="118" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">Mid-1970s to 1989 -- Discontinued</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:197px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_820full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_820small.jpg" height="150" width="197"  /></a>
</td></tr><tr><td><span class="bandhead">Bambones</span><br /><span class="band-caption">B25 - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:115px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_9840full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_9840small.jpg" height="150" width="115"  /></a>
</td></tr><tr><td><span class="bandhead">Cazadores Miramar</span><br /><span class="band-caption">B25 - 1985</span><br /></td></tr></table><table align="left" width="175" style="width:118px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_8033full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_8033small.jpg" height="150" width="118"  /></a>
</td></tr><tr><td><span class="bandhead">Coronas Extra</span><br /><span class="band-caption">B25 - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:124px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_7523full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_7523small.jpg" height="150" width="124"  /></a>
</td></tr><tr><td><span class="bandhead">Excepcionales</span><br /><span class="band-caption">P5c - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:199px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_1795full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_1795small.jpg" height="150" width="199"  /></a>
</td></tr><tr><td><span class="bandhead">Gracielas</span><br /><span class="band-caption">B25c - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:167px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_134full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_134small.jpg" height="150" width="167"  /></a>
</td></tr><tr><td><span class="bandhead">Gran Gener</span><br /><span class="band-caption">CB10b1af - early 1970s</span><br /></td></tr></table><table align="left" width="175" style="width:80px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_8303full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_8303small.jpg" height="150" width="80"  /></a>
</td></tr><tr><td><span class="bandhead">Longos</span><br /><span class="band-caption">B25 - 1987</span><br /></td></tr></table><table align="left" width="175" style="width:103px;"><tr><td><a  data-lightbox="brand-packaging" href="images\La_Escepción_packaging_2333full.jpg">
<img class="box" alt="Typical La Escepción packaging" title="Typical La Escepción packaging" src="images\La_Escepción_packaging_2333small.jpg" height="150" width="103"  /></a>
</td></tr><tr><td><span class="bandhead">Palmas Reales</span><br /><span class="band-caption">SLB25 - early 1970s</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Belvederes">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Belvederes</td><td class="cigarDetailHead-i" style="width:30%">Belvederes</td><td class="cigarDetailHead" style="text-align:center;width:19%">39 x 125<span class="inches" id="i0">&nbsp;(4.9")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:375px">
<img class="box" src="images\La_Escepcion_Belvederes_full.jpg" alt="Belvederes" title="Belvederes" height="52" width="375">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Bombones">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Bombones</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">37 x 89<span class="inches" id="i1">&nbsp;(3.5")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:267px">
<img class="box" src="images\La_Escepcion_Bombones_full.jpg" alt="Bombones" title="Bombones" height="46" width="267">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early band 1.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cazadores_Miramar">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cazadores Miramar</td><td class="cigarDetailHead-i" style="width:30%">Cazadores</td><td class="cigarDetailHead" style="text-align:center;width:19%">43 x 162<span class="inches" id="i2">&nbsp;(6.4")</span></td><td class="cigarDetailHead" style="width:21%">Lonsdale</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:486px">
<img class="box" src="images\La_Escepcion_Cazadores_Miramar_full.jpg" alt="Cazadores Miramar" title="Cazadores Miramar" height="57" width="486">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c1988. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Coronas_Extra_Largas">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Coronas Extra Largas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">44 x 195<span class="inches" id="i3">&nbsp;(7.7")</span></td><td class="cigarDetailHead" style="width:21%">Lonsdale</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:585px">
<img class="box" src="images\La_Escepcion_Coronas_Extra_Largas_full.jpg" alt="Coronas Extra Largas" title="Coronas Extra Largas" height="59" width="585">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early band 1.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Excepcionales">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Excepcionales</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i4">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:369px">
<img class="box" src="images\La_Escepcion_Excepcionales_full.jpg" alt="Excepcionales" title="Excepcionales" height="52" width="369">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars in cellophane.<br />Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 1960s release. Discontinued 1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Gracielas">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Gracielas</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">35 x 110<span class="inches" id="i5">&nbsp;(4.3")</span></td><td class="cigarDetailHead" style="width:21%">Short Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:330px">
<img class="box" src="images\La_Escepcion_Gracielas_full.jpg" alt="Gracielas" title="Gracielas" height="47" width="330">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early band 3.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1970s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Gran_Gener">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Gran Gener</td><td class="cigarDetailHead-i" style="width:30%">Diademas</td><td class="cigarDetailHead" style="text-align:center;width:19%">55 x 233<span class="inches" id="i6">&nbsp;(9.2")</span></td><td class="cigarDetailHead" style="width:21%">Giant Perfecto</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:699px">
<img class="box" src="images\La_Escepcion_Gran_Gener_full.jpg" alt="Gran Gener" title="Gran Gener" height="77" width="699">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early band 2, then standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Box of 10 cigars in aluminium foil & individual slide lid boxes.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1980. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Longos">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Longos</td><td class="cigarDetailHead-i" style="width:30%">Ninfas</td><td class="cigarDetailHead" style="text-align:center;width:19%">33 x 178<span class="inches" id="i7">&nbsp;(7.0")</span></td><td class="cigarDetailHead" style="width:21%">Slim Panetela</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:534px">
<img class="box" src="images\La_Escepcion_Longos_full.jpg" alt="Longos" title="Longos" height="43" width="534">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c1988. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Palmas_Reales">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Palmas Reales</td><td class="cigarDetailHead-i" style="width:30%">Unknown</td><td class="cigarDetailHead" style="text-align:center;width:19%">42 x 142<span class="inches" id="i8">&nbsp;(5.6")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:426px">
<img class="box" src="images\La_Escepcion_Palmas_Reales_full.jpg" alt="Palmas Reales" title="Palmas Reales" height="52" width="426">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Early band 4.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Slide Lid Box of 25 cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Perfectos">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Perfectos</td><td class="cigarDetailHead-i" style="width:30%">Perfectos</td><td class="cigarDetailHead" style="text-align:center;width:19%">44 x 127<span class="inches" id="i9">&nbsp;(5.0")</span></td><td class="cigarDetailHead" style="width:21%">Petit Perfecto</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:381px">
<img class="box" src="images\La_Escepcion_Perfectos_full.jpg" alt="Perfectos" title="Perfectos" height="55" width="381">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Superfinos">La Escepción</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Superfinos</td><td class="cigarDetailHead-i" style="width:30%">Coronitas</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 117<span class="inches" id="i10">&nbsp;(4.6")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:351px">
<img class="box" src="images\La_Escepcion_Superfinos_full.jpg" alt="Superfinos" title="Superfinos" height="51" width="351">
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued 1980s. </td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="section-head"><td class="section-head">Special Releases</td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="278_Edici|on_Regional_Italia" class="entryhead">La Escepción</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2011 - Edición Regional Italia <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Selectos Finos</td><td class="cigarDetailHead-i" style="width:30%">Parejos</td><td class="cigarDetailHead" style="text-align:center;width:19%">38 x 166<span class="inches" id="i11">&nbsp;(6.5")</span></td><td class="cigarDetailHead" style="width:21%">Panetela</td></tr>
</table><div style="clear:both;padding-right:24px;width:498px">
<a  data-lightbox="special-278" href="images\La_Escepción_Selectos_Finos_cigar_orig_1.jpg">
<img class="box" src = "images\La_Escepción_Selectos_Finos_cigar_full_1.jpg" alt="Selectos Finos - click to enlarge" title="Selectos Finos - click to enlarge" height="47" width="498">
</a>
<span class="comments">Selectos Finos - a new special release size</span><br /><!-- note break -->
<br /><!-- band break -->
<!--end of each cigar break--></div>
<div style="clear:both;padding-right:24px;width:400px">
<a  data-lightbox="special-278" href="images\La_Escepción_Selectos_Finos_band_orig.jpg">
<img class="box" src = "images\La_Escepción_Selectos_Finos_band_full.jpg" alt="Selectos Finos - click to enlarge" title="Edición Regional Italia band - click to enlarge" height="121" width="400">
</a>
<span class="comments">Special Band</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><div style="clear:both;height:160px;position:relative;float:left;padding-right:24px;width:192px">
<a data-lightbox="special-278" href="images\2011_-_Edición_Regional_Italia_full_4.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Italia_small_4.jpg" class="box" height="150" width="192" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:133px">
<a data-lightbox="special-278" href="images\2011_-_Edición_Regional_Italia_full_5.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Italia_small_5.jpg" class="box" height="150" width="133" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:199px">
<a data-lightbox="special-278" href="images\La_Escepción_Selectos_Finos_full.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\La_Escepción_Selectos_Finos_small.jpg" class="box" height="150" width="199" />
</a>
</div><div style="height:160px;position:relative;float:left;padding-right:24px;width:149px">
<a data-lightbox="special-278" href="images\2011_-_Edición_Regional_Italia_full_2.jpg">
<img alt="Click to enlarge" title="Click to enlarge" src="images\2011_-_Edición_Regional_Italia_small_2.jpg" class="box" height="150" width="149" />
</a>
</div><br /><!-- end of end break --><div style="clear:both"><span class="comments">
Regional Edition Italy</span><br /><!-- after special note break --></div>
<table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special band, with Regional Edition band for Italy (<i>Italia</i>).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Dress Box of 25 cigars (2,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2011 release. </td></tr></table><div class="spacenote"></div></td></tr><tr><td class="entry"><table style="width:100%"><tr class="entryhead"><td colspan="2"><a name="1427_Edici|on_Regional_Italia" class="entryhead">La Escepción</a></td></tr></table><table  class="cigartable"><tr class="releasename"><td >2015 - Edición Regional Italia <span class="srsub">Regional Edition Series</span></td><table class="cigartable"><tr>
<td class="cigarDetailHead" style="width:30%">Don José</td><td class="cigarDetailHead-i" style="width:30%">Hermosos No.4</td><td class="cigarDetailHead" style="text-align:center;width:19%">48 x 127<span class="inches" id="i12">&nbsp;(5.0")</span></td><td class="cigarDetailHead" style="width:21%">Corona Extra</td></tr>
</table><div style="clear:both;padding-right:24px;width:381px">
<img class="box" src = "images\La_Escepción_Don_José_cigar_full.jpg" alt="Don José" title="Don José" height="57" width="381">
<span class="comments">Hermosos No. 4, a new special release size.</span><br /><!-- note break -->
<!--end of each cigar break--></div>
<div style="clear:both;position:relative;float:left;height:15px"><br /></div><!--very end break--><table class="notetable"><tr><td class="makeheads">Cigars:</td><td class="makenotes">Handmade.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Special band, with Regional Edition band for Italy (<i>Italia</i>).</td></tr><tr><td class="packhead">Packaging:</td><TD class=packnotes>Numbered Dress Box of 25 cigars (4,000 made).</td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A 2015 release. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Released late-2015.</td></tr></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
