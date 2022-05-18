<html>
    <?php phpinfo();?>
    <?php
        $dbuser = 'postgres';
        $dbpass = '';
        $host = 'localhost';
        $dbname = 'myWebDB';
        $dbh = new PDO("pgsql:host=$host;dbname=$dbname", $dbuser, $dbpass);    
        $sql = 'SELECT * FROM example';
        foreach ($dbh->query($sql) as $row)
        {
            print $row['table_id'] . " ";
            print $row['name'] . "--";
            print $row['email'] . "<br>";
        }
        
    ?>
</html>