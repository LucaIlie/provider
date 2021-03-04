<?php


namespace App\Repositories;

use App\Models\Post;

class PostRepository
{
    protected $post;

    /**
     * PostRepository constructor.
     * @param $post
     */
    public function __construct(Post $post)
    {
        $this->post = $post;
    }
    public function getAll(){
        return $this->post->get();
    }
}
