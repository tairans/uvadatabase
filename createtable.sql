
CREATE TABLE movies (
	id VARCHAR(10) NOT NULL DEFAULT '',
	title VARCHAR(100) NOT NULL  DEFAULT '',
	year int NOT NULL,
    director VARCHAR(100) NOT NULL DEFAULT '',
    primary key(id),
    FULLTEXT (title)
   );

CREATE TABLE stars(
	id VARCHAR(10) NOT NULL DEFAULT '',
	name VARCHAR(100) NOT NULL DEFAULT '',
	birthyear int,
	primary key(id)
);

CREATE TABLE stars_in_movies(
	starId varchar(10) NOT NULL DEFAULT '',
	movieId varchar(10) NOT NULL DEFAULT '',
	FOREIGN KEY (movieId) REFERENCES movies(id),
	FOREIGN KEY (starId) REFERENCES stars(id)

);

CREATE TABLE genres(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(32) NOT NULL DEFAULT '',
	primary key(id)
	
);

CREATE TABLE genres_in_movies(
	genreId int NOT NULL,
	movieId varchar(10) NOT NULL DEFAULT '',
	FOREIGN KEY (genreId) REFERENCES genres(id),
	FOREIGN KEY (movieId) REFERENCES movies(id)
	
);

CREATE TABLE creditcards(
	id varchar(20)  NOT NULL DEFAULT '',
	firstName varchar(50)  NOT NULL DEFAULT '',
	lastName varchar(50) NOT NULL  DEFAULT '',
	expiration date NOT NULL,
	primary key(id)
);

CREATE TABLE customers(
	id int NOT NULL AUTO_INCREMENT,
	firstName varchar(50) NOT NULL  DEFAULT '',
	lastName varchar(50) NOT NULL DEFAULT '', 
	ccId varchar(20)  NOT NULL DEFAULT '',
	address varchar(200)  NOT NULL DEFAULT '',
	email varchar(50)  NOT NULL DEFAULT '',
	password varchar(20) NOT NULL DEFAULT '',
	primary key(id),
	FOREIGN KEY (ccId) REFERENCES creditcards(id)
	
);


CREATE TABLE sales(
	id int AUTO_INCREMENT  NOT NULL,
	customerId int NOT NULL,
	movieId varchar(10) NOT NULL DEFAULT '',
	saleDate date NOT NULL,
	primary key(id),
	FOREIGN KEY (customerId) REFERENCES customers(id),
	FOREIGN KEY (movieId) REFERENCES movies(id)
	
	
);





CREATE TABLE ratings(
	movieId varchar(10) NOT NULL DEFAULT '',
	rating float  NOT NULL,
	numVotes int NOT NULL,
	FOREIGN KEY (movieId) REFERENCES movies(id)
	
);






