<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
require_once dirname(__DIR__) . '/vendor/autoload.php';

use App\Console\InvoiceImporter;

echo "Status Import : " . (!empty((new InvoiceImporter())->import())) ?  "success" : "filed";
echo PHP_EOL;