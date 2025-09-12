CREATE TABLE POSTS(
    id INT NOT NULL IDENTITY(1, 1),
    title VARCHAR(150) NOT NULL,
    author VARCHAR(75) NOT NULL,
	body VARCHAR(800) NOT NULL,
	image_path VARCHAR(100) NULL,
	timestamp DATETIME NOT NULL DEFAULT(GETDATE()),
	user_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO dbo.posts (title, author, body, user_id)
VALUES (
    'Unaccustomed Earth',
    'Jhumpa Lahiri',
    'Published in 2008, it is divided into two parts. The first part consists of four standalone stories, while the second part features a trilogy centered around two characters, Hema and Kaushik. The stories primarily focus on Bengali-American characters navigating their lives in the United States, reflecting on their cultural heritage and personal relationships. It explores the complexities of the Indian immigrant experience, focusing on themes of identity, family, and cultural dislocation.',
    1
);