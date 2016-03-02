


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
var inchLimit = 3;
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
    <form name="aspnetForm" method="post" action="list.aspx?specialtype=Grand+Reserve_Series%3b&amp;sortorder=releaseyear" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0MDIzODQxNjcPFgIeE1ZhbGlkYXRlUmVxdWVzdE1vZGUCARYCZg9kFgQCAQ9kFgICBw9kFgJmDw8WAh4EVGV4dAU+PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiPg0KdmFyIGluY2hMaW1pdCA9IDM7DQo8L3NjcmlwdD5kZAIDD2QWAgIFD2QWBGYPDxYCHwEFNTxzcGFuIGNsYXNzPSJoZWFkMSI+U2VhcmNoIFJlc3VsdHM8L3NwYW4+PGJyIC8+PGJyIC8+ZGQCAg8PFgIfAQXBGjx0YWJsZSBjbGFzcz0iYnJhbmRfdGFibGUiPjx0cj48dGQgY2xhc3M9InRhYi1oZWFkIj48YSBocmVmPSJsaXN0LmFzcHg/Y3VycmVudD0mc3BlY2lhbHR5cGU9R3JhbmQgUmVzZXJ2ZV9TZXJpZXM7JnNvcnRvcmRlcj1mdWxsbmFtZSI+Q2lnYXIgTmFtZTxiciAvPjxzcGFuIGNsYXNzPSJxdWljay1saW5rIj5WaXRvbGEgZGUgU2FsaWRhPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1HcmFuZCBSZXNlcnZlX1Nlcmllczsmc29ydG9yZGVyPWZhY3RvcnluYW1lIj5GYWN0b3J5IE5hbWU8YnIgLz48c3BhbiBjbGFzcz0icXVpY2stbGluayI+Vml0b2xhIGRlIEdhbGVyYTwvc3Bhbj48L2E+PC90ZD48dGQgY2xhc3M9InRhYi1oZWFkIj5TaXplPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1HcmFuZCBSZXNlcnZlX1Nlcmllczsmc29ydG9yZGVyPXJpbmciPlJpbmc8L2E+IHggPGEgaHJlZj0ibGlzdC5hc3B4P2N1cnJlbnQ9JnNwZWNpYWx0eXBlPUdyYW5kIFJlc2VydmVfU2VyaWVzOyZzb3J0b3JkZXI9bGVuZ3RobW0iPm1tPC9hPjwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPjxhIGhyZWY9Imxpc3QuYXNweD9jdXJyZW50PSZzcGVjaWFsdHlwZT1HcmFuZCBSZXNlcnZlX1Nlcmllczsmc29ydG9yZGVyPWNvbW1vbm5hbWUiPlNoYXBlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPkNvbW1vbiBOYW1lPC9zcGFuPjwvYT48L3RkPjx0ZCBjbGFzcz0idGFiLWhlYWQiPkltYWdlPGJyIC8+PHNwYW4gY2xhc3M9InF1aWNrLWxpbmsiPlJlbGF0aXZlIFNjYWxlPC9zcGFuPjwvdGQ+PC90cj48dHI+PHRkIGNsYXNzPSJzbS1yZWxlYXNlIiBjb2xzcGFuPSI1Ij4yMDA5PC90cj48dHI+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxhIHRpdGxlPSJDb2hpYmEgR3JhbiBSZXNlcnZhIENvc2VjaGEgMjAwMyIgaHJlZj0iYnJhbmQuYXNweD9icmFuZD1Db2hpYmEjMTkwX0dyYW5fUmVzZXJ2YV9Db3NlY2hhXzIwMDMiPkNvaGliYSBTaWdsbyBWSTwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+R3JhbiBSZXNlcnZhIENvc2VjaGEgMjAwMzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5DYcOxb25hem88L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj41MiB4IDE1MDxzcGFuIGlkPSJpMCIgY2xhc3M9ImluY2giPiZuYnNwOyg1LjkiKTwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Sb2J1c3RvIEV4dHJhPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGltZyBhbHQ9IkNvaGliYSBTaWdsbyBWSSIgdGl0bGU9IkNvaGliYSBTaWdsbyBWSSIgc3JjPSJpbWFnZXNcQ29oaWJhX1NpZ2xvX1ZJX2NpZ2FyX3NtYWxsXzUuanBnIi8+PC90ZD48L3RyPjx0cj48dGQgY2xhc3M9InNtLXJlbGVhc2UiIGNvbHNwYW49IjUiPjIwMTE8L3RyPjx0cj48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+PGEgdGl0bGU9Ik1vbnRlY3Jpc3RvIEdyYW4gUmVzZXJ2YSBDb3NlY2hhIDIwMDUiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9TW9udGVjcmlzdG8jMjc2X0dyYW5fUmVzZXJ2YV9Db3NlY2hhXzIwMDUiPk1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIE5vLjI8L2E+Jm5ic3A7PHNwYW4gY2xhc3M9InN1YmNvbnRlbnQiPkdyYW4gUmVzZXJ2YSBDb3NlY2hhIDIwMDU8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+UGlyw6FtaWRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjUyIHggMTU2PHNwYW4gaWQ9ImkxIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDYuMSIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPlB5cmFtaWQ8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iTW9udGVjcmlzdG8gTW9udGVjcmlzdG8gTm8uMiIgdGl0bGU9Ik1vbnRlY3Jpc3RvIE1vbnRlY3Jpc3RvIE5vLjIiIHNyYz0iaW1hZ2VzXE1vbnRlY3Jpc3RvX01vbnRlY3Jpc3RvX05vLjJfY2lnYXJfc21hbGxfOC5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic20tcmVsZWFzZSIgY29sc3Bhbj0iNSI+MjAxMzwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUGFydGFnw6FzIEdyYW4gUmVzZXJ2YSBDb3NlY2hhIDIwMDciIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9UGFydGFnfGFzIzM2MV9HcmFuX1Jlc2VydmFfQ29zZWNoYV8yMDA3Ij5QYXJ0YWfDoXMgTHVzaXRhbmlhczwvYT4mbmJzcDs8c3BhbiBjbGFzcz0ic3ViY29udGVudCI+R3JhbiBSZXNlcnZhIENvc2VjaGEgMjAwNzwvc3Bhbj48L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj5Qcm9taW5lbnRlczwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjQ5IHggMTk0PHNwYW4gaWQ9ImkyIiBjbGFzcz0iaW5jaCI+Jm5ic3A7KDcuNiIpPC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPkRvdWJsZSBDb3JvbmE8L3RkPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48aW1nIGFsdD0iUGFydGFnw6FzIEx1c2l0YW5pYXMiIHRpdGxlPSJQYXJ0YWfDoXMgTHVzaXRhbmlhcyIgc3JjPSJpbWFnZXNcUGFydGFnw6FzX0x1c2l0YW5pYXNfY2lnYXJfc21hbGxfMi5qcGciLz48L3RkPjwvdHI+PHRyPjx0ZCBjbGFzcz0ic20tcmVsZWFzZSIgY29sc3Bhbj0iNSI+MjAxNTwvdHI+PHRyPjx0ZCBjbGFzcz0iYm9yZGVyZWQtY2VsbC1MIj48YSB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIEdyYW4gUmVzZXJ2YSBDb3NlY2hhIDIwMDkiIGhyZWY9ImJyYW5kLmFzcHg/YnJhbmQ9Um9tZW9feV9KdWxpZXRhIzQwN19HcmFuX1Jlc2VydmFfQ29zZWNoYV8yMDA5Ij5Sb21lbyB5IEp1bGlldGEgV2lkZSBDaHVyY2hpbGxzPC9hPiZuYnNwOzxzcGFuIGNsYXNzPSJzdWJjb250ZW50Ij5HcmFuIFJlc2VydmEgQ29zZWNoYSAyMDA5PC9zcGFuPjwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPk1vbnRlc2NvPC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+NTUgeCAxMzA8c3BhbiBpZD0iaTMiIGNsYXNzPSJpbmNoIj4mbmJzcDsoNS4xIik8L3NwYW4+PC90ZD48dGQgY2xhc3M9ImJvcmRlcmVkLWNlbGwtTCI+Um9idXN0bzwvdGQ+PHRkIGNsYXNzPSJib3JkZXJlZC1jZWxsLUwiPjxpbWcgYWx0PSJSb21lbyB5IEp1bGlldGEgV2lkZSBDaHVyY2hpbGxzIiB0aXRsZT0iUm9tZW8geSBKdWxpZXRhIFdpZGUgQ2h1cmNoaWxscyIgc3JjPSJpbWFnZXNcUm9tZW9feV9KdWxpZXRhX1dpZGVfQ2h1cmNoaWxsc19jaWdhcl9zbWFsbF80LmpwZyIvPjwvdGQ+PC90cj48L3RhYmxlPmRkZLoEbyTyUdaKcGuwBknddlpFLutWAi/jUxwTgTEnslAy" />
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
               
              <a href="/login.aspx?ReturnUrl=http:%2f%2fwww.cubancigarwebsite.com%2flist.aspx%3fspecialtype%3dGrand Reserve_Series%3b%26sortorder%3dreleaseyear ">Sign In</a> | <a href="/signup.aspx">Register</a>
            
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



 
        <span id="ctl00_ContentPlaceHolder1_lblBody"><table class="brand_table"><tr><td class="tab-head"><a href="list.aspx?current=&specialtype=Grand Reserve_Series;&sortorder=fullname">Cigar Name<br /><span class="quick-link">Vitola de Salida</span></a></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Grand Reserve_Series;&sortorder=factoryname">Factory Name<br /><span class="quick-link">Vitola de Galera</span></a></td><td class="tab-head">Size<br /><span class="quick-link"><a href="list.aspx?current=&specialtype=Grand Reserve_Series;&sortorder=ring">Ring</a> x <a href="list.aspx?current=&specialtype=Grand Reserve_Series;&sortorder=lengthmm">mm</a></span></td><td class="tab-head"><a href="list.aspx?current=&specialtype=Grand Reserve_Series;&sortorder=commonname">Shape<br /><span class="quick-link">Common Name</span></a></td><td class="tab-head">Image<br /><span class="quick-link">Relative Scale</span></td></tr><tr><td class="sm-release" colspan="5">2009</tr><tr><td class="bordered-cell-L"><a title="Cohiba Gran Reserva Cosecha 2003" href="brand.aspx?brand=Cohiba#190_Gran_Reserva_Cosecha_2003">Cohiba Siglo VI</a>&nbsp;<span class="subcontent">Gran Reserva Cosecha 2003</span></td><td class="bordered-cell-L">Cañonazo</td><td class="bordered-cell-L">52 x 150<span id="i0" class="inch">&nbsp;(5.9")</span></td><td class="bordered-cell-L">Robusto Extra</td><td class="bordered-cell-L"><img alt="Cohiba Siglo VI" title="Cohiba Siglo VI" src="images\Cohiba_Siglo_VI_cigar_small_5.jpg"/></td></tr><tr><td class="sm-release" colspan="5">2011</tr><tr><td class="bordered-cell-L"><a title="Montecristo Gran Reserva Cosecha 2005" href="brand.aspx?brand=Montecristo#276_Gran_Reserva_Cosecha_2005">Montecristo Montecristo No.2</a>&nbsp;<span class="subcontent">Gran Reserva Cosecha 2005</span></td><td class="bordered-cell-L">Pirámides</td><td class="bordered-cell-L">52 x 156<span id="i1" class="inch">&nbsp;(6.1")</span></td><td class="bordered-cell-L">Pyramid</td><td class="bordered-cell-L"><img alt="Montecristo Montecristo No.2" title="Montecristo Montecristo No.2" src="images\Montecristo_Montecristo_No.2_cigar_small_8.jpg"/></td></tr><tr><td class="sm-release" colspan="5">2013</tr><tr><td class="bordered-cell-L"><a title="Partagás Gran Reserva Cosecha 2007" href="brand.aspx?brand=Partag|as#361_Gran_Reserva_Cosecha_2007">Partagás Lusitanias</a>&nbsp;<span class="subcontent">Gran Reserva Cosecha 2007</span></td><td class="bordered-cell-L">Prominentes</td><td class="bordered-cell-L">49 x 194<span id="i2" class="inch">&nbsp;(7.6")</span></td><td class="bordered-cell-L">Double Corona</td><td class="bordered-cell-L"><img alt="Partagás Lusitanias" title="Partagás Lusitanias" src="images\Partagás_Lusitanias_cigar_small_2.jpg"/></td></tr><tr><td class="sm-release" colspan="5">2015</tr><tr><td class="bordered-cell-L"><a title="Romeo y Julieta Gran Reserva Cosecha 2009" href="brand.aspx?brand=Romeo_y_Julieta#407_Gran_Reserva_Cosecha_2009">Romeo y Julieta Wide Churchills</a>&nbsp;<span class="subcontent">Gran Reserva Cosecha 2009</span></td><td class="bordered-cell-L">Montesco</td><td class="bordered-cell-L">55 x 130<span id="i3" class="inch">&nbsp;(5.1")</span></td><td class="bordered-cell-L">Robusto</td><td class="bordered-cell-L"><img alt="Romeo y Julieta Wide Churchills" title="Romeo y Julieta Wide Churchills" src="images\Romeo_y_Julieta_Wide_Churchills_cigar_small_4.jpg"/></td></tr></table></span>
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
