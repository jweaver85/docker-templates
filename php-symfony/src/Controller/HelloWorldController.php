<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class HelloWorldController extends AbstractController
{
    /**
     * @Route("/hello-world/", name="hello_world")
     */
    public function get()
    {
        return new Response("Hello World! (phpsymfonysvc)");
    }
}
