SELECT T.Name, Mt.Name, G.Name 
FROM Track as T
JOIN MediaType as Mt 
ON T.MediaTypeId = Mt.MediaTypeId
JOIN Genre as G
ON T.GenreId = G.GenreId