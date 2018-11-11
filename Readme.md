# Schema_Matching

1.1. Datasets
We have two relational datasets with the following schemas:
imdb(Id, Name, Y earRange, ReleaseDate, Director, Creator, Cast,
Duration, RatingV alue, ContentRating, Genre, Url, Description),
rotten tomatoes(Id, Name, Y ear, Release Date, Director, Creator,
Actors, Cast, Language, Country, Duration, RatingV alue,
RatingCount, ReviewCount, Genre, FilmingLocations, Description).

1.2. Ground Truth
The set of actual correspondences is as follows:
G = {hImdb.Name, rt.Namei, hImdb.Y earRange, rt.Y eari,
hImdb.ReleaseDate, rt.”Release Date”i, hImdb.Director, rt.Directori,
hImdb.Creator, rt.Creatori, hImdb.Cast, rt.Casti,
hImdb.Duration, rt.Durationi, hImdb.RatingV alue, rt.RatingV aluei,
hImdb.Genre, rt.Genrei, hImdb.Description, rt.Descriptioni}.

2. Tasks
2.1. Label-Based Schema Matching
Here, we want to find the correspondences between the columns from the two datasets
with the help of only schema headers.

2.2. Instance-Based Schema Matching
Here, we want to find the correspondences between the columns from the two datasets
with the help of only data values.
