<?php
$files = scandir('./');
foreach ($files as $file)
{
	$ext = pathinfo($file, PATHINFO_EXTENSION);

	if($ext!="cvc")
	   continue;

	$cvcfile = file_get_contents($file);
	$pathfile = split(";", $cvcfile);

	$link = mysql_connect('localhost', 'root', 'klee');
	if (!$link) {
		die('Could not connect: ' . mysql_error());
	}

	mysql_select_db('klee');

	foreach ($pathfile as $path)
	{
		$asserts = split("ASSERT", $path);

		if(count($asserts)-1)
		{

			mysql_query("select id from query_id where query = \"".$asserts[1]."\"");

			if(mysql_affected_rows()==0)
			{
				mysql_query("insert into query_id (query) values (\"".$asserts[1]."\")");
				printf("Records inserted: %d\n", mysql_affected_rows());
			}
		}
	}

}

?>
