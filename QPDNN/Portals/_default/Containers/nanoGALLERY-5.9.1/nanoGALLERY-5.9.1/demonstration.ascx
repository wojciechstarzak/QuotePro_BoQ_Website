<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
 -->
<body>

	<div style="color:#fff;text-align:center;font-size:4.0em;"><span style="color:#fff;">nano</span><span style="color:#6e6;">GALLERY</span></div>
	<div style="text-align:center;font-size:2em;color:#6e6">jQuery plugin - demonstration page</div>
	<div style="color:#eee;text-align:center;font-size:.9em;"><br>Full nanoGALLERY documentation: <a href="http://www.nanogallery.brisbois.fr">www.nanogallery.brisbois.fr</a></div>
	<br><br><br><br>
	<div style="color:#eee;text-align:center;font-size:1.2em;">Look at the page source code to find useful information.</div>
	
	<br><br><br><br><br><br><br><br><br>
	<h2 style="background:#555;">----- Possible image sources -----</h2>

	<br><br><h2>Sample #1: item list in options</h2>
	<div id="nanoGallery1"></div>
	<br>
	<div style="background:#eee;padding:'10px';margin:auto;max-width:450px;">
		<br>
		<div id="nanoGallery1a"></div>
		<br>
	</div>

	<br><br><h2>Sample #2: HREF attributes</h2>
	<div id="nanoGallery2">
		<a href="<%= SkinPath %>image_01.jpg" data-ngthumb="image_01ts.jpg" data-ngdesc="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet interdum magna. Nunc luctus leo ut blandit tempor. Suspendisse at auctor lorem, sed hendrerit arcu.">Thailand</a>
		<a href="<%= SkinPath %>image_02.jpg" data-ngthumb="image_02ts.jpg" data-ngdesc="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">Vietnam</a>
		<a href="<%= SkinPath %>image_03.jpg" data-ngthumb="image_03ts.jpg" data-ngdesc="" data-customdata='{"a":"1", "b":"2"}'>India</a>
	</div>

	<br><br><h2>Sample #3: Picasa/Google+</h2>
	<!-- <div style="margin:auto;max-width:960px;"> -->
  <button id="btnPicasaOpen" "type="button" style="color:#000;padding:4px;">&nbsp; open image &nbsp;</button>
	<div>
		<div id="nanoGallery3"></div>
	</div>
  <br><br><br>
	<div style="margin:auto;max-width:960px;background:#fff;color:#f00;padding:1px;">
    <div style="margin:10px;">
      <button id="btnReload" "type="button" style="color:#000;padding:4px;">&nbsp; reload &nbsp;</button>
      <button id="btnCountSelected" "type="button" style="color:#000;padding:4px;">&nbsp; count selected items &nbsp;</button>
      <button id="btnUnselect" "type="button" style="color:#000;padding:4px;">&nbsp; Unselect selected items &nbsp;</button>
    </div>
		<br><br><br>
    <div id="nanoGallery3a"></div>
    <br><br><br>
	</div>

	<br><br><h2>Sample #4: Flickr</h2>
	<div style="margin:auto;max-width:600px;">
		<div id="nanoGallery4"></div>
	</div>

	
	<br><br><br><br><br><br><br><br><br>
	<h2 style="background:#555;">----- Multi-level navigation and pagination (API) -----</h2><br><br>
    <div style="margin:10px;">
      <button id="btnPaginationCount" "type="button" style="color:#000;padding:4px;">&nbsp; Pagination - count &nbsp;</button>
      <button id="btnPaginationNext" "type="button" style="color:#000;padding:4px;">&nbsp; Pagination - next &nbsp;</button>
      <button id="btnPaginationPrevious" "type="button" style="color:#000;padding:4px;">&nbsp; Pagination - previous &nbsp;</button>
      <button id="btnPaginationGoto" "type="button" style="color:#000;padding:4px;">&nbsp; Pagination - goto page 2 &nbsp;</button>
    </div>
	<div id="nanoGalleryMLN"></div>


	<br><br><br><br><br><br><br><br><br>
	<h2 style="background:#555;">----- Thumbnails configuration demo -----</h2><br><br>

	<div id="nanoGalleryAnimation1" style="margin:50px">
    <a href="<%= SkinPath %>image_01.jpg" data-ngThumb="image_01ts.jpg" data-ngDesc="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">Image 1</a>
    <a href="<%= SkinPath %>image_02.jpg" data-ngThumb="image_02ts.jpg">Image 2</a>
    <a href="<%= SkinPath %>image_03.jpg" data-ngThumb="image_03ts.jpg">Image 3</a>
  </div>

	
	<br><br><h5>by <a href="https://plus.google.com/111186676244625461692?rel=author">Christophe Brisbois</a></h5>

