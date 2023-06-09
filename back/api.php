<?php

use Firebase\JWT;

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Failed to connect: " . $conn->connect_error);
}

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Authorization, Content-Type');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');

if ($_SERVER["REQUEST_METHOD"] === "GET") {
    if (isset($_GET["endpoint"])) {
        if ($_GET["endpoint"] === "overview") {
            $sql = "SELECT bp.id AS 'id', bp.title AS 'title', LEFT(bp.text, 120) AS 'shortText', bp.publishDate AS 'published', u.name as 'author' FROM `blogpost` AS bp JOIN USER AS u ON u.id = bp.author_id WHERE 1;";
            $res = $conn->query($sql);

            $elements = array();

            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {
                    $elements[] = $row;
                }
            }

            echo json_encode($elements);
        } elseif ($_GET["endpoint"] === "blogpost") {
            if (isset($_GET["id"])) {
                $sql = "SELECT bp.id AS 'id', bp.title AS 'title', bp.text AS 'text', bp.publishDate AS 'published', u.name as 'author' FROM `blogpost` AS bp JOIN USER AS u ON u.id = bp.author_id WHERE bp.id = " . $_GET["id"];
                $res = $conn->query($sql);

                if ($res->num_rows > 0) {
                    echo json_encode($res->fetch_assoc());
                } else {
                    echo json_encode(null);
                }
            }
        }
    }
} elseif ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST["endpoint"])) {
        if ($_POST["endpoint"] === "login") {
        }

        if ($_POST["endpoint"] === "register") {
        }

        if ($_POST["endpoint"] === "add") {
        }

        if ($_POST["endpoint"] === "edit") {
        }
    }
}

$conn->close();
