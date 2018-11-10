# The script takes two pre-loaded schemas and compares them using a fixed relationship betweeen the fields of one
# schema and the other. This relationship (ground truth) is saved as a hash table to apply the comparing algorithms.
# The user is presented with the option of comparing such schemas using three different algorithms:
# 1. Exact match
# 2. Levenshtein distance
# 3. Jaccard distance

# Save both schemas in variables

$imdb = @('Id','Name','YearRange','ReleaseDate','Director','Creator','Cast','Duration','RatingValue','ContentRating','Genre','Url','Description')
$rotten_tomatoes= @('Id','Name','Year','Release Date','Director','Creator','Actors','Cast','Language','Country','Duration','RatingValue','RatingCount','ReviewCount','Genre','Filming Locations','Description')

# Loop through the first schema comparing values based on the ground truth, meaning, pre stablished relationships 

$hashes = @()

for($i = 1; $i -lt $imdb.Length; $i++)
{
    switch ( $i)
    {
       
        1 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} }
        2 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} }
        3 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} }
        4 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} }
        5 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} }
        6 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[$i])} }
        7 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[10];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[10])} }
        8 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[11];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[11])} }
        10 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[14];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[14])} }
        12 { $hash = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[16];Exact_Match=$imdb[$i].Equals($rotten_tomatoes[16])} }
    }
    $hashes+=$hash
}

# Display results in a readable way

$hashes