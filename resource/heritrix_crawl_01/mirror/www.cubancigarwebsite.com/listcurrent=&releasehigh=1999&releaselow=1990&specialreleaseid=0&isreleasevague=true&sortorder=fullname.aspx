


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 1990 - 1999 Releases
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
var inchLimit = 31;
</script></span>
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="js/jquery.json-2.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="js/jquery.MetaData.js"></script>
    <script type="text/javascript" src="js/jquery.rating.pack.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/smokeone.js"></script>

    <link href="js/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="js/themes/base/jquery.rating.css" rel="stylesheet" />
    <script type="text/javascript" src="js/utilities.js"></script>
    <script type="text/javascript" src="js/box.js"></script>
    <link href="css/lightbox.css" rel="stylesheet" />
    <script type="text/javascript">
        

        

        function showBoxStock(cigarID, isSpecial) {
        
            $("#BoxStockContent").html('');
            
            $.ajax({
                type: "POST",
                url: "brand.aspx/BoxStockDialog",
                data: "{cigarID:'" + cigarID + "',memberID:'" +  + "',isSpecial:'" + isSpecial + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "html",
                success: function(data) {
                    $("#BoxStockContent").html(data);
                },
                error: function(xhr, status, error) {

                    var err = eval("(" + xhr.responseText + ")");
                    alert(err.Message);
                }
            });

            showPopup('BoxStock', true);
        
        }

        function postSmokeOne(data){
            $("#SmokeOneNotes").val('')
            $("#BoxStockContent").html(data);
        };






        
<!--
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

    var state = 'block';

    function hideforprinting() {


        if (state == 'block') {
            state = 'none';
        }
        else {
            state = 'block';
        }
        if (document.all) { //IS IE 4 or 5 (or 6 beta) 
            eval("document.all.printHead.style.display = state");
            eval("document.all.printHeadDropdown.style.display = state");

        }
        if (document.layers) { //IS NETSCAPE 4 or below 
            document.layers[printHead].display = state;
            document.layers[printHeadDropdown].display = state;


        }
        if (document.getElementById && !document.all) {
            hza = document.getElementById('printHead');
            hza.style.display = state;
            hza = document.getElementById('printHeadDropdown');
            hza.style.display = state;

        }
    }


    // -->
</script>
  
   </head>
