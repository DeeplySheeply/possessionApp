<?php

include "includes/dbh.php";

?>

<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <title>Possessions</title>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <link href="content\css\styles.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <script>
        $(document).ready(function() {            
            
            $(".possBtn").click(function() {
                let possCount = 0;
                var dataId = $(this).data("id");
                $.post("increment.php", {
                    possNewCount: possCount,
                    id: dataId                
                });
            });            
        });
        
    </script>

</head>

<body>
    <div  class="container">
        <div class="col-xs-6">
            <div id="possDiv">
                <!-- PHP Code for incrementing -->
                <?php

                $id = 0;
                $sql = "SELECT * FROM matchdb";
                $result = mysqli_query($connection, $sql);

                if (!$result) {
                    die('Increment failed');
                }
                

               while($row = mysqli_fetch_assoc($result)){
                $id = $row['id'];
                echo "<h1>";
                echo "<span class='badge badge-dark custom'>";
                echo  $row['player'];
                echo "</span>";
                echo  "<input data-id=".$id." type='submit' name='submit2' value='Possession' class='btn btn-warning btn-lg possBtn'>";
                echo "</h1>";
               }

                ?>
            </div>
        </div>
    </div>
</body>

</html>