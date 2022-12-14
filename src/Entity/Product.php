<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\ProductRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=ProductRepository::class)
 * @ApiResource()
 */
class Product
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     * @Groups("product:read")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("product:read")
     * @Assert\NotBlank
     * @Assert\Length(min=3)
     */
    private $name;

    /**
     * @ORM\Column(type="integer")
     * @Groups("product:read")
     * @Assert\NotBlank
     * @Assert\Type("int")
     */
    private $price;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("product:read")
     */
    private $slug;

    /**
     * @ORM\ManyToOne(targetEntity=Category::class, inversedBy="products")
     * @Groups("product:read")
     */
    private $category;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("product:read")
     * @Assert\NotBlank
     * @Assert\Length(min=3)
     */
    private $mainPicture;

    /**
     * @ORM\Column(type="text")
     * @Groups("product:read")
     * @Assert\NotBlank
     * @Assert\Length(min=3)
     */
    private $shortDescription;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function getMainPicture(): ?string
    {
        return $this->mainPicture;
    }

    public function setMainPicture(string $mainPicture): self
    {
        $this->mainPicture = $mainPicture;

        return $this;
    }

    public function getShortDescription(): ?string
    {
        return $this->shortDescription;
    }

    public function setShortDescription(string $shortDescription): self
    {
        $this->shortDescription = $shortDescription;

        return $this;
    }
}