<body>
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;releasehigh=1999&amp;releaselow=1990&amp;specialreleaseid=0&amp;isreleasevague=true&amp;sortorder=fullname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU/PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDMxOw0KPC9zY3JpcHQ+ZGQCAw9kFgICBQ9kFgRmDw8WAh8BBbsGPHNwYW4gY2xhc3M9ImhlYWQxIj4xOTkwIC0gMTk5OSBSZWxlYXNlczwvc3Bhbj48YnIgLz48YnIgLz48ZGl2IGlkPSJwcmludEhlYWREcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IGJsb2NrOyB0ZXh0LWFsaWduOmNlbnRlcjsiPiAgPHNlbGVjdCBvbmNoYW5nZT0iRlBfanVtcE1lbnUodGhpcywnd2luZG93JyxmYWxzZSkiIGlkPSJpZDEiIG5hbWU9IkQxIiBjbGFzcz0iZHJvcGRvd24iPjxvcHRpb24gdmFsdWU9IiN3d3cuQ3ViYW5DaWdhcldlYnNpdGUuY29tIiBzZWxlY3RlZD0ic2VsZWN0ZWQiPkJyYW5kczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ29oaWJhIj5Db2hpYmE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjQ3VhYmEiPkN1YWJhPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI0VsX1JleV9kZWxfTXVuZG8iPkVsIFJleSBkZWwgTXVuZG88L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjSm9zw6lfTC5fUGllZHJhIj5Kb3PDqSBMLiBQaWVkcmE8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjSnVhbl9Mw7NwZXoiPkp1YW4gTMOzcGV6PC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iI1Nhbl9DcmlzdMOzYmFsIj5TYW4gQ3Jpc3TDs2JhbDwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNUcmluaWRhZCI+VHJpbmlkYWQ8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjVmVnYXNfUm9iYWluYSI+VmVnYXMgUm9iYWluYTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNWZWd1ZXJvcyI+VmVndWVyb3M8L29wdGlvbj48L3NlbGVjdD48YnIgLz48L2Rpdj5kZAICDw8WAh8BBbSTATx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mcmVsZWFzZWhpZ2g9MTk5OSZyZWxlYXNlbG93PTE5OTAmc3BlY2lhbHJlbGVhc2VpZD0wJmlzcmVsZWFzZXZhZ3VlPXRydWUmc29ydG9yZGVyPWZ1bGxuYW1lIj5DaWdhciBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBTYWxpZGE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnJlbGVhc2VoaWdoPTE5OTkmcmVsZWFzZWxvdz0xOTkwJnNwZWNpYWxyZWxlYXNlaWQ9MCZpc3JlbGVhc2V2YWd1ZT10cnVlJnNvcnRvcmRlcj1mYWN0b3J5bmFtZSI+RmFjdG9yeSBOYW1lPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlZpdG9sYSBkZSBHYWxlcmE8L3NwYW4+PC9hPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+U2l6ZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mcmVsZWFzZWhpZ2g9MTk5OSZyZWxlYXNlbG93PTE5OTAmc3BlY2lhbHJlbGVhc2VpZD0wJmlzcmVsZWFzZXZhZ3VlPXRydWUmc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnJlbGVhc2VoaWdoPTE5OTkmcmVsZWFzZWxvdz0xOTkwJnNwZWNpYWxyZWxlYXNlaWQ9MCZpc3JlbGVhc2V2YWd1ZT10cnVlJnNvcnRvcmRlcj1sZW5ndGhtbSI+bW08L2E+PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJ0YWItaGVhZCI+PGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnJlbGVhc2VoaWdoPTE5OTkmcmVsZWFzZWxvdz0xOTkwJnNwZWNpYWxyZWxlYXNlaWQ9MCZpc3JlbGVhc2V2YWd1ZT10cnVlJnNvcnRvcmRlcj1jb21tb25uYW1lIj5TaGFwZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5Db21tb24gTmFtZTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5JbWFnZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5SZWxhdGl2ZSBTY2FsZTwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJDb2hpYmEiPkNvaGliYTwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgR2xvYmFsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgU2lnbG8gSSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Db2hpYmEjU2lnbG9fSSI+U2lnbG8gSTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NCAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGVybGFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMDI8c3BhbiBpZD0iaTAiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBTaWdsbyBJIiB0aXRsZT0iQ29oaWJhIFNpZ2xvIEkiIHNyYz0iaW1hZ2VzXENvaGliYV9TaWdsb19JX2NpZ2FyX3NtYWxsXzIuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBTaWdsbyBJSSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Db2hpYmEjU2lnbG9fSUkiPlNpZ2xvIElJPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk0IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBTaWdsbyBJSSIgdGl0bGU9IkNvaGliYSBTaWdsbyBJSSIgc3JjPSJpbWFnZXNcQ29oaWJhX1NpZ2xvX0lJX2NpZ2FyX3NtYWxsXzMuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBTaWdsbyBJSUkiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhI1NpZ2xvX0lJSSI+U2lnbG8gSUlJPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk0IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzIEdyYW5kZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE1NTxzcGFuIGlkPSJpMiIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjEiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgU2lnbG8gSUlJIiB0aXRsZT0iQ29oaWJhIFNpZ2xvIElJSSIgc3JjPSJpbWFnZXNcQ29oaWJhX1NpZ2xvX0lJSV9jaWdhcl9zbWFsbF8zLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgU2lnbG8gSVYiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhI1NpZ2xvX0lWIj5TaWdsbyBJVjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NCAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hcyBHb3JkYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40NiB4IDE0MzxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ29oaWJhIFNpZ2xvIElWIiB0aXRsZT0iQ29oaWJhIFNpZ2xvIElWIiBzcmM9ImltYWdlc1xDb2hpYmFfU2lnbG9fSVZfY2lnYXJfc21hbGxfNC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ29oaWJhIFNpZ2xvIFYiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhI1NpZ2xvX1YiPlNpZ2xvIFY8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTQgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRhbGlhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQzIHggMTcwPHNwYW4gaWQ9Imk0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBTaWdsbyBWIiB0aXRsZT0iQ29oaWJhIFNpZ2xvIFYiIHNyYz0iaW1hZ2VzXENvaGliYV9TaWdsb19WX2NpZ2FyX3NtYWxsXzQuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNlY3Rpb24taGVhZCIgY29sc3Bhbj0iNSI+PGEgbmFtZT0iQ3VhYmEiPkN1YWJhPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBOaWNoZSBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iQ3VhYmEgRGl2aW5vcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1DdWFiYSNEaXZpbm9zIj5EaXZpbm9zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk2IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBCb3VxdWV0PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDMgeCAxMDE8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC4wIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgUGVyZmVjdG88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ3VhYmEgRGl2aW5vcyIgdGl0bGU9IkN1YWJhIERpdmlub3MiIHNyYz0iaW1hZ2VzXEN1YWJhX0Rpdmlub3NfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkN1YWJhIEV4Y2x1c2l2b3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q3VhYmEjRXhjbHVzaXZvcyI+RXhjbHVzaXZvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RXhxdWlzaXRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ2IHggMTQ1PHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBlcmZlY3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkN1YWJhIEV4Y2x1c2l2b3MiIHRpdGxlPSJDdWFiYSBFeGNsdXNpdm9zIiBzcmM9ImltYWdlc1xDdWFiYV9FeGNsdXNpdm9zX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDdWFiYSBHZW5lcm9zb3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q3VhYmEjR2VuZXJvc29zIj5HZW5lcm9zb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTYgLSBEaXNjb250aW51ZWQgMjAxMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HZW5lcm9zb3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEzMjxzcGFuIGlkPSJpNyIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXJmZWN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDdWFiYSBHZW5lcm9zb3MiIHRpdGxlPSJDdWFiYSBHZW5lcm9zb3MiIHNyYz0iaW1hZ2VzXEN1YWJhX0dlbmVyb3Nvc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDdWFiYSBUcmFkaWNpb25hbGVzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUN1YWJhI1RyYWRpY2lvbmFsZXMiPlRyYWRpY2lvbmFsZXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTYgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5GYXZvcml0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEyMDxzcGFuIGlkPSJpOCIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjciKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBQZXJmZWN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDdWFiYSBUcmFkaWNpb25hbGVzIiB0aXRsZT0iQ3VhYmEgVHJhZGljaW9uYWxlcyIgc3JjPSJpbWFnZXNcQ3VhYmFfVHJhZGljaW9uYWxlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJFbF9SZXlfZGVsX011bmRvIj5FbCBSZXkgZGVsIE11bmRvPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBMb2NhbCBCcmFuZDwvc3Bhbj48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iRWwgUmV5IGRlbCBNdW5kbyBUcsOocyBQZXRpdCBDb3JvbmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUVsX1JleV9kZWxfTXVuZG8jVHLDqHNfUGV0aXRfQ29yb25hcyI+VHLDqHMgUGV0aXQgQ29yb25hczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NSAtIERpc2NvbnRpbnVlZCAxOTk5PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk1pbnV0b3M8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDExMDxzcGFuIGlkPSJpOSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iRWwgUmV5IGRlbCBNdW5kbyBUcsOocyBQZXRpdCBDb3JvbmFzIiB0aXRsZT0iRWwgUmV5IGRlbCBNdW5kbyBUcsOocyBQZXRpdCBDb3JvbmFzIiBzcmM9ImltYWdlc1xFbF9SZXlfZGVsX011bmRvX1Ryw6hzX1BldGl0X0Nvcm9uYXNfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJKb3PDqV9MLl9QaWVkcmEiPkpvc8OpIEwuIFBpZWRyYTwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgR2xvYmFsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKb3PDqSBMLiBQaWVkcmEgQnJldmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUpvc3xlX0wuX1BpZWRyYSNCcmV2YXMiPkJyZXZhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+QnJldmFzIEpMUDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTMzPHNwYW4gaWQ9ImkxMCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjIiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSm9zw6kgTC4gUGllZHJhIEJyZXZhcyIgdGl0bGU9Ikpvc8OpIEwuIFBpZWRyYSBCcmV2YXMiIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9CcmV2YXNfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ikpvc8OpIEwuIFBpZWRyYSBDYXphZG9yZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Sm9zfGVfTC5fUGllZHJhI0NhemFkb3JlcyI+Q2F6YWRvcmVzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk2IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYXphZG9yZXMgSkxQPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDMgeCAxNTI8c3BhbiBpZD0iaTExIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbmcgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikpvc8OpIEwuIFBpZWRyYSBDYXphZG9yZXMiIHRpdGxlPSJKb3PDqSBMLiBQaWVkcmEgQ2F6YWRvcmVzIiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfQ2F6YWRvcmVzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKb3PDqSBMLiBQaWVkcmEgQ29uc2VydmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUpvc3xlX0wuX1BpZWRyYSNDb25zZXJ2YXMiPkNvbnNlcnZhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29uc2VydmFzIEpMUDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ0IHggMTQwPHNwYW4gaWQ9ImkxMiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25nIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJKb3PDqSBMLiBQaWVkcmEgQ29uc2VydmFzIiB0aXRsZT0iSm9zw6kgTC4gUGllZHJhIENvbnNlcnZhcyIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX0NvbnNlcnZhc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iSm9zw6kgTC4gUGllZHJhIENyZW1hcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Kb3N8ZV9MLl9QaWVkcmEjQ3JlbWFzIj5DcmVtYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTYgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNyZW1hcyBKTFA8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MCB4IDEzNjxzcGFuIGlkPSJpMTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS40Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikpvc8OpIEwuIFBpZWRyYSBDcmVtYXMiIHRpdGxlPSJKb3PDqSBMLiBQaWVkcmEgQ3JlbWFzIiBzcmM9ImltYWdlc1xKb3PDqV9MLl9QaWVkcmFfQ3JlbWFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKb3PDqSBMLiBQaWVkcmEgTmFjaW9uYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Kb3N8ZV9MLl9QaWVkcmEjTmFjaW9uYWxlcyI+TmFjaW9uYWxlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TmFjaW9uYWxlcyBKTFA8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDEzNDxzcGFuIGlkPSJpMTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikpvc8OpIEwuIFBpZWRyYSBOYWNpb25hbGVzIiB0aXRsZT0iSm9zw6kgTC4gUGllZHJhIE5hY2lvbmFsZXMiIHNyYz0iaW1hZ2VzXEpvc8OpX0wuX1BpZWRyYV9OYWNpb25hbGVzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKb3PDqSBMLiBQaWVkcmEgUGV0aXQgQ2V0cm9zIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUpvc3xlX0wuX1BpZWRyYSNQZXRpdF9DZXRyb3MiPlBldGl0IENldHJvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NiAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ2V0cm9zIEpMUDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjM4IHggMTI3PHNwYW4gaWQ9ImkxNSIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjAiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TaG9ydCBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJKb3PDqSBMLiBQaWVkcmEgUGV0aXQgQ2V0cm9zIiB0aXRsZT0iSm9zw6kgTC4gUGllZHJhIFBldGl0IENldHJvcyIgc3JjPSJpbWFnZXNcSm9zw6lfTC5fUGllZHJhX1BldGl0X0NldHJvc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJKdWFuX0zDs3BleiI+SnVhbiBMw7NwZXo8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKdWFuIEzDs3BleiBTZWxlY2Npw7NuIE5vLjEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SnVhbl9MfG9wZXojU2VsZWNjaXxvbl9Oby4xIj5TZWxlY2Npw7NuIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTBzIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Db3JvbmFzIEdvcmRhczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ2IHggMTQzPHNwYW4gaWQ9ImkxNiIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuZCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iSnVhbiBMw7NwZXogU2VsZWNjacOzbiBOby4xIiB0aXRsZT0iSnVhbiBMw7NwZXogU2VsZWNjacOzbiBOby4xIiBzcmM9ImltYWdlc1xKdWFuX0zDs3Blel9TZWxlY3Rpb25fTm8uMV9jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJKdWFuIEzDs3BleiBTZWxlY2Npw7NuIE5vLjIiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9SnVhbl9MfG9wZXojU2VsZWNjaXxvbl9Oby4yIj5TZWxlY2Npw7NuIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTBzIC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUwIHggMTI0PHNwYW4gaWQ9ImkxNyIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9Ikp1YW4gTMOzcGV6IFNlbGVjY2nDs24gTm8uMiIgdGl0bGU9Ikp1YW4gTMOzcGV6IFNlbGVjY2nDs24gTm8uMiIgc3JjPSJpbWFnZXNcSnVhbl9Mw7NwZXpfU2VsZWN0aW9uX05vLjJfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJTYW5fQ3Jpc3TDs2JhbCI+U2FuIENyaXN0w7NiYWw8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IE5pY2hlIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYW4gQ3Jpc3TDs2JhbCBFbCBNb3JybyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1TYW5fQ3Jpc3R8b2JhbCNFbF9Nb3JybyI+RWwgTW9ycm88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTkgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhY29zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDkgeCAxODA8c3BhbiBpZD0iaTE4IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FuIENyaXN0w7NiYWwgRWwgTW9ycm8iIHRpdGxlPSJTYW4gQ3Jpc3TDs2JhbCBFbCBNb3JybyIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX0VsX01vcnJvX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlNhbiBDcmlzdMOzYmFsIEVsIFByw61uY2lwZSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1TYW5fQ3Jpc3R8b2JhbCNFbF9QcnxpbmNpcGUiPkVsIFByw61uY2lwZTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5OSAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TWludXRvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQyIHggMTEwPHNwYW4gaWQ9ImkxOSIgY2xhc3M9ImluY2giPiZuYnNwOyg0LjMiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QZXRpdCBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FuIENyaXN0w7NiYWwgRWwgUHLDrW5jaXBlIiB0aXRsZT0iU2FuIENyaXN0w7NiYWwgRWwgUHLDrW5jaXBlIiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fRWxfUHLDrW5jaXBlX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYW4gQ3Jpc3TDs2JhbCBMYSBGdWVyemEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9U2FuX0NyaXN0fG9iYWwjTGFfRnVlcnphIj5MYSBGdWVyemE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTkgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdvcmRpdG9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTAgeCAxNDE8c3BhbiBpZD0iaTIwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlJvYnVzdG8gRXh0cmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FuIENyaXN0w7NiYWwgTGEgRnVlcnphIiB0aXRsZT0iU2FuIENyaXN0w7NiYWwgTGEgRnVlcnphIiBzcmM9ImltYWdlc1xTYW5fQ3Jpc3TDs2JhbF9fTGFfRnVlcnphX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJTYW4gQ3Jpc3TDs2JhbCBMYSBQdW50YSIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1TYW5fQ3Jpc3R8b2JhbCNMYV9QdW50YSI+TGEgUHVudGE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTkgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNhbXBhbmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTIgeCAxNDA8c3BhbiBpZD0iaTIxIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlB5cmFtaWQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iU2FuIENyaXN0w7NiYWwgTGEgUHVudGEiIHRpdGxlPSJTYW4gQ3Jpc3TDs2JhbCBMYSBQdW50YSIgc3JjPSJpbWFnZXNcU2FuX0NyaXN0w7NiYWxfX0xhX1B1bnRhX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlRyaW5pZGFkIj5UcmluaWRhZDwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTmljaGUgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlRyaW5pZGFkIEZ1bmRhZG9yZXMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VHJpbmlkYWQjRnVuZGFkb3JlcyI+RnVuZGFkb3JlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NyAtIEN1cnJlbnQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBFc3BlY2lhbDwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTkyPHNwYW4gaWQ9ImkyMiIgY2xhc3M9ImluY2giPiZuYnNwOyg3LjYiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJUcmluaWRhZCBGdW5kYWRvcmVzIiB0aXRsZT0iVHJpbmlkYWQgRnVuZGFkb3JlcyIgc3JjPSJpbWFnZXNcVHJpbmlkYWRfRnVuZGFkb3Jlc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJWZWdhc19Sb2JhaW5hIj5WZWdhcyBSb2JhaW5hPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBNdWx0aUxvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWdhcyBSb2JhaW5hIENsw6FzaWNvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1WZWdhc19Sb2JhaW5hI0NsfGFzaWNvcyI+Q2zDoXNpY29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gRGlzY29udGludWVkIDIwMTI8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q2VydmFudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxNjU8c3BhbiBpZD0iaTIzIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuNSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkxvbnNkYWxlPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ2FzIFJvYmFpbmEgQ2zDoXNpY29zIiB0aXRsZT0iVmVnYXMgUm9iYWluYSBDbMOhc2ljb3MiIHNyYz0iaW1hZ2VzXFZlZ2FzX1JvYmFpbmFfQ2zDoXNpY29zX2NpZ2FyX3NtYWxsXzAuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlZlZ2FzIFJvYmFpbmEgRG9uIEFsZWphbmRybyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1WZWdhc19Sb2JhaW5hI0Rvbl9BbGVqYW5kcm8iPkRvbiBBbGVqYW5kcm88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBDdXJyZW50PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlByb21pbmVudGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDkgeCAxOTQ8c3BhbiBpZD0iaTI0IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVmVnYXMgUm9iYWluYSBEb24gQWxlamFuZHJvIiB0aXRsZT0iVmVnYXMgUm9iYWluYSBEb24gQWxlamFuZHJvIiBzcmM9ImltYWdlc1xWZWdhc19Sb2JhaW5hX0Rvbl9BbGVqYW5kcm9fY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVmVnYXMgUm9iYWluYSBGYW1pbGlhciIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1WZWdhc19Sb2JhaW5hI0ZhbWlsaWFyIj5GYW1pbGlhcjwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NyAtIERpc2NvbnRpbnVlZCAyMDEyPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE0MjxzcGFuIGlkPSJpMjUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Q29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ2FzIFJvYmFpbmEgRmFtaWxpYXIiIHRpdGxlPSJWZWdhcyBSb2JhaW5hIEZhbWlsaWFyIiBzcmM9ImltYWdlc1xWZWdhc19Sb2JhaW5hX0ZhbWlsaWFyX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWdhcyBSb2JhaW5hIEZhbW9zb3MiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VmVnYXNfUm9iYWluYSNGYW1vc29zIj5GYW1vc29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5IZXJtb3NvcyBOby40PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDggeCAxMjc8c3BhbiBpZD0iaTI2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkNvcm9uYSBFeHRyYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJWZWdhcyBSb2JhaW5hIEZhbW9zb3MiIHRpdGxlPSJWZWdhcyBSb2JhaW5hIEZhbW9zb3MiIHNyYz0iaW1hZ2VzXFZlZ2FzX1JvYmFpbmFfRmFtb3Nvc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWdhcyBSb2JhaW5hIFVuaWNvcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1WZWdhc19Sb2JhaW5hI1VuaWNvcyI+VW5pY29zPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gQ3VycmVudDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5QaXLDoW1pZGVzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTIgeCAxNTY8c3BhbiBpZD0iaTI3IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlB5cmFtaWQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVmVnYXMgUm9iYWluYSBVbmljb3MiIHRpdGxlPSJWZWdhcyBSb2JhaW5hIFVuaWNvcyIgc3JjPSJpbWFnZXNcVmVnYXNfUm9iYWluYV9Vbmljb3NfY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic2VjdGlvbi1oZWFkIiBjb2xzcGFuPSI1Ij48YSBuYW1lPSJWZWd1ZXJvcyI+VmVndWVyb3M8L2E+PHNwYW4gY2xhc3M9ImJyYW5kLXR5cGUiPiZuYnNwOyAtJm5ic3A7IExvY2FsIEJyYW5kPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VmVndWVyb3MjRXNwZWNpYWxlc19Oby4xIj5Fc3BlY2lhbGVzIE5vLjE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5MYWd1aXRvIE5vLjE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zOCB4IDE5MjxzcGFuIGlkPSJpMjgiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIHRpdGxlPSJWZWd1ZXJvcyBFc3BlY2lhbGVzIE5vLjEiIHNyYz0iaW1hZ2VzXFZlZ3Vlcm9zX0VzcGVjaWFsZXNfTm8uMV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVmVndWVyb3MgRXNwZWNpYWxlcyBOby4yIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ3Vlcm9zI0VzcGVjaWFsZXNfTm8uMiI+RXNwZWNpYWxlcyBOby4yPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk3IC0gRGlzY29udGludWVkIDIwMTA8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4yPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxNTI8c3BhbiBpZD0iaTI5IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMCIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBhbmV0ZWxhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlZlZ3Vlcm9zIEVzcGVjaWFsZXMgTm8uMiIgdGl0bGU9IlZlZ3Vlcm9zIEVzcGVjaWFsZXMgTm8uMiIgc3JjPSJpbWFnZXNcVmVndWVyb3NfRXNwZWNpYWxlc19Oby4yX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWd1ZXJvcyBNYXJldmFzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ3Vlcm9zI01hcmV2YXMiPk1hcmV2YXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5NYXJldmFzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDIgeCAxMjk8c3BhbiBpZD0iaTMwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJWZWd1ZXJvcyBNYXJldmFzIiB0aXRsZT0iVmVndWVyb3MgTWFyZXZhcyIgc3JjPSJpbWFnZXNcVmVndWVyb3NfTWFyZXZhc19jaWdhcl9zbWFsbF8xLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWd1ZXJvcyBTZW9hbmUiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VmVndWVyb3MjU2VvYW5lIj5TZW9hbmU8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTcgLSBEaXNjb250aW51ZWQgMjAxMjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5TZW9hbmU8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj4zNiB4IDEyNTxzcGFuIGlkPSJpMzEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC45Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+U21hbGwgUGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVmVndWVyb3MgU2VvYW5lIiB0aXRsZT0iVmVndWVyb3MgU2VvYW5lIiBzcmM9ImltYWdlc1xWZWd1ZXJvc19TZW9hbmVfY2lnYXJfc21hbGxfMS5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGRSQyCpKuA0SeivcDVzGbmg/GwdSGLa7/v0XaHBqqW0Nw==" />
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AB3BDE6C" />
</div>
    
    
	    <div class="top-graphic">
    
          <div style="position:absolute;right:0px;top:10px"> 
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26releasehigh%3d1999%26releaselow%3d1990%26specialreleaseid%3d0%26isreleasevague%3dtrue%26sortorder%3dfullname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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
        

 				    <div style="text-align:center"> 

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">1990 - 1999 Releases</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Cohiba">Cohiba</option><option value="#Cuaba">Cuaba</option><option value="#El_Rey_del_Mundo">El Rey del Mundo</option><option value="#José_L._Piedra">José L. Piedra</option><option value="#Juan_López">Juan López</option><option value="#San_Cristóbal">San Cristóbal</option><option value="#Trinidad">Trinidad</option><option value="#Vegas_Robaina">Vegas Robaina</option><option value="#Vegueros">Vegueros</option></select><br /></div></span>
 

   


