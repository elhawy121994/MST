<?php

namespace App\Repository;

use App\Database\Connection;
use App\Model\Invoice;
use PDO;
use PDOException;
use Symfony\Component\Dotenv\Dotenv;

abstract class BaseRepository
{
    protected PDO $connection;
    protected string $table;

    public function __construct()
    {
        $dotenv = new Dotenv();
        $dotenv->load(dirname(dirname(__DIR__)) . '/.env');

        $this->connection = Connection::getInstance()->getPdo();
    }

    public function insertData($data): ?bool
    {
        try {
            $columns = implode(', ', array_keys($data));
            $values = ':' . implode(', :', array_keys($data));

            $sql = "INSERT INTO $this->table ($columns) VALUES ($values)";

            // Prepare and execute the statement
            $stmt = $this->connection->prepare($sql);
            $stmt->execute($data);

            return true;

        } catch (PDOException $e) {
            die("Error: " . $e->getMessage());
        }
    }

    public function findAll(): array
    {
        return $this->connection
            ->query("SELECT * FROM {$this->table}")
            ->fetchAll(PDO::FETCH_CLASS, Invoice::class);
    }
}
