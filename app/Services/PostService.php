<?php


namespace App\Services;
use App\Repositories\PostRepository;
use Dotenv\Validator;

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
    public function savePostData($data){
        $valid = Validator::make($data,[
           'title' => 'required',
           'content' => 'required'
        ]);
        if ($valid->fails()){
            throw new \InvalidArgumentException ($valid->errors()->first());
        }
        $result = $this->postRepository-save($data);
        return $result;
    }
}
