


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Los Statos de Luxe
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
var inchLimit = 4;
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
    <form name="aspnetForm" method="post" action="brand.aspx?brand=Los_Statos_de_Luxe" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMTMzNDc2NTI3DxYCHhNWYWxpZGF0ZVJlcXVlc3RNb2RlAgEWAmYPZBYEAgEPZBYCAgcPZBYCAgEPDxYCHgRUZXh0BT48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCI+DQp2YXIgaW5jaExpbWl0ID0gNDsNCjwvc2NyaXB0PmRkAgMPZBYCAgUPZBYEZg8PFgIfAQXNITx0ciBjbGFzcz0iYnJhbmRfdGFibGUiPjx0ZCBjbGFzcz0iY2VsbC1DIj48YnIgLz48c3BhbiBjbGFzcz0iaGVhZDEiPkxvcyBTdGF0b3MgZGUgTHV4ZTwvc3Bhbj48YnIgLz48YnIgLz48YSBkYXRhLWxpZ2h0Ym94PSJicmFuZCIgaHJlZj0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9sb2dvX2Z1bGwuanBnIj48aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9sb2dvX3NtYWxsLmpwZyIgaGVpZ2h0PSIxNjAiIGFsdD0iTG9zIFN0YXRvcyBkZSBMdXhlIiB0aXRsZT0iTG9zIFN0YXRvcyBkZSBMdXhlIj48L2E+PGJyIC8+PGJyIC8+PHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDMiIG5hbWU9IkQzIiBjbGFzcz0iZHJvcGRvd24iPgk8b3B0aW9uIHNlbGVjdGVkPSJzZWxlY3RlZCIgdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIj5EaXNjb250aW51ZWQgUHJvZHVjdGlvbiBDaWdhcnM8L29wdGlvbj4JPG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQnJldmFzIj5CcmV2YXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ3JlbWFzIj5DcmVtYXM8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjRGVsaXJpb3MiPkRlbGlyaW9zPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0RvYmxlcyI+RG9ibGVzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1NlbGVjdG9zIj5TZWxlY3Rvczwvb3B0aW9uPgk8b3B0aW9uIHZhbHVlPSIjd3d3LkN1YmFuQ2lnYXJXZWJzaXRlLmNvbSI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PGJyIC8+PC90ZD48L3RyPjx0ciBjbGFzcz0iY2VsbC1DIj48dGQgY2xhc3M9ImNlbGwtQyI+PHNwYW4gY2xhc3M9aGVhZDM+QnJhbmQgTm90ZXM8L3NwYW4+PGJyIC8+PGJyIC8+PGI+U3RhdHVzPC9iPjxCUiAvPkxvcyBTdGF0b3MgZGUgTHV4ZSBpcyBhIGRpc2NvbnRpbnVlZCBwcmUtcmV2b2x1dGlvbiBicmFuZC48QlIgLz5JdCB3YXMgY2xhc3NpZmllZCBieSBIYWJhbm9zIGFzIGEgTG9jYWwgYnJhbmQgYW5kIGhhZCBhIG1pbm9yIG1hcmtldCBzaGFyZS48QlIgLz48QlIvPjxiPkhpc3Rvcnk8L2I+PGJyIC8+TG9zIFN0YXRvcyBkZSBMdXggd2FzIGVzdGFibGlzaGVkIGNpcmNhIDE5NDAgYW5kIHdhcyBkZWxldGVkIGZyb20gSGFiYW5vcyBwb3J0Zm9saW8gY2lyY2EgMjAwNS48QlIgLz5JbiBjaXJjYSAxOTgwLCB0aGUgaGFuZG1hZGUgY2lnYXJzIHdlcmUgY2hhbmdlZCB0byBtYWNoaW5lLW1hZGUuIDxCUiAvPjxCUiAvPjxiPkdlbmVyYWxseTwvYj48YnIgLz5UaGUgcmFuZ2UgY29tcHJpc2VkIG1lZGl1bSB0byBmdWxsIHN0cmVuZ3RoIGNpZ2Fycy48YnIgLz48QlIgLz48L3RkPjwvdHI+PHRyIGNsYXNzPSJicmFuZF90YWJsZSI+PHRkPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgQ2lnYXIgQmFuZHM8L3NwYW4+PGJyIC8+PGEgaHJlZj0iYmFuZC5hc3B4P2JyYW5kPTQ4Ij5GdWxsIGJhbmQgZ2FsbGFyeTwvYT48YnIgLz48YnIgLz4NCjx0YWJsZSBzdHlsZT0ibWF4LXdpZHRoOjg2NXB4IiBhbGlnbj0iY2VudGVyIj48dHI+PHRkPjxkaXYgY2xhc3M9ImdhbGxlcnkiPjxwPjxkaXY+PGEgZGF0YS1saWdodGJveD0iYmFuZHMiIGhyZWY9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfYmFuZF8xNzQzNjg2MjA2ZnVsbC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBhbHQ9IkNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJDbGljayB0byBlbmxhcmdlIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfYmFuZF8xNzQzNjg2MjA2c21hbGwuanBnIiBoZWlnaHQ9IjEzMCIgd2lkdGg9IjQwMCIgIC8+PC9hPg0KPGJyIC8+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5TdGFuZGFyZCBCYW5kIEE8L3NwYW4+PGJyIC8+DQo8c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uMiI+RW1ib3NzZWQ8L3NwYW4+PGJyIC8+PHNwYW4gY2xhc3M9ImJhbmQtY2FwdGlvbiI+YzE5ODBzPyB0byBjMjAwNSAtLSBEaXNjb250aW51ZWQ8L3NwYW4+DQo8L2Rpdj48L3A+PC9kaXY+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPg0KPHRyPjx0ZCBjbGFzcz0iYnJhbmRfdGFibGUiPjxzcGFuIGNsYXNzPSJoZWFkMyI+U3RhbmRhcmQgUHJvZHVjdGlvbiBQYWNrYWdpbmc8L3NwYW4+PGJyIC8+PGJyIC8+DQo8dGFibGUgYWxpZ249ImNlbnRlciI+PHRyPjx0ZD48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDoxMDFweDsiPjx0cj48dGQ+PGEgIGRhdGEtbGlnaHRib3g9ImJyYW5kLXBhY2thZ2luZyIgaHJlZj0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9wYWNrYWdpbmdfMzYzN2Z1bGwuanBnIj4NCjxpbWcgY2xhc3M9ImJveCIgYWx0PSJUeXBpY2FsIExvcyBTdGF0b3MgZGUgTHV4ZSBwYWNrYWdpbmciIHRpdGxlPSJUeXBpY2FsIExvcyBTdGF0b3MgZGUgTHV4ZSBwYWNrYWdpbmciIHNyYz0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9wYWNrYWdpbmdfMzYzN3NtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIxMDEiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+QnJldmFzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkNCMjVhZmJ1biAtIGVhcmx5IDE5OTBzPC9zcGFuPjxiciAvPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBhbGlnbj0ibGVmdCIgd2lkdGg9IjE3NSIgc3R5bGU9IndpZHRoOjIzMHB4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcTG9zX1N0YXRvc19kZV9MdXhlX3BhY2thZ2luZ18yNTFmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBMb3MgU3RhdG9zIGRlIEx1eGUgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBMb3MgU3RhdG9zIGRlIEx1eGUgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfcGFja2FnaW5nXzI1MXNtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSIyMzAiICAvPjwvYT4NCjwvdGQ+PC90cj48dHI+PHRkPjxzcGFuIGNsYXNzPSJiYW5kaGVhZCI+Q3JlbWFzPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPkIyNWMgLSBjMjAwMzwvc3Bhbj48YnIgLz48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgYWxpZ249ImxlZnQiIHdpZHRoPSIxNzUiIHN0eWxlPSJ3aWR0aDo5N3B4OyI+PHRyPjx0ZD48YSAgZGF0YS1saWdodGJveD0iYnJhbmQtcGFja2FnaW5nIiBocmVmPSJpbWFnZXNcTG9zX1N0YXRvc19kZV9MdXhlX3BhY2thZ2luZ18yNTNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBMb3MgU3RhdG9zIGRlIEx1eGUgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBMb3MgU3RhdG9zIGRlIEx1eGUgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfcGFja2FnaW5nXzI1M3NtYWxsLmpwZyIgaGVpZ2h0PSIxNTAiIHdpZHRoPSI5NyIgIC8+PC9hPg0KPC90ZD48L3RyPjx0cj48dGQ+PHNwYW4gY2xhc3M9ImJhbmRoZWFkIj5EZWxpcmlvczwvc3Bhbj48YnIgLz48c3BhbiBjbGFzcz0iYmFuZC1jYXB0aW9uIj5QMTBjIC0gYzIwMDM8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGFsaWduPSJsZWZ0IiB3aWR0aD0iMTc1IiBzdHlsZT0id2lkdGg6MTY1cHg7Ij48dHI+PHRkPjxhICBkYXRhLWxpZ2h0Ym94PSJicmFuZC1wYWNrYWdpbmciIGhyZWY9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfcGFja2FnaW5nXzc3MjNmdWxsLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIGFsdD0iVHlwaWNhbCBMb3MgU3RhdG9zIGRlIEx1eGUgcGFja2FnaW5nIiB0aXRsZT0iVHlwaWNhbCBMb3MgU3RhdG9zIGRlIEx1eGUgcGFja2FnaW5nIiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfcGFja2FnaW5nXzc3MjNzbWFsbC5qcGciIGhlaWdodD0iMTUwIiB3aWR0aD0iMTY1IiAgLz48L2E+DQo8L3RkPjwvdHI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iYmFuZGhlYWQiPlNlbGVjdG9zPC9zcGFuPjxiciAvPjxzcGFuIGNsYXNzPSJiYW5kLWNhcHRpb24iPlA1YyAmIEIxMGN3YyAtIDE5OTg8L3NwYW4+PGJyIC8+PC90ZD48L3RyPjwvdGFibGU+PC90ZD48L3RyPjwvdGFibGU+PGJyIC8+PC90ZD48L3RyPg0KZGQCAQ8PFgIfAQWcPTx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiIHN0eWxlPSJib3JkZXItdG9wOm5vbmUiPjx0Ym9keT48dHIgY2xhc3M9InNlY3Rpb24taGVhZCI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiPkRpc2NvbnRpbnVlZCBQcm9kdWN0aW9uIENpZ2FyczwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkJyZXZhcyI+TG9zIFN0YXRvcyBkZSBMdXhlPC9hPjwvc3Bhbj48L3RkPjwvdHI+PC90YWJsZT48dGFibGUgY2xhc3M9ImNpZ2FydGFibGUiPjx0Ym9keT48dHI+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDozMCUiPkJyZXZhczwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQtaSIgc3R5bGU9IndpZHRoOjMwJSI+TmFjaW9uYWxlcyBNYW5vPC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyO3dpZHRoOjE5JSI+NDAgeCAxNDA8c3BhbiBjbGFzcz0iaW5jaGVzIiBpZD0iaTAiPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MjElIj5Db3JvbmE8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxkaXYgc3R5bGU9ImNsZWFyOmJvdGg7cGFkZGluZy1yaWdodDoyNHB4O3dpZHRoOjQyMHB4Ij4NCjxhIGRhdGEtbGlnaHRib3g9ImNpZ2FyLTIwMyIgaHJlZj0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9CcmV2YXNfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfQnJldmFzX2NpZ2FyX2Z1bGwuanBnIiBhbHQ9IkJyZXZhcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJCcmV2YXMgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjUwIiB3aWR0aD0iNDIwIj4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPkNhcmRib2FyZCBQYWNrIG9mIDUgY2lnYXJzLjxiciAvPkNhcmRib2FyZCBCb3ggb2YgMjUgYWx1bWluaXVtIGZvaWwgYnVuZGxlZCBjaWdhcnMuPGJyIC8+PC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzdGF0dXNoZWFkIj5TdGF0dXM6PC90ZD48dGQgY2xhc3M9InN0YXR1c25vdGVzIj5BIHByZS0xOTYwIHJlbGVhc2UuIERpc2NvbnRpbnVlZCBjMjAwNS4gPC90ZD48L3RyPjx0cj48dGQgY2xhc3M9Imhpc3RoZWFkIj5IaXN0b3J5OjwvdGQ+PHRkIGNsYXNzPSJoaXN0bm90ZXMiPkJyZXZhcyB3ZXJlIGhhbmRtYWRlIHVudGlsIGMxOTgwLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJDcmVtYXMiPkxvcyBTdGF0b3MgZGUgTHV4ZTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5DcmVtYXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk5hY2lvbmFsZXMgTWFubzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQwIHggMTQwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9ImkxIj4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjRweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0yMDQiIGhyZWY9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfQ3JlbWFzX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfQ3JlbWFzX2NpZ2FyX2Z1bGxfMC5qcGciIGFsdD0iQ3JlbWFzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkNyZW1hcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDciIHdpZHRoPSI0MjQiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIGMyMDA1LiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+Q3JlbWFzIHdlcmUgaGFuZG1hZGUgdW50aWwgYzE5ODAuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IkRlbGlyaW9zIj5Mb3MgU3RhdG9zIGRlIEx1eGU8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+RGVsaXJpb3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MCB4IDEyMzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMiI+Jm5ic3A7KDQuOCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IENvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzczcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjA1IiBocmVmPSJpbWFnZXNcTG9zX1N0YXRvc19kZV9MdXhlX0RlbGlyaW9zX2NpZ2FyX29yaWdfMC5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfRGVsaXJpb3NfY2lnYXJfZnVsbF8wLmpwZyIgYWx0PSJEZWxpcmlvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIHRpdGxlPSJEZWxpcmlvcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNDciIHdpZHRoPSIzNzMiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkNhcmRib2FyZCBQYWNrIG9mIDEwIGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgYzIwMDUuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5EZWxpcmlvcyB3ZXJlIGhhbmRtYWRlIHVudGlsIGMxOTgwLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PHRyIGNsYXNzPSJlbnRyeSI+PHRkPjx0YWJsZSBzdHlsZT0id2lkdGg6MTAwJSI+PHRyPjx0ZD48c3BhbiBjbGFzcz0iZW50cnloZWFkIj48YSBuYW1lPSJEb2JsZXMiPkxvcyBTdGF0b3MgZGUgTHV4ZTwvYT48L3NwYW4+PC90ZD48L3RyPjwvdGFibGU+PHRhYmxlIGNsYXNzPSJjaWdhcnRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0id2lkdGg6MzAlIj5Eb2JsZXM8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPlN0YW5kYXJkIE1hbm88L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkIiBzdHlsZT0idGV4dC1hbGlnbjpjZW50ZXI7d2lkdGg6MTklIj40MCB4IDEyMzxzcGFuIGNsYXNzPSJpbmNoZXMiIGlkPSJpMyI+Jm5ic3A7KDQuOCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ3aWR0aDoyMSUiPlBldGl0IENvcm9uYTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aDtwYWRkaW5nLXJpZ2h0OjI0cHg7d2lkdGg6MzczcHgiPg0KPGEgZGF0YS1saWdodGJveD0iY2lnYXItMjA2IiBocmVmPSJpbWFnZXNcTG9zX1N0YXRvc19kZV9MdXhlX0RvYmxlc19jaWdhcl9vcmlnLmpwZyI+DQo8aW1nIGNsYXNzPSJib3giIHNyYz0iaW1hZ2VzXExvc19TdGF0b3NfZGVfTHV4ZV9Eb2JsZXNfY2lnYXJfZnVsbC5qcGciIGFsdD0iRG9ibGVzIC0gY2xpY2sgdG8gZW5sYXJnZSIgdGl0bGU9IkRvYmxlcyAtIGNsaWNrIHRvIGVubGFyZ2UiIGhlaWdodD0iNTEiIHdpZHRoPSIzNzMiPg0KPC9hPg0KPGJyIC8+PCEtLSBhZnRlciB0aGUgaW1hZ2UgYnJlYWsgLS0+DQo8L2Rpdj4NCjx0YWJsZSBjbGFzcz0ibm90ZXRhYmxlIj48dGJvZHk+PHRyPjx0ZCBjbGFzcz0ibWFrZWhlYWRzIj5DaWdhcnM6PC90ZD48dGQgY2xhc3M9Im1ha2Vub3RlcyI+TWFjaGluZS1tYWRlLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJiYW5kbm90ZWhlYWQiPkJhbmRzOjwvdGQ+PHRkIGNsYXNzPSJiYW5kbm90ZSI+U3RhbmRhcmQgYmFuZCBBLjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJwYWNraGVhZCI+UGFja2FnaW5nOjwvdGQ+PHRkIGNsYXNzPSJwYWNrbm90ZXMiPjxzcGFuIGNsYXNzPSJwYWNrLWRpc2MiPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz48L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InN0YXR1c2hlYWQiPlN0YXR1czo8L3RkPjx0ZCBjbGFzcz0ic3RhdHVzbm90ZXMiPkEgcHJlLTE5NjAgcmVsZWFzZS4gRGlzY29udGludWVkIGMxOTg4LiA8L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iaGlzdGhlYWQiPkhpc3Rvcnk6PC90ZD48dGQgY2xhc3M9Imhpc3Rub3RlcyI+RG9ibGVzIHdlcmUgaGFuZG1hZGUgdW50aWwgYzE5ODAuPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IGNsYXNzPSJzcGFjZW5vdGUiPjwvZGl2PjwvdGQ+PC90cj48dHIgY2xhc3M9ImVudHJ5Ij48dGQ+PHRhYmxlIHN0eWxlPSJ3aWR0aDoxMDAlIj48dHI+PHRkPjxzcGFuIGNsYXNzPSJlbnRyeWhlYWQiPjxhIG5hbWU9IlNlbGVjdG9zIj5Mb3MgU3RhdG9zIGRlIEx1eGU8L2E+PC9zcGFuPjwvdGQ+PC90cj48L3RhYmxlPjx0YWJsZSBjbGFzcz0iY2lnYXJ0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjMwJSI+U2VsZWN0b3M8L3RkPjx0ZCBjbGFzcz0iY2lnYXJEZXRhaWxIZWFkLWkiIHN0eWxlPSJ3aWR0aDozMCUiPk5hY2lvbmFsZXMgTWFubzwvdGQ+PHRkIGNsYXNzPSJjaWdhckRldGFpbEhlYWQiIHN0eWxlPSJ0ZXh0LWFsaWduOmNlbnRlcjt3aWR0aDoxOSUiPjQwIHggMTQwPHNwYW4gY2xhc3M9ImluY2hlcyIgaWQ9Imk0Ij4mbmJzcDsoNS41Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImNpZ2FyRGV0YWlsSGVhZCIgc3R5bGU9IndpZHRoOjIxJSI+Q29yb25hPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48ZGl2IHN0eWxlPSJjbGVhcjpib3RoO3BhZGRpbmctcmlnaHQ6MjRweDt3aWR0aDo0MjRweCI+DQo8YSBkYXRhLWxpZ2h0Ym94PSJjaWdhci0yMDciIGhyZWY9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfU2VsZWN0b3NfY2lnYXJfb3JpZy5qcGciPg0KPGltZyBjbGFzcz0iYm94IiBzcmM9ImltYWdlc1xMb3NfU3RhdG9zX2RlX0x1eGVfU2VsZWN0b3NfY2lnYXJfZnVsbC5qcGciIGFsdD0iU2VsZWN0b3MgLSBjbGljayB0byBlbmxhcmdlIiB0aXRsZT0iU2VsZWN0b3MgLSBjbGljayB0byBlbmxhcmdlIiBoZWlnaHQ9IjU4IiB3aWR0aD0iNDI0Ij4NCjwvYT4NCjxiciAvPjwhLS0gYWZ0ZXIgdGhlIGltYWdlIGJyZWFrIC0tPg0KPC9kaXY+DQo8dGFibGUgY2xhc3M9Im5vdGV0YWJsZSI+PHRib2R5Pjx0cj48dGQgY2xhc3M9Im1ha2VoZWFkcyI+Q2lnYXJzOjwvdGQ+PHRkIGNsYXNzPSJtYWtlbm90ZXMiPk1hY2hpbmUtbWFkZS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYmFuZG5vdGVoZWFkIj5CYW5kczo8L3RkPjx0ZCBjbGFzcz0iYmFuZG5vdGUiPlN0YW5kYXJkIGJhbmQgQS48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0icGFja2hlYWQiPlBhY2thZ2luZzo8L3RkPjx0ZCBjbGFzcz0icGFja25vdGVzIj48c3BhbiBjbGFzcz0icGFjay1kaXNjIj5DYXJkYm9hcmQgUGFjayBvZiA1IGNpZ2FycyBpbiBjZWxsb3BoYW5lLjxiciAvPkRyZXNzIEJveCBvZiAyNSBjaWdhcnMgaW4gY2VsbG9waGFuZS48YnIgLz5EcmVzcyBCb3ggb2YgMTAgY2lnYXJzIGluIGNlZGFyIGFuZCBjZWxsb3BoYW5lLjxiciAvPjwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic3RhdHVzaGVhZCI+U3RhdHVzOjwvdGQ+PHRkIGNsYXNzPSJzdGF0dXNub3RlcyI+QSBwcmUtMTk2MCByZWxlYXNlLiBEaXNjb250aW51ZWQgYzIwMDIuIDwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJoaXN0aGVhZCI+SGlzdG9yeTo8L3RkPjx0ZCBjbGFzcz0iaGlzdG5vdGVzIj5TZWxlY3RvcyB3ZXJlIGhhbmRtYWRlIHVudGlsIGMxOTgwLjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBjbGFzcz0ic3BhY2Vub3RlIj48L2Rpdj48L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPmRkZEosbiJ75SeISdzP+ly0JfRM9USy4xdRLs6Y/RL3r4DO" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2fbrand.aspx%3fbrand%3dLos_Statos_de_Luxe ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
            <span id="ctl00_ContentPlaceHolder1_lblHead"><tr class="brand_table"><td class="cell-C"><br /><span class="head1">Los Statos de Luxe</span><br /><br /><a data-lightbox="brand" href="images\Los_Statos_de_Luxe_logo_full.jpg"><img class="box" src="images\Los_Statos_de_Luxe_logo_small.jpg" height="160" alt="Los Statos de Luxe" title="Los Statos de Luxe"></a><br /><br /><select onchange="FP_jumpMenu(this,'window',false)" id="id3" name="D3" class="dropdown">	<option selected="selected" value="#www.CubanCigarWebsite.com">Discontinued Production Cigars</option>	<option value="#www.CubanCigarWebsite.com">----------------------------------------------------------</option><option value="#Brevas">Brevas</option><option value="#Cremas">Cremas</option><option value="#Delirios">Delirios</option><option value="#Dobles">Dobles</option><option value="#Selectos">Selectos</option>	<option value="#www.CubanCigarWebsite.com">---------------------------------------------------</option></select><br /><br /></td></tr><tr class="cell-C"><td class="cell-C"><span class=head3>Brand Notes</span><br /><br /><b>Status</b><BR />Los Statos de Luxe is a discontinued pre-revolution brand.<BR />It was classified by Habanos as a Local brand and had a minor market share.<BR /><BR/><b>History</b><br />Los Statos de Lux was established circa 1940 and was deleted from Habanos portfolio circa 2005.<BR />In circa 1980, the handmade cigars were changed to machine-made. <BR /><BR /><b>Generally</b><br />The range comprised medium to full strength cigars.<br /><BR /></td></tr><tr class="brand_table"><td><span class="head3">Standard Cigar Bands</span><br /><a href="band.aspx?brand=48">Full band gallary</a><br /><br />
