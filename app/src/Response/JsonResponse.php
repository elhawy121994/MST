<?php

namespace App\Response;

use JetBrains\PhpStorm\NoReturn;

class JsonResponse
{
   #[NoReturn] public static function getResponse($responseData): void
    {
        header('Content-Type: application/json');
        echo json_encode($responseData);
        exit;
    }
}