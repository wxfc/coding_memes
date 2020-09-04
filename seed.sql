INSERT INTO users (name, email, password_digest) VALUES ('wxfc', 'wcolaco@icloud.com', 'pudding');

INSERT INTO memes (title, meme, user_id) VALUES ('tehc', 'https://i.redd.it/2ialma4xoiv41.jpg', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('dr programmer', 'https://i.redd.it/jd25yqv8xsf31.jpg', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('thanks dad', 'https://i.redd.it/2ry044pdv2141.jpg', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('*shocked picture face*', 'https://i.redd.it/ig5u8ke5qo421.png', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('at least their honest', 'https://i.redd.it/qsbkmaqnplm11.jpg', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('thanks blazemonger66543', 'https://i.redd.it/5vvpn6tlghw41.jpg', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('python goes brrrrr', 'https://i.redd.it/97p4ob5aebj51.png', 3);

INSERT INTO memes (title, meme, user_id) VALUES ('ya wizard arry', 'https://external-preview.redd.it/1l05jfSHZdO2J38-zSuTuDFG9QZyUGN6R-PlyjyExFc.jpg?auto=webp&s=4e94d85b2d27a50ea74ab785e4e93c260345a78e', 3);

INSERT INTO users (name, email, password_digest) VALUES ('otheraccount', 'other@account.com', 'pudding');

INSERT INTO memes (title, meme, user_id) VALUES ('shutup einstein, im not crazy', 'https://i.redd.it/ytitd72wz2b11.jpg', 4);

INSERT INTO memes (title, meme, user_id) VALUES ('i am god', 'https://i.redd.it/31i8o3bvl3h51.png', 4);

INSERT INTO memes (title, meme, user_id) VALUES ('i am god', 'https://i.redd.it/31i8o3bvl3h51.png', 4);

INSERT INTO memes (title, meme, user_id) VALUES (':)', 'https://i.redd.it/acc8ej2n8qh51.jpg', 4);

INSERT INTO memes (title, meme, user_id) VALUES ('its only dumb if it doesnt work', 'https://i.redd.it/08sz26e91k841.jpg', 4);

ALTER TABLE memes
ADD COLUMN category TEXT;

UPDATE memes
SET category = 'automation'
WHERE id = 3;

UPDATE memes
SET category = 'google'
WHERE id = 4;

UPDATE memes
SET category = 'jobs'
WHERE id = 5;

UPDATE memes
SET category = 'css'
WHERE id = 6;

UPDATE memes
SET category = 'coder logic'
WHERE id = 7;

UPDATE memes
SET category = 'student'
WHERE id = 8;

UPDATE memes
SET category = 'general'
WHERE id = 9;

UPDATE memes
SET category = 'student'
WHERE id = 10;

UPDATE memes
SET category = 'coder logic'
WHERE id = 11;

UPDATE memes
SET category = 'student'
WHERE id = 12;

UPDATE memes
SET category = 'general'
WHERE id = 13;

UPDATE memes
SET category = 'coder logic'
WHERE id = 14;

UPDATE memes
SET category = 'coder logic'
WHERE id = 15;

INSERT INTO memes (title, meme, category) VALUES ('corporate logic', 'https://i.redd.it/l0qwk81rfxk51.jpg', 'jobs');

INSERT INTO memes (title, meme, category) VALUES ('never touch the ancient code', 'https://preview.redd.it/zwz1ahxylvk51.jpg?width=640&crop=smart&auto=webp&s=33dd64604ab5bf285cf50c48a66c8b4e0764b237', 'jobs');

INSERT INTO memes (title, meme, category) VALUES ('i am code', 'https://i.redd.it/vl4cykj0hyk51.png', 'google');

INSERT INTO memes (title, meme, category) VALUES ('nice', 'https://i.redd.it/7ptrlc47tuc51.jpg', 'automation');

INSERT INTO memes (title, meme, category) VALUES ('if statements be like...', 'https://i.redd.it/6rbq35occu441.jpg', 'coder logic');

INSERT INTO memes (title, meme, category) VALUES ('hired', 'https://i.redd.it/cq5m8tzg8az41.png', 'google');

INSERT INTO memes (title, meme, category) VALUES ('its like fishing', 'https://i.redd.it/733evqt0w4y41.jpg', 'coder logic');

INSERT INTO memes (title, meme, category) VALUES ('fml', 'https://i.redd.it/dcuj4sradth51.jpg', 'jobs');

INSERT INTO memes (title, meme, category) VALUES ('chef engineer', 'https://i.redd.it/h8uhxvhurdh51.jpg', 'jobs');

INSERT INTO memes (title, meme, category) VALUES ('america ruins everything', 'https://i.redd.it/th44b0a1dn041.jpg', 'css');

INSERT INTO memes (title, meme, category) VALUES ('my poor child', 'https://i.redd.it/mar8p5zhhm131.jpg', 'general');

INSERT INTO memes (title, meme, category) VALUES ('death is the only logical answer', 'https://external-preview.redd.it/Urf8FEO0_VnUgLHhiK7cigvcNgMWQcu5KfaDPEDPJ04.jpg?auto=webp&s=0e61987963f53951a0ade8417c3dc001c1730b91', 'general');

INSERT INTO memes (title, meme, category) VALUES ('when someone else offers to help with my code', 'https://i.redd.it/hk54ti5n6tk11.png', 'coder logic');

INSERT INTO memes (title, meme, category) VALUES ('trickery', 'https://i.redd.it/bka1gb843z7z.jpg', 'jobs');

INSERT INTO memes (title, meme, category) VALUES ('finally, it was all worth it', 'https://i.redd.it/cfkgkauvr8w01.jpg', 'student');

INSERT INTO memes (title, meme, category) VALUES ('good work....me', 'https://i.redd.it/2ohly4ex2hy41.jpg', 'general');

INSERT INTO memes (title, meme, category) VALUES ('they will never code as well as my trash', 'https://i.redd.it/a5qdc8jie1351.jpg', 'automation');

INSERT INTO memes (title, meme, category) VALUES ('i can do that', 'https://external-preview.redd.it/YksSMu5GtpX5qcSqyE7JX65IP-xDoGTLJu_NXEzgr-E.png?auto=webp&s=8de814a52ae40831e0d5b62159b9a696ba7a8fd5', 'automation');

INSERT INTO memes (title, meme, category) VALUES ('i have to do it', 'https://i.redd.it/myd50mpyl8351.jpg', 'coder logic');

INSERT INTO memes (title, meme, category) VALUES ('i should be certified', 'https://i.redd.it/60xwyyqy98d51.jpg', 'google');

INSERT INTO memes (title, meme, category) VALUES ('idiot', 'https://i.redd.it/a2n75ff2gvk41.jpg', 'student');

INSERT INTO memes (title, meme, category) VALUES ('smart = google', 'https://i.redd.it/tozls5d3wsi51.jpg', 'css');

