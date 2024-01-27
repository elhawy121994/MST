<?php

namespace App\Console;

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
class XlsxFileReader implements FileReaderInterface
{
    public function read()
    {
        $filePath = __DIR__.'/data.xlsx';
        $spreadsheet = IOFactory::load($filePath);
        return $spreadsheet->getActiveSheet();
    }
}
