INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1); -- ALEX STUDENT only
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1); -- BOB STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2); -- BOB INSTRUCTOR
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1); -- MARIA STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2); -- MARIA INSTRUCTOR
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3); -- MARIA ADMIN

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg');