-- Add vector embedding data to record content
CREATE article:1 SET embedding = [1, 2, 3, 4];
CREATE article:2 SET embedding = [4, 5, 6, 7];
CREATE article:3 SET embedding = [8, 9, 10, 11];

-- Define a vector embedding index for a field on the article table
DEFINE INDEX mt_obj ON vec FIELDS embedding MTREE DIMENSION 4 DIST EUCLIDEAN;
