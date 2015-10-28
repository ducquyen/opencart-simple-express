<?php
/// Startup
if (class_exists('VQMod')) {
	require_once(VQMod::modCheck(DIR_SYSTEM . 'startup.php'));        
} else {
	require_once(DIR_SYSTEM . 'startup.php');
}

// Registry
$registry = new Registry();

// Loader
$loader = new Loader($registry);
$registry->set('load', $loader);

// Config
$config = new Config();
$registry->set('config', $config);

// Database
$db = new DB(DB_DRIVER, DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
$registry->set('db', $db);

$result = $db->query("SHOW COLUMNS FROM `" . DB_PREFIX . "order` LIKE 'express_number'");
$exists = ($result) ? TRUE : FALSE;

if (!$exists) {
	$query = $db->query("ALTER TABLE `" . DB_PREFIX . "order` ADD `express_number` VARCHAR(64) NOT NULL DEFAULT '', ADD `express_company` VARCHAR(64) NOT NULL DEFAULT '';");
}
