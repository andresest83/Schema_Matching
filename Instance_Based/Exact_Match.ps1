$imdb= Import-csv  "C:\Users\aestu\OneDrive\Documentos\TU Berlin\WS2018\Data Integration\imdb.csv"
$rt= Import-csv  "C:\Users\aestu\OneDrive\Documentos\TU Berlin\WS2018\Data Integration\rotten_tomatoes.csv"

# Comparing IMDB Name Column AND RT Name Column

$name_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Name)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Name.Equals($rt[$j].Name) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Name))))
                {
                    $name_counter+=1   
                }
            }
    }
}


# Comparing IMDB Year Column AND RT YearRange Column

$year_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].YearRange)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].YearRange.Equals($rt[$j].Year) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Year))))
                {
                    $year_counter+=1   
                }
            }
    }
}

# Comparing IMDB ReleaseDate Column AND RT Release Date Column

$releasedate_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].ReleaseDate)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].ReleaseDate.Equals($rt[$j]."Release Date") -AND (-not ([string]::IsNullOrEmpty($rt[$j]."Release Date"))))
                {
                    $releasedate_counter+=1   
                }
            }
    }
}

# Comparing IMDB Director Column AND RT Director Column

$director_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Director)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Director.Equals($rt[$j].Director) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Director))))
                {
                    $director_counter+=1   
                }
            }
    }
}

# Comparing IMDB Creator Column AND RT Creator Column

$creator_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Creator)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Creator.Equals($rt[$j].Creator) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Creator))))
                {
                    $creator_counter+=1   
                }
            }
    }
}

# Comparing IMDB Cast Column AND RT Cast Column

$cast_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Cast)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Cast.Equals($rt[$j].Cast) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Cast))))
                {
                    $cast_counter+=1   
                }
            }
    }
}

# Comparing IMDB Duration Column and RT Duration Column

$duration_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Duration)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Duration.Equals($rt[$j].Duration) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Duration))))
                {
                    $duration_counter+=1   
                }
            }
    }
}

# Comparing IMDB RatingValue Column and RT RatingValue Column

$ratingvalue_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].RatingValue)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].RatingValue.Equals($rt[$j].RatingValue) -AND (-not ([string]::IsNullOrEmpty($rt[$j].RatingValue))))
                {
                    $ratingvalue_counter+=1   
                }
            }
    }
}

# Comparing IMDB Genre Column and RT Genre Column

$genre_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Genre)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Genre.Equals($rt[$j].Genre) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Genre))))
                {
                    $genre_counter+=1   
                }
            }
    }
}

# Comparing IMDB Description Column and RT Description Column

$description_counter=0

for($i = 0; $i -lt $imdb.Length; $i++)
{
    if(-not ([string]::IsNullOrEmpty($imdb[$i].Description)))
    {              
            for($j = 0; $j -lt $rt.Length; $j++)
            {
        
                if ($imdb[$i].Description.Equals($rt[$j].Description) -AND (-not ([string]::IsNullOrEmpty($rt[$j].Description))))
                {
                    $description_counter+=1   
                }
            }
    }
}

"Number of Coincidences for strings from IMDB in Rotten Tomatoes"
""
"Name         = "+$name_counter
"Year         = "+$year_counter
"Release Date = "+$releasedate_counter
"Director     = "+$director_counter
"Creator      = "+$creator_counter
"Cast         = "+$cast_counter
"Duration     = "+$duration_counter
"Rating       = "+$ratingvalue_counter
"Genre        = "+$genre_counter
"Description  = "+$description_counter




