<?php

namespace App\Service;

use App\Repository\InvoiceRepository;

class InvoiceService
{
    protected InvoiceRepository $repository;
    public function __construct(InvoiceRepository $repository)
    {
        $this->repository = $repository;
    }
    public function listInvoices(): array
    {
        return $this->repository->findAll();
    }
}