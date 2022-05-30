<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: sign-in.php");
    exit;
}
?>

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>EXAMKEY</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>

    <style>
        #footer {
            position: fixed;
            height: 50px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            margin-bottom: 0px;
        }

        body {
                margin-bottom:50px;
            }
    </style>

<body>

    <!-- Navbar -->
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
                <div class="navbar-header">  
              <a class="navbar-brand" href="laolu.html">EXAMKEY</a>
            </div>
            <div float="right" text="white">            
                <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
                <a href="sign-out.php" class="btn btn-danger ml-3">Sign Out of Your Account</a>
            </div>
          </div>
        </nav> 
    <!-- Navbar -->
   
<div class="container">  
<h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome!</h1>

<?php
// Include config file
require "config.php";
    //Our custom function.
    function generatePIN($digits = 4){
        $i = 0; //counter
        $pin = ""; //our default pin is blank.
        while($i < $digits){
            //generate a random number between 0 and 9.
            $pin .= mt_rand(0, 9);
            $i++;
        }
        return $pin;
    }

    //If I want a 4-digit PIN code.
    // $pin = generatePIN();
    // echo $pin, '<br>';

    //If I want a 6-digit PIN code.
    $pin = generatePIN(6);
    echo $pin;
    
    // Check connection
    if($mysqli === false){
        die("ERROR: Could not connect. " . $mysqli->connect_error);
    }
    
    // Attempt insert query execution
    $sql = "INSERT INTO pin (pin) VALUES ('$pin')";
    if($mysqli->query($sql) === true){
        echo "<p>Pin inserted into Database successfully.</p>";
    } else{
        echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
    }
    
    // Close connection
    $mysqli->close();

    ?>           
</div>




<!-- Footer -->
    <!-- <div class=""> -->
        <footer id="footer" class="bg-dark text-center text-white">
            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2022 Copyright:
            <a class="text-white" href="#">Examkey</a>
            </div>
            <!-- Copyright -->
        </footer>

    <!-- </div> -->
<!-- End of Footer -->


    </body>
 </html>

