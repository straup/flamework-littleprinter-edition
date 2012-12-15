<?php

	include("include/init.php");

	features_ensure_enabled("littleprinter");

	# This is where you do stuff...

	# This is where the stuff you do gets displayed...

	$GLOBALS['smarty']->display("page_littleprinter_edition.txt");
	exit();
?>