<table style="max-width:865px" align="center"><tr><td><div class="gallery"><p><div><a data-lightbox="bands" href="images\Los_Statos_de_Luxe_band_1743686206full.jpg">
<img class="box" alt="Click to enlarge" title="Click to enlarge" src="images\Los_Statos_de_Luxe_band_1743686206small.jpg" height="130" width="400"  /></a>
<br /><span class="bandhead">Standard Band A</span><br />
<span class="band-caption2">Embossed</span><br /><span class="band-caption">c1980s? to c2005 -- Discontinued</span>
</div></p></div></td></tr></table></td></tr>
<tr><td class="brand_table"><span class="head3">Standard Production Packaging</span><br /><br />
<table align="center"><tr><td><table align="left" width="175" style="width:101px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Los_Statos_de_Luxe_packaging_3637full.jpg">
<img class="box" alt="Typical Los Statos de Luxe packaging" title="Typical Los Statos de Luxe packaging" src="images\Los_Statos_de_Luxe_packaging_3637small.jpg" height="150" width="101"  /></a>
</td></tr><tr><td><span class="bandhead">Brevas</span><br /><span class="band-caption">CB25afbun - early 1990s</span><br /></td></tr></table><table align="left" width="175" style="width:230px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Los_Statos_de_Luxe_packaging_251full.jpg">
<img class="box" alt="Typical Los Statos de Luxe packaging" title="Typical Los Statos de Luxe packaging" src="images\Los_Statos_de_Luxe_packaging_251small.jpg" height="150" width="230"  /></a>
</td></tr><tr><td><span class="bandhead">Cremas</span><br /><span class="band-caption">B25c - c2003</span><br /></td></tr></table><table align="left" width="175" style="width:97px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Los_Statos_de_Luxe_packaging_253full.jpg">
<img class="box" alt="Typical Los Statos de Luxe packaging" title="Typical Los Statos de Luxe packaging" src="images\Los_Statos_de_Luxe_packaging_253small.jpg" height="150" width="97"  /></a>
</td></tr><tr><td><span class="bandhead">Delirios</span><br /><span class="band-caption">P10c - c2003</span><br /></td></tr></table><table align="left" width="175" style="width:165px;"><tr><td><a  data-lightbox="brand-packaging" href="images\Los_Statos_de_Luxe_packaging_7723full.jpg">
<img class="box" alt="Typical Los Statos de Luxe packaging" title="Typical Los Statos de Luxe packaging" src="images\Los_Statos_de_Luxe_packaging_7723small.jpg" height="150" width="165"  /></a>
</td></tr><tr><td><span class="bandhead">Selectos</span><br /><span class="band-caption">P5c & B10cwc - 1998</span><br /></td></tr></table></td></tr></table><br /></td></tr>
</span>
        </tbody>
    </table>


    <div style="text-align: center">

        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table" style="border-top:none"><tbody><tr class="section-head"><td class="section-head">Discontinued Production Cigars</td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Brevas">Los Statos de Luxe</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Brevas</td><td class="cigarDetailHead-i" style="width:30%">Nacionales Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 140<span class="inches" id="i0">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:420px">
