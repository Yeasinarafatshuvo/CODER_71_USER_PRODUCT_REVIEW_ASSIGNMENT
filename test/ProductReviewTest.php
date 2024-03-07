<?php

use PHPUnit\Framework\TestCase;
use App\Controller\ProductReviewController;
use App\Model\ProductReview;

class ProductReviewTest extends TestCase
{
    //test case one
    public function testSubmitUserReviewOne()
    {
        $requestData = json_encode([
            'productId' => 1,
            'userId' => 1,
            'reviewText' => 'Test review text',
        ]);

        $product_review_controller = new ProductReviewController();

        $response = $product_review_controller->submitUserReview($requestData);

        // Assert the returned response
        $this->assertEquals(['success' => true, 'message' => 'Review submitted successfully'], $response);
       
    }

    //test case two
    public function testSubmitUserReviewTwo()
    {
        $requestData = json_encode([
            'productId' => 2,
            'userId' => 1,
            'reviewText' => 'Test review text',
        ]);

        $product_review_controller = new ProductReviewController();

        $response = $product_review_controller->submitUserReview($requestData);

        // Assert the returned response
        $this->assertEquals(['success' => true, 'message' => 'Review submitted successfully'], $response);
       
    }
}
