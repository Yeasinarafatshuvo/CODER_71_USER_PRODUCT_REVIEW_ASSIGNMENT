<?php

namespace App\Controller;
use App\Model\ProductReview;

class ProductReviewController
{

    public function submitUserReview($request)
    {
        $data = json_decode($request, true);

        $product_review = new ProductReview();

        $response = $product_review->submitReview(
            $data['productId'],
            $data['userId'],
            $data['reviewText'],
        );

        header('Content-Type: application/json');
        echo json_encode($response); // Output the response directly instead of returning

        // Return response array for test purposes
        return $response;
    }
}
