<?php

namespace App\Console;

use App\Repository\InvoiceRepository;

Class InvoiceImporter {
    public function import(): bool
    {
        $excelImporter = new XlsxFileReader();
        $invoiceRepository = new InvoiceRepository();
        $spreadsheet = $excelImporter->read();
        $highestRow = $spreadsheet->getHighestRow();
        // Iterate through rows and columns starting from the second row
        for ($rowIndex = 2; $rowIndex <= $highestRow; ++$rowIndex) {
            // Get the row
            $row = $spreadsheet->getRowIterator($rowIndex)->current();
            $invoiceData = $this->parseToInvoiceData($row);
            $invoiceRepository->insertData($invoiceData);
        }

        return true;
    }

    private function parseToInvoiceData($row): array
    {
        // Iterate through cells in the row
        $invoiceData['type'] = ($row->getCellIterator('A')->current())->getCalculatedValue();
        $invoiceData['invoice_date'] = ($row->getCellIterator('B')->current())->getCalculatedValue();
        $invoiceData['customer_name'] = ($row->getCellIterator('C')->current())->getCalculatedValue();
        $invoiceData['customer_address'] = ($row->getCellIterator('D')->current())->getCalculatedValue();
        $invoiceData['product_name'] = ($row->getCellIterator('E')->current())->getCalculatedValue();
        $invoiceData['quantity'] = ($row->getCellIterator('F')->current())->getCalculatedValue();
        $invoiceData['price'] = ($row->getCellIterator('G')->current())->getCalculatedValue();
        $invoiceData['total'] = ($row->getCellIterator('H')->current())->getCalculatedValue();
        $invoiceData['grand_total'] = ($row->getCellIterator('I')->current())->getCalculatedValue();

        return $invoiceData;
    }
}
