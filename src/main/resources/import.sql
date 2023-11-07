INSERT INTO "1_tb_user" (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO "1_tb_user" (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO "1_tb_user" (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO "2_tb_role" (authority) VALUES ('ROLE_STUDENT');
INSERT INTO "2_tb_role" (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO "2_tb_role" (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1); -- ALEX STUDENT only
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1); -- BOB STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2); -- BOB INSTRUCTOR
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1); -- MARIA STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2); -- MARIA INSTRUCTOR
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3); -- MARIA ADMIN

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2023-06-1T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-06-1T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-06-1T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-06-1T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 'LESSON_ONLY', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha CSS', 'Trilha Avançado para Posicionamento', 2, 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 'LESSON_TASK', 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, section_id) VALUES ('Módulo ou Capitulo 1', 'Iremos começar nesse modulo', 1, 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, section_id) VALUES ('Módulo ou Capitulo 2', 'Iremos continuar nesse modulo', 2, 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, section_id) VALUES ('Módulo ou Capitulo 3', 'Iremos finalizar nesse modulo, num total de 3', 3, 'https://cdn.pixabay.com/photo/2020/05/05/12/12/coffee-5132832_1280.jpg', 1, 2);

-- Oferta 1 com Aluno (User) 1
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-06-1T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-06-1T13:00:00Z', null, true, false);
