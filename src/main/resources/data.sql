INSERT INTO area (name) VALUES ('game') where not exists(select * from area where name = 'game');
INSERT INTO area (name) VALUES ('design') where not exists(select * from area where name = 'design');
INSERT INTO area (name) VALUES ('digital') where not exists(select * from area where name = 'digital');
INSERT INTO area (name) VALUES ('visual') where not exists(select * from area where name = 'visual');
INSERT INTO area (name) VALUES ('data') where not exists(select * from area where name = 'data');