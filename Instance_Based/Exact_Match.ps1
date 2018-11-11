$imdb= Import-csv  "C:\Users\aestu\OneDrive\Documentos\TU Berlin\WS2018\Data Integration\imdb.csv"
$rt= Import-csv  "C:\Users\aestu\OneDrive\Documentos\TU Berlin\WS2018\Data Integration\rotten_tomatoes.csv"


$name_counter=0

foreach ($record in $imdb)
{
    foreach ($record2 in $rt)
    {
        if ($record.Name.Equals($record2.Name))
        {
            $name_counter+=1
        }
    }
}

$name_counter