<?php


namespace App\Taxes;


use Psr\Log\LoggerInterface;

class Calculator
{

    protected $logger;
    protected $tva;

    public function __construct(LoggerInterface $logger, float $tva)
    {
        $this->logger = $logger;
    }

    public function calcul(float $price): float
    {
        $this->logger->info("Un calul a lieu : $price");
        return $price *(20 / 100);
    }
}