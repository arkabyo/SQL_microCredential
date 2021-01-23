/**
1.)	Videos table. 
Create one table to keep track of the videos. 
This table should include a unique ID, 
the title of the video, 
the length in minutes, 
and the URL. Populate the table with at least three related videos from YouTube or other publicly available resources
**/
CREATE TABLE public.videos
(
    video_id integer NOT NULL,
    Video_Title character varying(255) COLLATE pg_catalog."default" NOT NULL,
    Video_Length integer NOT NULL,
	Video_URL character varying(255) NOT NULL,
    CONSTRAINT video_id_pk PRIMARY KEY (video_id)
)

INSERT INTO public.videos VALUES ('001', 
									 'SQL Basics for Beginners | Learn SQL | SQL Tutorial for Beginners | Edureka', 
									 '27',
									 'https://www.youtube.com/watch?v=zbMHLJ0dY4w');

INSERT INTO public.videos VALUES ('002', 
									 'The future we''re building -- and boring | Elon Musk', 
									 '41',
									 'https://www.youtube.com/watch?v=zIwLWfaAg-8');

INSERT INTO public.videos VALUES ('003', 
									 'What makes a good life? Lessons from the longest study on happiness | Robert Waldinger', 
									 '13',
									 'https://www.youtube.com/watch?v=8KkKuTCFvzI');

INSERT INTO public.videos VALUES ('004', 
									 '5 Life Lessons People Often Learn Too Late', 
									 '6',
									 'https://www.youtube.com/watch?v=KOXnT9virIA');

select * from videos

/**
2.)	Create and populate Reviewers table. 
Create a second table that provides at least two user reviews for each of at least two of the videos. 
These should be imaginary reviews that include columns for the user’s name (“Asher”, “John”, etc.), 
the rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”). 
There should be a column that links back to the ID column in the table of videos.
**/
CREATE TABLE public.Reviewers
(
    reviewer_id integer NOT NULL,
    First_Name character varying(50) COLLATE pg_catalog."default" NOT NULL,
	Last_Name character varying(50) COLLATE pg_catalog."default" NOT NULL,
	Rating character varying(5),
	Review character varying(50),
	video_id integer,
    CONSTRAINT pk_reviewer_id PRIMARY KEY(reviewer_id),
	CONSTRAINT fk_video_is FOREIGN KEY(video_id) REFERENCES videos(video_id)
)

INSERT INTO public.Reviewers VALUES ('1', 'John', 'Smith', '5', 'Amazing Video', '3'),
									 ('2', 'Jane', 'Doe', '4', 'I love it','3'),
									 ('3', 'Anthony', 'Fisher', '2', 'Not Sure if I like it','4'),
									 ('4', 'Maria', 'Maxhari', '5', 'This is really helpful','4'),
									 ('5', 'Ryan', 'Farmer', '3', 'This is okay video','4'),
									 ('6', 'Tom', 'Stein', '5', 'Wow! I loved it','1'),
									 ('7', 'Louis', 'Sapia', '2', '', '2');
select * from Reviewers

--3. Report on Video Reviews. Write a JOIN statement that shows information from both tables

SELECT V.VIDEO_TITLE, V.VIDEO_LENGTH, V.VIDEO_URL, R.RATING, R.REVIEW, R.FIRST_NAME, R.LAST_NAME
FROM VIDEOS V
JOIN REVIEWERS R
ON V.VIDEO_ID = R.VIDEO_ID
ORDER BY R.RATING DESC  