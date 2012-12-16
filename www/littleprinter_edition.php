<?php

	include("include/init.php");

	features_ensure_enabled("littleprinter");

	# This is where you do stuff...

	# You may want/need to adjust these

	$lastmod = gmdate('D, d M Y H:i:s \G\M\T', time());
	$etag = md5('littleprinter');

	header("Last-Modified: $lastmod"); 
	header("ETag: $etag");

	# This is where the stuff you do gets displayed...

	$GLOBALS['smarty']->display("page_littleprinter_edition.txt");
	exit();
?>
