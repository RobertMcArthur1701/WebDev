<html>
    <?php
        $dbuser = 'postgres';
        $dbpass = '';
        $host = 'localhost';
        $dbname = 'myWebDB';
        $dbh = new PDO("pgsql:host=$host;dbname=$dbname", $dbuser, $dbpass);    
        function myWebDBQuery() {
            $sql = 'SELECT * FROM example';
            foreach ($dbh->query($sql) as $row)
            {
                print $row['table_id'] . " ";
                print $row['name'] . "--";
                print $row['email'] . "<br>";
            }
        }
        myWebDBQuery();
    ?>
</html>