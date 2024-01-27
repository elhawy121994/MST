<?php

namespace App\Repository;

use App\Model\Invoice;
use PDO;

class InvoiceRepository extends BaseRepository
{
    protected string $table = Invoice::TABLE;
}