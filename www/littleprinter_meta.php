<?php

	include("include/init.php");

	features_ensure_enabled("littleprinter");

	header("Content-type: text/json");

	$GLOBALS['smarty']->display("page_littleprinter_meta.txt");
	exit();

