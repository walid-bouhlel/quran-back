<?php
// Define the base directory where your MP3 files are stored.


// Get the requested file name from the URL.
	if (isset($_GET['surah'])) {
	$baseDirectory = 'data/CORAN/';
    $requestedFileName = $_GET['surah'];
    // Sanitize the input to prevent directory traversal attacks.
    $requestedFileName = basename($requestedFileName);

    // Use glob to search for the file within subdirectories.
    $files = glob($baseDirectory . '/**/' . $requestedFileName, GLOB_BRACE);

    if (!empty($files) && pathinfo($files[0], PATHINFO_EXTENSION) === 'mp3') {
        // Set appropriate headers for streaming.
        header('Content-Type: audio/mpeg');
        header('Content-Length: ' . filesize($files[0]));
        header('Content-Disposition: inline; filename="' . $requestedFileName . '"');

        // Stream the file.
        readfile($files[0]);
        exit;
    } else {
        // File not found or not an MP3.
        header("HTTP/1.0 404 Not Found");
        //echo "File not found";
    }
	}
	
	else if (isset($_GET['logo'])) {
		$baseDirectory = 'data/SURAHLOGO/';
	$requestedFileName = $_GET['logo'];
    // Sanitize the input to prevent directory traversal attacks.
    $requestedFileName = basename($requestedFileName);

    // Construct the full path to the requested file.
    $filePath = $baseDirectory . '/' . $requestedFileName;

    // Check if the file exists and is an MP3 file.
    if (file_exists($filePath) && pathinfo($filePath, PATHINFO_EXTENSION) === 'png') {
        // Set appropriate headers for streaming.
        header('Content-Type: image/png');
        header('Content-Length: ' . filesize($filePath));
        header('Content-Disposition: inline; filename="' . $requestedFileName . '"');

        // Stream the file.
        readfile($filePath);
        exit;
    } else {
        // File not found or not an MP3.
        header("HTTP/1.0 404 Not Found");
        //echo "File not found";
    }	
		
		
	}
	else if (isset($_GET['logosvg'])) {
		$baseDirectory = 'data/SURAHLOGO/';
	$requestedFileName = $_GET['logosvg'];
    // Sanitize the input to prevent directory traversal attacks.
    $requestedFileName = basename($requestedFileName);

    // Construct the full path to the requested file.
    $filePath = $baseDirectory . '/' . $requestedFileName;

    // Check if the file exists and is an MP3 file.
    if (file_exists($filePath) && pathinfo($filePath, PATHINFO_EXTENSION) === 'svg') {
        // Set appropriate headers for streaming.
        header('Content-Type: image/svg+xml');
        header('Content-Length: ' . filesize($filePath));
        header('Content-Disposition: inline; filename="' . $requestedFileName . '"');

        // Stream the file.
        readfile($filePath);
        exit;
    } else {
        // File not found or not an MP3.
        header("HTTP/1.0 404 Not Found");
        //echo "File not found";
    }	
		
		
	}
	


?>
