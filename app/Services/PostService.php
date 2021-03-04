<?php


namespace App\Services;
use App\Repositories\PostRepository;

class PostService
{
    protected $postRepository;

    /**
     * PostService constructor.
     * @param $postRepository
     */
    public function __construct(PostRepository $postRepository)
    {
        $this->postRepository = $postRepository;
    }
    public function getAll(){
        return $this->postRepository->getAll();
    }
}
