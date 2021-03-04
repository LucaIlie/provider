warning: LF will be replaced by CRLF in app/Http/Controllers/PostController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in app/Repositories/PostRepository.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in app/Services/PostService.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in routes/web.php.
The file will have its original line endings in your working directory
[1mdiff --git a/app/Http/Controllers/PostController.php b/app/Http/Controllers/PostController.php[m
[1mindex 4519692..c4d1edd 100644[m
[1m--- a/app/Http/Controllers/PostController.php[m
[1m+++ b/app/Http/Controllers/PostController.php[m
[36m@@ -23,7 +23,9 @@[m [mclass PostController extends Controller[m
      */[m
     public function index()[m
     {[m
[31m-[m
[32m+[m[32m        $post = $this->postService->getAll();[m
[32m+[m[32m        dd($post);[m
[32m+[m[32m        return view('posts.index',);[m
     }[m
 [m
     /**[m
[1mdiff --git a/app/Repositories/PostRepository.php b/app/Repositories/PostRepository.php[m
[1mindex 37ce838..957b890 100644[m
[1m--- a/app/Repositories/PostRepository.php[m
[1m+++ b/app/Repositories/PostRepository.php[m
[36m@@ -17,4 +17,7 @@[m [mclass PostRepository[m
     {[m
         $this->post = $post;[m
     }[m
[32m+[m[32m    public function getAll(){[m
[32m+[m[32m        return $this->post->get();[m
[32m+[m[32m    }[m
 }[m
[1mdiff --git a/app/Services/PostService.php b/app/Services/PostService.php[m
[1mindex de19150..cbb40e6 100644[m
[1m--- a/app/Services/PostService.php[m
[1m+++ b/app/Services/PostService.php[m
[36m@@ -16,4 +16,7 @@[m [mclass PostService[m
     {[m
         $this->postRepository = $postRepository;[m
     }[m
[32m+[m[32m    public function getAll(){[m
[32m+[m[32m        return $this->postRepository->getAll();[m
[32m+[m[32m    }[m
 }[m
[1mdiff --git a/routes/web.php b/routes/web.php[m
[1mindex 5bbc10b..67591f2 100644[m
[1m--- a/routes/web.php[m
[1m+++ b/routes/web.php[m
[36m@@ -2,5 +2,7 @@[m
 [m
 use Illuminate\Support\Facades\Route;[m
 use App\Http\Controllers\PageController;[m
[32m+[m[32muse App\Http\Controllers\PostController;[m
 [m
 Route::get('/',[PageController::class,'index']);[m
[32m+[m[32mRoute::resource('posts',PostController::class);[m
