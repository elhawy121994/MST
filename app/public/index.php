<?php

use App\Repository\InvoiceRepository;
use App\Response\JsonResponse;
use App\Service\InvoiceService;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
require_once dirname(__DIR__) . '/vendor/autoload.php';

$invoiceService = (new InvoiceService(new InvoiceRepository()));

JsonResponse::getResponse($invoiceService->listInvoices());