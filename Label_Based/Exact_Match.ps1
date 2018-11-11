# The script takes two pre-loaded schemas and compares them using a fixed relationship betweeen the fields of one
# schema and the other. This relationship (ground truth) is saved as a regular array and the results as a PSObject.
# The comparison algorithm is an exact match, which returns true if the strings are exactly equal and false if they're not.

$imdb = @('Id','Name','YearRange','ReleaseDate','Director','Creator','Cast','Duration','RatingValue','ContentRating','Genre','Url','Description')
$rotten_tomatoes= @('Id','Name','Year','Release Date','Director','Creator','Actors','Cast','Language','Country','Duration','RatingValue','RatingCount','ReviewCount','Genre','Filming Locations','Description')

# Loop through the first schema comparing values based on the ground truth, meaning, pre stablished relationships 

$hashes = @()

for($i = 1; $i -lt $imdb.Length; $i++)
{
      
        if($i -eq 1) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} 
        $hashes+=$hash}

        if($i -eq 2) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} 
        $hashes+=$hash}

        if($i -eq 3) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} 
        $hashes+=$hash}

        if($i -eq 4) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} 
        $hashes+=$hash} 

        if($i -eq 5) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} 
        $hashes+=$hash} 

        if($i -eq 6) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[7];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[7])} 
        $hashes+=$hash}

        if($i -eq 7 ) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[10];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[10])} 
        $hashes+=$hash}

        if($i -eq 8 ) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[11];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[11])} 
        $hashes+=$hash}

        if($i -eq 10 ) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[14];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[14])} 
        $hashes+=$hash}

        if($i -eq 12 ) { 
        $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[16];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[16])} 
        $hashes+=$hash}
}


# Display results in a readable way

$hashes

