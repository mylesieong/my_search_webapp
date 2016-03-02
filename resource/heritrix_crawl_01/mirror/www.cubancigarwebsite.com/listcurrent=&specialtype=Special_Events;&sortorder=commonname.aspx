


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_headMaster"><title>
	Cuban Cigar Website :: Search Results
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
    <form name="aspnetForm" method="post" action="list.aspx?current=&amp;specialtype=Special_Events%3b&amp;sortorder=commonname" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU+PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDY7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFNTxzcGFuIGNsYXNzPSJoZWFkMSI+U2VhcmNoIFJlc3VsdHM8L3NwYW4+PGJyIC8+PGJyIC8+ZGQCAg8PFgIfAQX8JDx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9U3BlY2lhbF9FdmVudHM7JnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1TcGVjaWFsX0V2ZW50czsmc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1TcGVjaWFsX0V2ZW50czsmc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPVNwZWNpYWxfRXZlbnRzOyZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1TcGVjaWFsX0V2ZW50czsmc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJWZWdhcyBSb2JhaW5hIDR0aCBIYWJhbm9zIEZlc3RpdmFsIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVZlZ2FzX1JvYmFpbmEjMjU2XzR0aF9IYWJhbm9zX0Zlc3RpdmFsIj5WZWdhcyBSb2JhaW5hIERvbiBBbGVqYW5kcm88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjIwMDIgLSA0dGggSGFiYW5vcyBGZXN0aXZhbDwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Qcm9taW5lbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ5IHggMTk0PHNwYW4gaWQ9ImkwIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iVmVnYXMgUm9iYWluYSBEb24gQWxlamFuZHJvIiB0aXRsZT0iVmVnYXMgUm9iYWluYSBEb24gQWxlamFuZHJvIiBzcmM9ImltYWdlc1xWZWdhc19Sb2JhaW5hX1Byb21pbmVudGVfY2lnYXJfc21hbGwuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9IkNvaGliYSBEaW5uZXIgb2YgdGhlIENlbnR1cnkgLSBDb2hpYmEiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Q29oaWJhIzI1MV9EaW5uZXJfb2ZfdGhlX0NlbnR1cnlfLV9Db2hpYmEiPkNvaGliYSBDb2hpYmEgQTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk5NCAtIERpbm5lciBvZiB0aGUgQ2VudHVyeSAtIENvaGliYTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5HcmFuIENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ3IHggMjM1PHNwYW4gaWQ9ImkxIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDkuMyIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkdpYW50IENvcm9uYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgQ29oaWJhIEEiIHRpdGxlPSJDb2hpYmEgQ29oaWJhIEEiIHNyYz0iaW1hZ2VzXENvaGliYV9Db2hpYmFfQV9jaWdhcl9zbWFsbF8xLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgVklQIEdpZnRzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSMyNTRfVklQX0dpZnRzIj5Db2hpYmEgTGFuY2Vyb3M8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NzAgLSBWSVAgR2lmdHM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTIiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgTGFuY2Vyb3MiIHRpdGxlPSJDb2hpYmEgTGFuY2Vyb3MiIHNyYz0iaW1hZ2VzXENvaGliYV9MYW5jZXJvc19jaWdhcl9zbWFsbF83LmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgRGlwbG9tYXRpYyBHaWZ0cyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Db2hpYmEjMjQ4X0RpcGxvbWF0aWNfR2lmdHMiPkNvaGliYSBMYW5jZXJvczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+MTk2NiAtIERpcGxvbWF0aWMgR2lmdHM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJDb2hpYmEgTGFuY2Vyb3MiIHRpdGxlPSJDb2hpYmEgTGFuY2Vyb3MiIHNyYz0iaW1hZ2VzXENvaGliYV9EaXBsb21hdGljX0NvaGliYV9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVHJpbmlkYWQgVklQIEdpZnRzIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPVRyaW5pZGFkIzI1M19WSVBfR2lmdHMiPlRyaW5pZGFkIEdyYW4gUGFuZXRlbGE8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5NjkgLSBWSVAgR2lmdHM8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTQiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJUcmluaWRhZCBHcmFuIFBhbmV0ZWxhIiB0aXRsZT0iVHJpbmlkYWQgR3JhbiBQYW5ldGVsYSIgc3JjPSJpbWFnZXNcVHJpbmlkYWRfVW5uYW1lZF9jaWdhcl9zbWFsbC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iVHJpbmlkYWQgRGlubmVyIG9mIHRoZSBDZW50dXJ5IC0gVHJpbmlkYWQiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9VHJpbmlkYWQjMjQ3X0Rpbm5lcl9vZl90aGVfQ2VudHVyeV8tX1RyaW5pZGFkIj5UcmluaWRhZCBHcmFuIFBhbmV0ZWxhPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij4xOTk0IC0gRGlubmVyIG9mIHRoZSBDZW50dXJ5IC0gVHJpbmlkYWQ8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TGFndWl0byBOby4xPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+MzggeCAxOTI8c3BhbiBpZD0iaTUiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNy42Iik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+TG9uZyBQYW5ldGVsYTwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJUcmluaWRhZCBHcmFuIFBhbmV0ZWxhIiB0aXRsZT0iVHJpbmlkYWQgR3JhbiBQYW5ldGVsYSIgc3JjPSJpbWFnZXNcVHJpbmlkYWRfTGFndWl0b19Oby4xX2NpZ2FyX3NtYWxsLmpwZyIvPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgRGlubmVyIG9mIHRoZSBDZW50dXJ5IC0gQ29oaWJhIiBocmVmPSJicmFuZC5hc3B4P2JyYW5kPUNvaGliYSMyNTFfRGlubmVyX29mX3RoZV9DZW50dXJ5Xy1fQ29oaWJhIj5Db2hpYmEgQ29oaWJhIFRvcnBlZG88L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPjE5OTQgLSBEaW5uZXIgb2YgdGhlIENlbnR1cnkgLSBDb2hpYmE8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTU2PHNwYW4gaWQ9Imk2IiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlB5cmFtaWQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iQ29oaWJhIENvaGliYSBUb3JwZWRvIiB0aXRsZT0iQ29oaWJhIENvaGliYSBUb3JwZWRvIiBzcmM9ImltYWdlc1xDb2hpYmFfQ29oaWJhX1RvcnBlZG9fY2lnYXJfc21hbGxfMC5qcGciLz48L3RkPjwvdHI+PC90YWJsZT5kZGQBZTnDy7nLlA19xg2Zsq2YxUMnx3iPa64aFLQ6L5oQxg==" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fcurrent%3d%26specialtype%3dSpecial_Events%3b%26sortorder%3dcommonname ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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

 <span id="ctl00_ContentPlaceHolder1_lblHead"><span class="head1">Search Results</span><br /><br /></span>
 

   


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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Special_Events;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Special_Events;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Special_Events;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Special_Events;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Special_Events;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="bordered-cell-L"><a title="Vegas Robaina 4th Habanos Festival" href="brand.aspx?brand=Vegas_Robaina#256_4th_Habanos_Festival">Vegas Robaina Don Alejandro</a>&nbsp;<span class="subcontent">2002 - 4th Habanos Festival</span></td><td class="bordered-cell-L">Prominentes</td><td class="bordered-cell-L">49 x 194<span id="i0" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="Vegas Robaina Don Alejandro" title="Vegas Robaina Don Alejandro" src="images\Vegas_Robaina_Prominente_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Dinner of the Century - Cohiba" href="brand.aspx?brand=Cohiba#251_Dinner_of_the_Century_-_Cohiba">Cohiba Cohiba A</a>&nbsp;<span class="subcontent">1994 - Dinner of the Century - Cohiba</span></td><td class="bordered-cell-L">Gran Corona</td><td class="bordered-cell-L">47 x 235<span id="i1" class="inch">&nbsp;(9.3")</span></td><td class="bordered-cell-L">Giant Corona</td><td class="bordered-cell-L"><img alt="Cohiba Cohiba A" title="Cohiba Cohiba A" src="images\Cohiba_Cohiba_A_cigar_small_1.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba VIP Gifts" href="brand.aspx?brand=Cohiba#254_VIP_Gifts">Cohiba Lanceros</a>&nbsp;<span class="subcontent">1970 - VIP Gifts</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i2" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Cohiba Lanceros" title="Cohiba Lanceros" src="images\Cohiba_Lanceros_cigar_small_7.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Diplomatic Gifts" href="brand.aspx?brand=Cohiba#248_Diplomatic_Gifts">Cohiba Lanceros</a>&nbsp;<span class="subcontent">1966 - Diplomatic Gifts</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i3" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Cohiba Lanceros" title="Cohiba Lanceros" src="images\Cohiba_Diplomatic_Cohiba_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad VIP Gifts" href="brand.aspx?brand=Trinidad#253_VIP_Gifts">Trinidad Gran Panetela</a>&nbsp;<span class="subcontent">1969 - VIP Gifts</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i4" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Trinidad Gran Panetela" title="Trinidad Gran Panetela" src="images\Trinidad_Unnamed_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Trinidad Dinner of the Century - Trinidad" href="brand.aspx?brand=Trinidad#247_Dinner_of_the_Century_-_Trinidad">Trinidad Gran Panetela</a>&nbsp;<span class="subcontent">1994 - Dinner of the Century - Trinidad</span></td><td class="bordered-cell-L">Laguito No.1</td><td class="bordered-cell-L">38 x 192<span id="i5" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Long Panetela</td><td class="bordered-cell-L"><img alt="Trinidad Gran Panetela" title="Trinidad Gran Panetela" src="images\Trinidad_Laguito_No.1_cigar_small.jpg"/></td></tr><tr><td class="bordered-cell-L"><a title="Cohiba Dinner of the Century - Cohiba" href="brand.aspx?brand=Cohiba#251_Dinner_of_the_Century_-_Cohiba">Cohiba Cohiba Torpedo</a>&nbsp;<span class="subcontent">1994 - Dinner of the Century - Cohiba</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i6" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Cohiba Cohiba Torpedo" title="Cohiba Cohiba Torpedo" src="images\Cohiba_Cohiba_Torpedo_cigar_small_0.jpg"/></td></tr></table></span>
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
