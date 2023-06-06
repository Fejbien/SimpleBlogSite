<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Failed to connect: " . $conn->connect_error);
}

header('Content-Type: application/json');

if ($_SERVER["REQUEST_METHOD"] === "GET") {
    if ($_GET["endpoint"] === "overview") {
        $sql = "SELECT `id`, `title`, LEFT(`text`, 40) AS `shortText` FROM `blogPosts` WHERE 1;";
        $res = $conn->query($sql);

        $elements = array();

        if ($res->num_rows > 0) {
            while ($row = $res->fetch_assoc()) {
                $elements[] = $row;
            }
        }

        echo json_encode($elements);
    } elseif ($_GET["endpoint"] === "blogPost") {
        $sql = "SELECT `title`, `text` FROM `blogposts` WHERE `id` = " . $_GET["id"];
        $res = $conn->query($sql);

        $elements = array();

        if ($res->num_rows > 0) {
            echo json_encode($res->fetch_assoc());
        }

        echo json_encode(null);
    }
} elseif ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["endpoint"] === "add") {

    }
}

$conn->close();