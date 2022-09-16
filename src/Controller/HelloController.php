<?php

namespace App\Controller;

use App\Taxes\Calculator;
use App\Taxes\Detector;
use Cocur\Slugify\Slugify;
use Psr\Log\LoggerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Twig\Environment;

class HelloController extends AbstractController
{
    public $twig;

    public function __construct(Environment $twig)
    {
        $this->twig = $twig;
    }

    /**
     * @Route("/hello/{firstname?world}", name="app_hello")
     * @param string $firstname
     * @return JsonResponse
     */
    public function index($firstname = "world!"): Response
    {
        return $this->twig->render('hello.html.twig', [
            'prenom' => $firstname,
            'formateur1' => [
                'nom' => 'Labidi',
                'prenom' => 'Issam eddine',
                'age' => '27'
            ],
            'formateur2' => [
                'nom' => 'Chamla',
                'prenom' => 'Lior',
                'age' => '33'
            ]
        ]);
    }

    /**
     * @Route("/exemple", name="exemple")
     */
    public function exemple()
    {
        return $this->render('exemple.html.twig', [
            'age' => 33
        ]);
    }

}
