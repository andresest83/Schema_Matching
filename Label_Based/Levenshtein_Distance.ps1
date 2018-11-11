# The script takes two pre-loaded schemas and compares them using a fixed relationship betweeen the fields of one
# schema and the other. This relationship (ground truth) is saved as a regular array and the results as a PSObject.
# The comparison algorithm is the Levenshtein distance 

$imdb = @('Id','Name','YearRange','ReleaseDate','Director','Creator','Cast','Duration','RatingValue','ContentRating','Genre','Url','Description')
$rotten_tomatoes= @('Id','Name','Year','Release Date','Director','Creator','Actors','Cast','Language','Country','Duration','RatingValue','RatingCount','ReviewCount','Genre','Filming Locations','Description')

function Measure-StringDistance {
    <#
        .SYNOPSIS
            Compute the distance between two strings using the Levenshtein distance formula.
        
        .DESCRIPTION
            Compute the distance between two strings using the Levenshtein distance formula.
        .PARAMETER Source
            The source string.
        .PARAMETER Compare
            The comparison string.
        .EXAMPLE
            PS C:\> Measure-StringDistance -Source "Michael" -Compare "Micheal"
            2
            There are two characters that are different, "a" and "e".
        .EXAMPLE
            PS C:\> Measure-StringDistance -Source "Michael" -Compare "Michal"
            1
            There is one character that is different, "e".
        .NOTES
            Author:
            Michael West
    #>

    [CmdletBinding(SupportsShouldProcess=$true)]
    [OutputType([int])]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Source = "",
        [string]$Compare = ""
    )
    $n = $Source.Length;
    $m = $Compare.Length;
    $d = New-Object 'int[,]' $($n+1),$($m+1)
        
    if ($n -eq 0){
      return $m
	}
    if ($m -eq 0){
	    return $n
	}

	for ([int]$i = 0; $i -le $n; $i++){
        $d[$i, 0] = $i
    }
    for ([int]$j = 0; $j -le $m; $j++){
        $d[0, $j] = $j
    }

	for ([int]$i = 1; $i -le $n; $i++){
	    for ([int]$j = 1; $j -le $m; $j++){
            if ($Compare[$($j - 1)] -eq $Source[$($i - 1)]){
                $cost = 0
            }
            else{
                $cost = 1
            }
		    $d[$i, $j] = [Math]::Min([Math]::Min($($d[$($i-1), $j] + 1), $($d[$i, $($j-1)] + 1)),$($d[$($i-1), $($j-1)]+$cost))
	    }
	}
	    
    return $d[$n, $m]
}

# Loop through the first schema comparing values based on the ground truth, meaning, pre stablished relationships 

$hashes2 = @()

for($i = 1; $i -lt $imdb.Length; $i++)
{
      
        if($i -eq 1) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[$i]} 
        $hashes2+=$hash1}

        if($i -eq 2) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[$i]} 
        $hashes2+=$hash1}

        if($i -eq 3) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[$i]} 
        $hashes2+=$hash1}

        if($i -eq 4) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[$i]} 
        $hashes2+=$hash1} 

        if($i -eq 5) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[$i];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[$i]} 
        $hashes2+=$hash1} 

        if($i -eq 6) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[7];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[7]} 
        $hashes2+=$hash1}

        if($i -eq 7 ) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[10];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[10]} 
        $hashes2+=$hash1}

        if($i -eq 8 ) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[11];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[11]} 
        $hashes2+=$hash1}

        if($i -eq 10 ) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[14];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[14]} 
        $hashes2+=$hash1}

        if($i -eq 12 ) { 
        $hash1 = New-Object PSObject -property @{IMDB_Database_Schema=$imdb[$i];RT_Database_Schema=$rotten_tomatoes[16];Levenshtein_Distance=Measure-StringDistance -Source $imdb[$i] -Compare $rotten_tomatoes[16]} 
        $hashes2+=$hash1}
}

# Display results in a readable way

$hashes2