<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\Exception\NotEncodableValueException;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;

class ApiProductController extends AbstractController
{
    /**
     * @Route("/api/product", name="api_product_index", methods={"GET"})
     */
    public function index(ProductRepository $productRepository , SerializerInterface $serializer)
    {
        return $this->json($productRepository->findAll(), 200, [], ['groups' => 'product:read']);
    }

    /**
     * @Route("/api/product/create", name="api_product_create", methods={"POST"})
     */
    public function create(Request $request, SerializerInterface $serializer, EntityManagerInterface $em, SluggerInterface $slugger, ValidatorInterface $validator)
    {
        $jsonRecu = $request->getContent();

        try {
            $product = $serializer->deserialize($jsonRecu, Product::class, 'json');

            $errors = $validator->validate($product);
            if (count($errors) > 0){
                return $this->json($errors, 400);
            }
            $product->setSlug(strtolower($slugger->slug($product->getName())));

            $em->persist($product);
            $em->flush();

            return $this->json($product, 201, [], ['groups' => 'product:read']);
        } catch (NotEncodableValueException $e) {
            return $this->json([
                'status' => 400,
                'message' => $e->getMessage()
            ], 400);
        }

    }

}