<span class="sub-text">
<a href="javascript:hideforprinting();">Show / Hide Menus</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="javascript:hideInches();">Show / Hide Inches</a></span>

     

       
 
					<strong>
 
					<span class="sub-text">
					<span class="show-hide"><br />
			   	 </span>
					
					</span></strong>
 
 				   <span class="quick-link">This list can be sorted by clicking the links at the top of 
					the four data columns<br />
 
 				   </span>
 
 <br />



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&releasehigh=1999&releaselow=1990&specialreleaseid=0&isreleasevague=true&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=1999&releaselow=1990&specialreleaseid=0&isreleasevague=true&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&releasehigh=1999&releaselow=1990&specialreleaseid=0&isreleasevague=true&sortorder=ring">Ring</a> x <a href="list.aspx?current=&releasehigh=1999&releaselow=1990&specialreleaseid=0&isreleasevague=true&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&releasehigh=1999&releaselow=1990&specialreleaseid=0&isreleasevague=true&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Cohiba">Cohiba</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Siglo I" href="brand.aspx?brand=Cohiba#Siglo_I">Siglo I</a>&nbsp;<span class="subcontent">1994 - Current</span></td><td class="bordered-cell-L">Perlas</td><td class="bordered-cell-L">40 x 102<span id="i0" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Cohiba Siglo I" title="Cohiba Siglo I" src="images\Cohiba_Siglo_I_cigar_small_2.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Siglo II" href="brand.aspx?brand=Cohiba#Siglo_II">Siglo II</a>&nbsp;<span class="subcontent">1994 - Current</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i1" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Cohiba Siglo II" title="Cohiba Siglo II" src="images\Cohiba_Siglo_II_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Siglo III" href="brand.aspx?brand=Cohiba#Siglo_III">Siglo III</a>&nbsp;<span class="subcontent">1994 - Current</span></td><td class="bordered-cell-L">Coronas Grandes</td><td class="bordered-cell-L">42 x 155<span id="i2" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="Cohiba Siglo III" title="Cohiba Siglo III" src="images\Cohiba_Siglo_III_cigar_small_3.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Siglo IV" href="brand.aspx?brand=Cohiba#Siglo_IV">Siglo IV</a>&nbsp;<span class="subcontent">1994 - Current</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i3" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Cohiba Siglo IV" title="Cohiba Siglo IV" src="images\Cohiba_Siglo_IV_cigar_small_4.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Siglo V" href="brand.aspx?brand=Cohiba#Siglo_V">Siglo V</a>&nbsp;<span class="subcontent">1994 - Current</span></td><td class="bordered-cell-L">Dalias</td><td class="bordered-cell-L">43 x 170<span id="i4" class="inch">&nbsp;(6.7")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Cohiba Siglo V" title="Cohiba Siglo V" src="images\Cohiba_Siglo_V_cigar_small_4.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Cuaba">Cuaba</a><span class="brand-type">&nbsp; -&nbsp; Niche Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba Divinos" href="brand.aspx?brand=Cuaba#Divinos">Divinos</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Petit Bouquet</td><td class="bordered-cell-L">43 x 101<span id="i5" class="inch">&nbsp;(4.0")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Divinos" title="Cuaba Divinos" src="images\Cuaba_Divinos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba Exclusivos" href="brand.aspx?brand=Cuaba#Exclusivos">Exclusivos</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Exquisitos</td><td class="bordered-cell-L">46 x 145<span id="i6" class="inch">&nbsp;(5.7")</span></td><td class="bordered-cell-L">Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Exclusivos" title="Cuaba Exclusivos" src="images\Cuaba_Exclusivos_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba Generosos" href="brand.aspx?brand=Cuaba#Generosos">Generosos</a>&nbsp;<span class="subcontent">1996 - Discontinued 2013</span></td><td class="bordered-cell-L">Generosos</td><td class="bordered-cell-L">42 x 132<span id="i7" class="inch">&nbsp;(5.2")</span></td><td class="bordered-cell-L">Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Generosos" title="Cuaba Generosos" src="images\Cuaba_Generosos_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cuaba Tradicionales" href="brand.aspx?brand=Cuaba#Tradicionales">Tradicionales</a>&nbsp;<span class="subcontent">1996 - Discontinued 2012</span></td><td class="bordered-cell-L">Favoritos</td><td class="bordered-cell-L">42 x 120<span id="i8" class="inch">&nbsp;(4.7")</span></td><td class="bordered-cell-L">Petit Perfecto</td><td class="bordered-cell-L"><img alt="Cuaba Tradicionales" title="Cuaba Tradicionales" src="images\Cuaba_Tradicionales_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="El_Rey_del_Mundo">El Rey del Mundo</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="El Rey del Mundo Très Petit Coronas" href="brand.aspx?brand=El_Rey_del_Mundo#Très_Petit_Coronas">Très Petit Coronas</a>&nbsp;<span class="subcontent">1995 - Discontinued 1999</span></td><td class="bordered-cell-L">Minutos</td><td class="bordered-cell-L">42 x 110<span id="i9" class="inch">&nbsp;(4.3")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="El Rey del Mundo Très Petit Coronas" title="El Rey del Mundo Très Petit Coronas" src="images\El_Rey_del_Mundo_Très_Petit_Coronas_cigar_small_1.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="José_L._Piedra">José L. Piedra</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="José L. Piedra Brevas" href="brand.aspx?brand=Jos|e_L._Piedra#Brevas">Brevas</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Brevas JLP</td><td class="bordered-cell-L">42 x 133<span id="i10" class="inch">&nbsp;(5.2")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="José L. Piedra Brevas" title="José L. Piedra Brevas" src="images\José_L._Piedra_Brevas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="José L. Piedra Cazadores" href="brand.aspx?brand=Jos|e_L._Piedra#Cazadores">Cazadores</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Cazadores JLP</td><td class="bordered-cell-L">43 x 152<span id="i11" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="José L. Piedra Cazadores" title="José L. Piedra Cazadores" src="images\José_L._Piedra_Cazadores_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="José L. Piedra Conservas" href="brand.aspx?brand=Jos|e_L._Piedra#Conservas">Conservas</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Conservas JLP</td><td class="bordered-cell-L">44 x 140<span id="i12" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Long Corona</td><td class="bordered-cell-L"><img alt="José L. Piedra Conservas" title="José L. Piedra Conservas" src="images\José_L._Piedra_Conservas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="José L. Piedra Cremas" href="brand.aspx?brand=Jos|e_L._Piedra#Cremas">Cremas</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Cremas JLP</td><td class="bordered-cell-L">40 x 136<span id="i13" class="inch">&nbsp;(5.4")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="José L. Piedra Cremas" title="José L. Piedra Cremas" src="images\José_L._Piedra_Cremas_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="José L. Piedra Nacionales" href="brand.aspx?brand=Jos|e_L._Piedra#Nacionales">Nacionales</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Nacionales JLP</td><td class="bordered-cell-L">42 x 134<span id="i14" class="inch">&nbsp;(5.3")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="José L. Piedra Nacionales" title="José L. Piedra Nacionales" src="images\José_L._Piedra_Nacionales_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="José L. Piedra Petit Cetros" href="brand.aspx?brand=Jos|e_L._Piedra#Petit_Cetros">Petit Cetros</a>&nbsp;<span class="subcontent">1996 - Current</span></td><td class="bordered-cell-L">Petit Cetros JLP</td><td class="bordered-cell-L">38 x 127<span id="i15" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Short Panetela</td><td class="bordered-cell-L"><img alt="José L. Piedra Petit Cetros" title="José L. Piedra Petit Cetros" src="images\José_L._Piedra_Petit_Cetros_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Juan_López">Juan López</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Juan López Selección No.1" href="brand.aspx?brand=Juan_L|opez#Selecci|on_No.1">Selección No.1</a>&nbsp;<span class="subcontent">1990s - Current</span></td><td class="bordered-cell-L">Coronas Gordas</td><td class="bordered-cell-L">46 x 143<span id="i16" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Grand Corona</td><td class="bordered-cell-L"><img alt="Juan López Selección No.1" title="Juan López Selección No.1" src="images\Juan_López_Selection_No.1_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Juan López Selección No.2" href="brand.aspx?brand=Juan_L|opez#Selecci|on_No.2">Selección No.2</a>&nbsp;<span class="subcontent">1990s - Current</span></td><td class="bordered-cell-L">Robustos</td><td class="bordered-cell-L">50 x 124<span id="i17" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Juan López Selección No.2" title="Juan López Selección No.2" src="images\Juan_López_Selection_No.2_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="San_Cristóbal">San Cristóbal</a><span class="brand-type">&nbsp; -&nbsp; Niche Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="San Cristóbal El Morro" href="brand.aspx?brand=San_Crist|obal#El_Morro">El Morro</a>&nbsp;<span class="subcontent">1999 - Current</span></td><td class="bordered-cell-L">Pacos</td><td class="bordered-cell-L">49 x 180<span id="i18" class="inch">&nbsp;(7.1")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="San Cristóbal El Morro" title="San Cristóbal El Morro" src="images\San_Cristóbal__El_Morro_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="San Cristóbal El Príncipe" href="brand.aspx?brand=San_Crist|obal#El_Pr|incipe">El Príncipe</a>&nbsp;<span class="subcontent">1999 - Current</span></td><td class="bordered-cell-L">Minutos</td><td class="bordered-cell-L">42 x 110<span id="i19" class="inch">&nbsp;(4.3")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="San Cristóbal El Príncipe" title="San Cristóbal El Príncipe" src="images\San_Cristóbal__El_Príncipe_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="San Cristóbal La Fuerza" href="brand.aspx?brand=San_Crist|obal#La_Fuerza">La Fuerza</a>&nbsp;<span class="subcontent">1999 - Current</span></td><td class="bordered-cell-L">Gorditos</td><td class="bordered-cell-L">50 x 141<span id="i20" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="San Cristóbal La Fuerza" title="San Cristóbal La Fuerza" src="images\San_Cristóbal__La_Fuerza_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="San Cristóbal La Punta" href="brand.aspx?brand=San_Crist|obal#La_Punta">La Punta</a>&nbsp;<span class="subcontent">1999 - Current</span></td><td class="bordered-cell-L">Campanas</td><td class="bordered-cell-L">52 x 140<span id="i21" class="inch">&nbsp;(5.5")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="San Cristóbal La Punta" title="San Cristóbal La Punta" src="images\San_Cristóbal__La_Punta_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Trinidad">Trinidad</a><span class="brand-type">&nbsp; -&nbsp; Niche Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad Fundadores" href="brand.aspx?brand=Trinidad#Fundadores">Fundadores</a>&nbsp;<span class="subcontent">1997 - Current</span></td><td class="bordered-cell-L">Laguito Especial</td><td class="bordered-cell-L">40 x 192<span id="i22" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Trinidad Fundadores" title="Trinidad Fundadores" src="images\Trinidad_Fundadores_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Vegas_Robaina">Vegas Robaina</a><span class="brand-type">&nbsp; -&nbsp; MultiLocal Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Clásicos" href="brand.aspx?brand=Vegas_Robaina#Cl|asicos">Clásicos</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i23" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Vegas Robaina Clásicos" title="Vegas Robaina Clásicos" src="images\Vegas_Robaina_Clásicos_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Don Alejandro" href="brand.aspx?brand=Vegas_Robaina#Don_Alejandro">Don Alejandro</a>&nbsp;<span class="subcontent">1997 - Current</span></td><td class="bordered-cell-L">Prominentes</td><td class="bordered-cell-L">49 x 194<span id="i24" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="Vegas Robaina Don Alejandro" title="Vegas Robaina Don Alejandro" src="images\Vegas_Robaina_Don_Alejandro_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Familiar" href="brand.aspx?brand=Vegas_Robaina#Familiar">Familiar</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Coronas</td><td class="bordered-cell-L">42 x 142<span id="i25" class="inch">&nbsp;(5.6")</span></td><td class="bordered-cell-L">Corona</td><td class="bordered-cell-L"><img alt="Vegas Robaina Familiar" title="Vegas Robaina Familiar" src="images\Vegas_Robaina_Familiar_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Famosos" href="brand.aspx?brand=Vegas_Robaina#Famosos">Famosos</a>&nbsp;<span class="subcontent">1997 - Current</span></td><td class="bordered-cell-L">Hermosos No.4</td><td class="bordered-cell-L">48 x 127<span id="i26" class="inch">&nbsp;(5.0")</span></td><td class="bordered-cell-L">Corona Extra</td><td class="bordered-cell-L"><img alt="Vegas Robaina Famosos" title="Vegas Robaina Famosos" src="images\Vegas_Robaina_Famosos_cigar_small_0.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina Unicos" href="brand.aspx?brand=Vegas_Robaina#Unicos">Unicos</a>&nbsp;<span class="subcontent">1997 - Current</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i27" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Vegas Robaina Unicos" title="Vegas Robaina Unicos" src="images\Vegas_Robaina_Unicos_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Vegueros">Vegueros</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Especiales No.1" href="brand.aspx?brand=Vegueros#Especiales_No.1">Especiales No.1</a>&nbsp;<span class="subcontent">1997 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i28" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Especiales No.1" title="Vegueros Especiales No.1" src="images\Vegueros_Especiales_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Especiales No.2" href="brand.aspx?brand=Vegueros#Especiales_No.2">Especiales No.2</a>&nbsp;<span class="subcontent">1997 - Discontinued 2010</span></td><td class="bordered-cell-L">Laguito No.2</td><td class="bordered-cell-L">38 x 152<span id="i29" class="inch">&nbsp;(6.0")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Especiales No.2" title="Vegueros Especiales No.2" src="images\Vegueros_Especiales_No.2_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Marevas" href="brand.aspx?brand=Vegueros#Marevas">Marevas</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Marevas</td><td class="bordered-cell-L">42 x 129<span id="i30" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Vegueros Marevas" title="Vegueros Marevas" src="images\Vegueros_Marevas_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Vegueros Seoane" href="brand.aspx?brand=Vegueros#Seoane">Seoane</a>&nbsp;<span class="subcontent">1997 - Discontinued 2012</span></td><td class="bordered-cell-L">Seoane</td><td class="bordered-cell-L">36 x 125<span id="i31" class="inch">&nbsp;(4.9")</span></td><td class="bordered-cell-L">Small Panetela</td><td class="bordered-cell-L"><img alt="Vegueros Seoane" title="Vegueros Seoane" src="images\Vegueros_Seoane_cigar_small_1.jpg"/></td></tr></table></span>
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
