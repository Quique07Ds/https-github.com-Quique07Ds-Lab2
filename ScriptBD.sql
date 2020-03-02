CREATE TABLE VIDEO
(
	idVideo int PRIMARY KEY,
	titulo varchar(100),
	repro int,
	url varchar(100)
);

CREATE PROCEDURE SP_VIDEO_INSERT
@idVideo int,
@titulo varchar(100),
@repro int,
@url varchar(100)
as
begin
INSERT INTO VIDEO VALUES(@idVideo, @titulo, @repro, @url)
end

EXEC SP_VIDEO_INSERT 1, 'Video', 1, 'x';