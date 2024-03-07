<?php

require '../vendor/autoload.php';

use App\Controller\ProductReviewController;


$user_request_data = file_get_contents('php://input');


$product_review_controller = new ProductReviewController();

$product_review_controller->submitUserReview($user_request_data);