<a data-lightbox="cigar-203" href="images\Los_Statos_de_Luxe_Brevas_cigar_orig.jpg">
<img class="box" src="images\Los_Statos_de_Luxe_Brevas_cigar_full.jpg" alt="Brevas - click to enlarge" title="Brevas - click to enlarge" height="50" width="420">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars in cellophane.<br />Cardboard Pack of 5 cigars.<br />Cardboard Box of 25 aluminium foil bundled cigars.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c2005. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Brevas were handmade until c1980.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Cremas">Los Statos de Luxe</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Cremas</td><td class="cigarDetailHead-i" style="width:30%">Nacionales Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 140<span class="inches" id="i1">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:424px">
<a data-lightbox="cigar-204" href="images\Los_Statos_de_Luxe_Cremas_cigar_orig_0.jpg">
<img class="box" src="images\Los_Statos_de_Luxe_Cremas_cigar_full_0.jpg" alt="Cremas - click to enlarge" title="Cremas - click to enlarge" height="47" width="424">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c2005. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Cremas were handmade until c1980.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Delirios">Los Statos de Luxe</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Delirios</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i2">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:373px">
<a data-lightbox="cigar-205" href="images\Los_Statos_de_Luxe_Delirios_cigar_orig_0.jpg">
<img class="box" src="images\Los_Statos_de_Luxe_Delirios_cigar_full_0.jpg" alt="Delirios - click to enlarge" title="Delirios - click to enlarge" height="47" width="373">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 10 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c2005. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Delirios were handmade until c1980.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Dobles">Los Statos de Luxe</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Dobles</td><td class="cigarDetailHead-i" style="width:30%">Standard Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 123<span class="inches" id="i3">&nbsp;(4.8")</span></td><td class="cigarDetailHead" style="width:21%">Petit Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:373px">
<a data-lightbox="cigar-206" href="images\Los_Statos_de_Luxe_Dobles_cigar_orig.jpg">
<img class="box" src="images\Los_Statos_de_Luxe_Dobles_cigar_full.jpg" alt="Dobles - click to enlarge" title="Dobles - click to enlarge" height="51" width="373">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Dress Box of 25 cigars in cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c1988. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Dobles were handmade until c1980.</td></tr></tbody></table><div class="spacenote"></div></td></tr><tr class="entry"><td><table style="width:100%"><tr><td><span class="entryhead"><a name="Selectos">Los Statos de Luxe</a></span></td></tr></table><table class="cigartable"><tbody><tr><td class="cigarDetailHead" style="width:30%">Selectos</td><td class="cigarDetailHead-i" style="width:30%">Nacionales Mano</td><td class="cigarDetailHead" style="text-align:center;width:19%">40 x 140<span class="inches" id="i4">&nbsp;(5.5")</span></td><td class="cigarDetailHead" style="width:21%">Corona</td></tr></tbody></table><div style="clear:both;padding-right:24px;width:424px">
<a data-lightbox="cigar-207" href="images\Los_Statos_de_Luxe_Selectos_cigar_orig.jpg">
<img class="box" src="images\Los_Statos_de_Luxe_Selectos_cigar_full.jpg" alt="Selectos - click to enlarge" title="Selectos - click to enlarge" height="58" width="424">
</a>
<br /><!-- after the image break -->
</div>
<table class="notetable"><tbody><tr><td class="makeheads">Cigars:</td><td class="makenotes">Machine-made.</td></tr><tr><td class="bandnotehead">Bands:</td><td class="bandnote">Standard band A.</td></tr><tr><td class="packhead">Packaging:</td><td class="packnotes"><span class="pack-disc">Cardboard Pack of 5 cigars in cellophane.<br />Dress Box of 25 cigars in cellophane.<br />Dress Box of 10 cigars in cedar and cellophane.<br /></span></td></tr><tr><td class="statushead">Status:</td><td class="statusnotes">A pre-1960 release. Discontinued c2002. </td></tr><tr><td class="histhead">History:</td><td class="histnotes">Selectos were handmade until c1980.</td></tr></tbody></table><div class="spacenote"></div></td></tr></tbody></table></span>
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
