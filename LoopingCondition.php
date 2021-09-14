<!DOCTYPE html>
<html>
<body>

<?php
for ($i=1; $i <= 50; $i++) {
    if ($bagi = $i % 3 == 0) {
        echo "Foo <br>";
    }
    else if ($bagi = $i % 5 == 0) {
        echo "Bar <br>";
    }
    else if ($bagi = $i % 3 == 0 && $i = $i % 5 == 0) {
        echo "FooBar <br>";
    }
    else {
        echo "$i <br>";
    }
}

?>
 
</body>
</html>
