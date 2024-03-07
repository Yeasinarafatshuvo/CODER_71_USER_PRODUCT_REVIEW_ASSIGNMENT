<?php

namespace App\Model;

use PDOException;
use App\Model\Database;

class ProductReview
{
    private $conn;

    public function __construct()
    {
        $database = new Database();
        $this->conn = $database->connect();
    }

    public function submitReview($productId, $userId, $reviewText)
    {
        //validate all input data
        if(empty($productId) || empty($userId) || empty($reviewText))
        {
            return [
                'success' => false,
                'message' => 'All Fields are required'
            ];
        }

        //validate numeric for product id and user id
        if(!is_numeric($productId) || !is_numeric($userId))
        {
            return [
                'success' => false,
                'message' => 'Invalid product ID or user ID'
            ];
        }

        //start sql query for insert user review data
        try {

            $insert_query_statement = $this->conn->prepare("INSERT INTO user_reviews (product_id, user_id, review_text) VALUES (?, ?, ?)");
            $insert_query_statement->execute([$productId, $userId, $reviewText]);
            
            return [
                'success' => true,
                'message' => 'Review submitted successfully'
            ];

            
        } catch (PDOException $e) {

            return [
                'success' => false,
                'message' => 'Review submission failed: ' .$e->getMessage()
            ];
        }
    }
}