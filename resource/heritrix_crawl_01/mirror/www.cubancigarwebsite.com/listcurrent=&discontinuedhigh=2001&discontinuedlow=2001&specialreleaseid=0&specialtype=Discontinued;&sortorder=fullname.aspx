


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: 2001 Deletions
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;discontinuedhigh=2001&amp;discontinuedlow=2001&amp;specialreleaseid=0&amp;specialtype=Discontinued%3b&amp;sortorder=fullname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU+PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDQ7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFnQQ8c3BhbiBjbGFzcz0iaGVhZDEiPjIwMDEgRGVsZXRpb25zPC9zcGFuPjxiciAvPjxiciAvPjxkaXYgaWQ9InByaW50SGVhZERyb3Bkb3duIiBzdHlsZT0iZGlzcGxheTogYmxvY2s7IHRleHQtYWxpZ246Y2VudGVyOyI+ICA8c2VsZWN0IG9uY2hhbmdlPSJGUF9qdW1wTWVudSh0aGlzLCd3aW5kb3cnLGZhbHNlKSIgaWQ9ImlkMSIgbmFtZT0iRDEiIGNsYXNzPSJkcm9wZG93biI+PG9wdGlvbiB2YWx1ZT0iI3d3dy5DdWJhbkNpZ2FyV2Vic2l0ZS5jb20iIHNlbGVjdGVkPSJzZWxlY3RlZCI+QnJhbmRzPC9vcHRpb24+PG9wdGlvbiB2YWx1ZT0iIj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQYXJ0YWfDoXMiPlBhcnRhZ8Ohczwvb3B0aW9uPjxvcHRpb24gdmFsdWU9IiNQb3JfTGFycmHDsWFnYSI+UG9yIExhcnJhw7FhZ2E8L29wdGlvbj48b3B0aW9uIHZhbHVlPSIjUmFtw7NuX0FsbG9uZXMiPlJhbcOzbiBBbGxvbmVzPC9vcHRpb24+PC9zZWxlY3Q+PGJyIC8+PC9kaXY+ZGQCAg8PFgIfAQX5ITx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mZGlzY29udGludWVkaGlnaD0yMDAxJmRpc2NvbnRpbnVlZGxvdz0yMDAxJnNwZWNpYWxyZWxlYXNlaWQ9MCZzcGVjaWFsdHlwZT1EaXNjb250aW51ZWQ7JnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDEmZGlzY29udGludWVkbG93PTIwMDEmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDEmZGlzY29udGludWVkbG93PTIwMDEmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JmRpc2NvbnRpbnVlZGhpZ2g9MjAwMSZkaXNjb250aW51ZWRsb3c9MjAwMSZzcGVjaWFscmVsZWFzZWlkPTAmc3BlY2lhbHR5cGU9RGlzY29udGludWVkOyZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZkaXNjb250aW51ZWRoaWdoPTIwMDEmZGlzY29udGludWVkbG93PTIwMDEmc3BlY2lhbHJlbGVhc2VpZD0wJnNwZWNpYWx0eXBlPURpc2NvbnRpbnVlZDsmc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlBhcnRhZ8OhcyI+UGFydGFnw6FzPC9hPjxzcGFuIGNsYXNzPSJicmFuZC10eXBlIj4mbmJzcDsgLSZuYnNwOyBHbG9iYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBhcnRhZ8OhcyBDYXBpdG9scyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjQ2FwaXRvbHMiPkNhcGl0b2xzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5QcmUtMTk2MCAtIERpc2NvbnRpbnVlZCAyMDAxPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENldHJvczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQwIHggMTI5PHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDUuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlBldGl0IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQYXJ0YWfDoXMgQ2FwaXRvbHMiIHRpdGxlPSJQYXJ0YWfDoXMgQ2FwaXRvbHMiIHNyYz0iaW1hZ2VzXFBhcnRhZ8Ohc19DYXBpdG9sc19jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIFRyZXMgUGV0aXQgQ29yb25hcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1QYXJ0YWd8YXMjVHJlc19QZXRpdF9Db3JvbmFzIj5UcmVzIFBldGl0IENvcm9uYXM8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPlByZS0xOTYwIC0gRGlzY29udGludWVkIDIwMDE8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+RnJhbmNpc2Nhbm9zPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NDAgeCAxMTY8c3BhbiBpZD0iaTEiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNC42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGV0aXQgQ29yb25hPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IlBhcnRhZ8OhcyBUcmVzIFBldGl0IENvcm9uYXMiIHRpdGxlPSJQYXJ0YWfDoXMgVHJlcyBQZXRpdCBDb3JvbmFzIiBzcmM9ImltYWdlc1xQYXJ0YWfDoXNfVHJlc19QZXRpdF9Db3JvbmFzX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlBvcl9MYXJyYcOxYWdhIj5Qb3IgTGFycmHDsWFnYTwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBvciBMYXJyYcOxYWdhIExhcmdvcyBkZSBMYXJyYcOxYWdhIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVBvcl9MYXJyYXxuYWdhI0xhcmdvc19kZV9MYXJyYXxuYWdhIj5MYXJnb3MgZGUgTGFycmHDsWFnYTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwMTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5EZWxpY2lvc29zIChvbGQpPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzUgeCAxNTk8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUG9yIExhcnJhw7FhZ2EgTGFyZ29zIGRlIExhcnJhw7FhZ2EiIHRpdGxlPSJQb3IgTGFycmHDsWFnYSBMYXJnb3MgZGUgTGFycmHDsWFnYSIgc3JjPSJpbWFnZXNcUG9yX0xhcnJhw7FhZ2FfTGFyZ29zX2RlX0xhcnJhw7FhZ2FfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlBvciBMYXJyYcOxYWdhIExvbnNkYWxlcyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Qb3JfTGFycmF8bmFnYSNMb25zZGFsZXMiPkxvbnNkYWxlczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwMTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DZXJ2YW50ZXM8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj40MiB4IDE2NTxzcGFuIGlkPSJpMyIgY2xhc3M9ImluY2giPiZuYnNwOyg2LjUiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Mb25zZGFsZTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJQb3IgTGFycmHDsWFnYSBMb25zZGFsZXMiIHRpdGxlPSJQb3IgTGFycmHDsWFnYSBMb25zZGFsZXMiIHNyYz0iaW1hZ2VzXFBvcl9MYXJyYcOxYWdhX0xvbnNkYWxlc19jaWdhcl9zbWFsbF8wLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzZWN0aW9uLWhlYWQiIGNvbHNwYW49IjUiPjxhIG5hbWU9IlJhbcOzbl9BbGxvbmVzIj5SYW3Ds24gQWxsb25lczwvYT48c3BhbiBjbGFzcz0iYnJhbmQtdHlwZSI+Jm5ic3A7IC0mbmJzcDsgTG9jYWwgQnJhbmQ8L3NwYW4+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIFRvcHBlcnMiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UmFtfG9uX0FsbG9uZXMjVG9wcGVycyI+VG9wcGVyczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+UHJlLTE5NjAgLSBEaXNjb250aW51ZWQgMjAwMTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Ub3BwZXJzPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzkgeCAxNjA8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNi4zIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGFuZXRlbGE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUmFtw7NuIEFsbG9uZXMgVG9wcGVycyIgdGl0bGU9IlJhbcOzbiBBbGxvbmVzIFRvcHBlcnMiIHNyYz0iaW1hZ2VzXFJhbW9uX0FsbG9uZXNfVG9wcGVyc19zbWFsbC5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGQdx0vCMyNjanRF2lFp3NMEEjkeMF+6AMHx0+GRAdrV4A==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26discontinuedhigh%3d2001%26discontinuedlow%3d2001%26specialreleaseid%3d0%26specialtype%3dDiscontinued%3b%26sortorder%3dfullname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">2001 Deletions</span><br /><br /><div id="printHeadDropdown" style="display: block; text-align:center;">  <select onchange="FP_jumpMenu(this,'window',false)" id="id1" name="D1" class="dropdown"><option value="#www.CubanCigarWebsite.com" selected="selected">Brands</option><option value="">-----------------------------------------------</option><option value="#Partagás">Partagás</option><option value="#Por_Larrañaga">Por Larrañaga</option><option value="#Ramón_Allones">Ramón Allones</option></select><br /></div></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2001&discontinuedlow=2001&specialreleaseid=0&specialtype=Discontinued;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2001&discontinuedlow=2001&specialreleaseid=0&specialtype=Discontinued;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&discontinuedhigh=2001&discontinuedlow=2001&specialreleaseid=0&specialtype=Discontinued;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&discontinuedhigh=2001&discontinuedlow=2001&specialreleaseid=0&specialtype=Discontinued;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&discontinuedhigh=2001&discontinuedlow=2001&specialreleaseid=0&specialtype=Discontinued;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="section-head" colspan="5"><a name="Partagás">Partagás</a><span class="brand-type">&nbsp; -&nbsp; Global Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Capitols" href="brand.aspx?brand=Partag|as#Capitols">Capitols</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2001</span></td><td class="bordered-cell-L">Petit Cetros</td><td class="bordered-cell-L">40 x 129<span id="i0" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Partagás Capitols" title="Partagás Capitols" src="images\Partagás_Capitols_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Partagás Tres Petit Coronas" href="brand.aspx?brand=Partag|as#Tres_Petit_Coronas">Tres Petit Coronas</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2001</span></td><td class="bordered-cell-L">Franciscanos</td><td class="bordered-cell-L">40 x 116<span id="i1" class="inch">&nbsp;(4.6")</span></td><td class="bordered-cell-L">Petit Corona</td><td class="bordered-cell-L"><img alt="Partagás Tres Petit Coronas" title="Partagás Tres Petit Coronas" src="images\Partagás_Tres_Petit_Coronas_cigar_small.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Por_Larrañaga">Por Larrañaga</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Largos de Larrañaga" href="brand.aspx?brand=Por_Larra|naga#Largos_de_Larra|naga">Largos de Larrañaga</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2001</span></td><td class="bordered-cell-L">Deliciosos (old)</td><td class="bordered-cell-L">35 x 159<span id="i2" class="inch">&nbsp;(6.3")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Por Larrañaga Largos de Larrañaga" title="Por Larrañaga Largos de Larrañaga" src="images\Por_Larrañaga_Largos_de_Larrañaga_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Por Larrañaga Lonsdales" href="brand.aspx?brand=Por_Larra|naga#Lonsdales">Lonsdales</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2001</span></td><td class="bordered-cell-L">Cervantes</td><td class="bordered-cell-L">42 x 165<span id="i3" class="inch">&nbsp;(6.5")</span></td><td class="bordered-cell-L">Lonsdale</td><td class="bordered-cell-L"><img alt="Por Larrañaga Lonsdales" title="Por Larrañaga Lonsdales" src="images\Por_Larrañaga_Lonsdales_cigar_small_0.jpg"/></td></tr><tr><td class="section-head" colspan="5"><a name="Ramón_Allones">Ramón Allones</a><span class="brand-type">&nbsp; -&nbsp; Local Brand</span></td></tr><tr><td class="bordered-cell-L"><a title="Ramón Allones Toppers" href="brand.aspx?brand=Ram|on_Allones#Toppers">Toppers</a>&nbsp;<span class="subcontent">Pre-1960 - Discontinued 2001</span></td><td class="bordered-cell-L">Toppers</td><td class="bordered-cell-L">39 x 160<span id="i4" class="inch">&nbsp;(6.3")</span></td><td class="bordered-cell-L">Panetela</td><td class="bordered-cell-L"><img alt="Ramón Allones Toppers" title="Ramón Allones Toppers" src="images\Ramon_Allones_Toppers_small.jpg"/></td></tr></table></span>
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
