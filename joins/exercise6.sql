create table cd.facilities
(
    facid              integer,
    name               varchar(100),
    membercost         numeric,
    guestcost          numeric,
    initialoutlay      numeric,
    monthlymaintenance numeric
);

insert into cd.facilities (facid, name, membercost, guestcost, initialoutlay, monthlymaintenance)
values (0, 'Tennis Court 1', 5, 25, 10000, 200),
       (1, 'Tennis Court 2', 5, 25, 8000, 200),
       (2, 'Badminton Court', 0, 15.5, 4000, 50),
       (3, 'Table Tennis', 0, 5, 320, 10),
       (4, 'Massage Room 1', 35, 80, 4000, 3000),
       (5, 'Massage Room 2', 35, 80, 4000, 3000),
       (6, 'Squash Court', 3.5, 17.5, 5000, 80),
       (7, 'Snooker Table', 0, 5, 450, 15),
       (8, 'Pool Table', 0, 5, 400, 15);

create table cd.members
(
    memid         integer primary key,
    surname       varchar(50) not null,
    firstname     varchar(50) not null,
    address       varchar(100),
    zipcode       varchar(10),
    telephone     varchar(15),
    recommendedby integer,
    joindate      timestamp   not null
);

insert into cd.members (memid, surname, firstname, address,
                        zipcode, telephone, recommendedby, joindate)
values (0, 'GUEST', 'GUEST', 'GUEST', '0',
        '(000) 000-0000', null, '2012-07-01 00:00:00'),
       (1, 'Smith', 'Darren', '8 Bloomsbury Close, Boston', '4321',
        '555-555-5555', null, '2012-07-02 12:02:05'),
       (2, 'Smith', 'Tracy', '8 Bloomsbury Close, New York', '4321',
        '555-555-5555', null, '2012-07-02 12:08:23'),
       (3, 'Rownam', 'Tim', '23 Highway Way, Boston', '23423',
        '(844) 693-0723', null, '2012-07-03 09:32:15'),
       (4, 'Joplette', 'Janice', '20 Crossing Road, New York', '234',
        '(833) 942-4710', 1, '2012-07-03 10:25:05'),
       (5, 'Butters', 'Gerald', '1065 Huntingdon Avenue, Boston', '56754',
        '(844) 078-4130', 1, '2012-07-09 10:44:09'),
       (6, 'Tracy', 'Burton', '3 Tunisia Drive, Boston', '45678',
        '(822) 354-9973', null, '2012-07-15 08:52:55'),
       (7, 'Dare', 'Nancy', '6 Hunting Lodge Way, Boston', '10383',
        '(833) 776-4001', 4, '2012-07-25 08:59:12'),
       (8, 'Boothe', 'Tim', '3 Bloomsbury Close, Reading, 00234', '234',
        '(811) 433-2547', 3, '2012-07-25 16:02:35'),
       (9, 'Stibbons', 'Ponder', '5 Dragons Way, Winchester', '87630',
        '(833) 160-3900', 6, '2012-07-25 17:09:05'),
       (10, 'Owen', 'Charles', '52 Cheshire Grove, Winchester, 28563', '28563',
        '(855) 542-5251', 1, '2012-08-03 19:42:37'),
       (11, 'Jones', 'David', '976 Gnats Close, Reading', '33862',
        '(844) 536-8036', 4, '2012-08-06 16:32:55'),
       (12, 'Baker', 'Anne', '55 Powdery Street, Boston', '80743',
        '844-076-5141', 9, '2012-08-10 14:23:22'),
       (13, 'Farrell', 'Jemima', '103 Firth Avenue, North Reading', '57392',
        '(855) 016-0163', null, '2012-08-10 14:28:01'),
       (14, 'Smith', 'Jack', '252 Binkington Way, Boston', '69302',
        '(822) 163-3254', 1, '2012-08-10 16:22:05'),
       (15, 'Bader', 'Florence', '264 Ursula Drive, Westford', '84923',
        '(833) 499-3527', 9, '2012-08-10 17:52:03'),
       (16, 'Baker', 'Timothy', '329 James Street, Reading', '58393',
        '833-941-0824', 13, '2012-08-15 10:34:25'),
       (17, 'Pinker', 'David', '5 Impreza Road, Boston', '65332',
        '811 409-6734', 13, '2012-08-16 11:32:47'),
       (20, 'Genting', 'Matthew', '4 Nunnington Place, Wingfield, Boston', '52365',
        '(811) 972-1377', 5, '2012-08-19 14:55:55'),
       (21, 'Mackenzie', 'Anna', '64 Perkington Lane, Reading', '64577',
        '(822) 661-2898', 1, '2012-08-26 09:32:05'),
       (22, 'Coplin', 'Joan', '85 Bard Street, Bloomington, Boston', '43533',
        '(822) 499-2232', 16, '2012-08-29 08:32:41'),
       (24, 'Sarwin', 'Ramnaresh', '12 Bullington Lane, Boston', '65464',
        '(822) 413-1470', 15, '2012-09-01 08:44:42'),
       (26, 'Jones', 'Douglas', '976 Gnats Close, Reading', '11986',
        '844 536-8036', 11, '2012-09-02 18:43:05'),
       (27, 'Rumney', 'Henrietta', '3 Burkington Plaza, Boston', '78533',
        '(822) 989-8876', 20, '2012-09-05 08:42:35'),
       (28, 'Farrell', 'David', '437 Granite Farm Road, Westford', '43532',
        '(855) 755-9876', null, '2012-09-15 08:22:05'),
       (29, 'Worthington-Smyth', 'Henry', '55 Jagbi Way, North Reading', '97676',
        '(855) 894-3758', 2, '2012-09-17 12:27:15'),
       (30, 'Purview', 'Millicent', '641 Drudgery Close, Burnington, Boston', '34232',
        '(855) 941-9786', 2, '2012-09-18 19:04:01'),
       (33, 'Tupperware', 'Hyacinth', '33 Cheerful Plaza, Drake Road, Westford', '68666',
        '(822) 665-5327', null, '2012-09-18 19:32:05'),
       (35, 'Hunt', 'John', '5 Bullington Lane, Boston', '54333',
        '(899) 720-6978', 30, '2012-09-19 11:32:45'),
       (36, 'Crumpet', 'Erica', 'Crimson Road, North Reading', '75655',
        '(811) 732-4816', 2, '2012-09-22 08:36:38'),
       (37, 'Smith', 'Darren', '3 Funktown, Denzington, Boston', '66796',
        '(822) 577-3541', null, '2012-09-26 18:08:45');

create table cd.bookings
(
    bookid    integer,
    facid     integer,
    memid     integer,
    starttime timestamp,
    slots     integer
);

insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('0	3	1	2012-07-03 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1	4	1	2012-07-03 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2	6	0	2012-07-03 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3	7	1	2012-07-03 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4	8	1	2012-07-03 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('5	8	1	2012-07-03 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('6	0	2	2012-07-04 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('7	0	2	2012-07-04 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('8	4	3	2012-07-04 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('9	4	0	2012-07-04 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('10	4	0	2012-07-04 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('11	6	0	2012-07-04 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('12	6	0	2012-07-04 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('13	6	1	2012-07-04 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('14	7	2	2012-07-04 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('15	8	2	2012-07-04 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('16	8	3	2012-07-04 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('17	1	0	2012-07-05 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('18	2	1	2012-07-05 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('19	3	3	2012-07-05 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('20	3	1	2012-07-05 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('21	4	3	2012-07-05 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('22	6	0	2012-07-05 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('23	6	1	2012-07-05 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('24	7	2	2012-07-05 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('25	8	3	2012-07-05 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('26	0	0	2012-07-06 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('27	0	0	2012-07-06 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('28	0	2	2012-07-06 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('29	2	1	2012-07-06 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('30	3	1	2012-07-06 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('31	4	3	2012-07-06 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('32	6	1	2012-07-06 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('33	7	2	2012-07-06 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('34	7	2	2012-07-06 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('35	8	3	2012-07-06 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('36	0	2	2012-07-07 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('37	0	0	2012-07-07 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('38	0	2	2012-07-07 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('39	1	3	2012-07-07 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('40	2	1	2012-07-07 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('41	2	1	2012-07-07 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('42	2	1	2012-07-07 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('43	3	2	2012-07-07 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('44	4	3	2012-07-07 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('45	4	3	2012-07-07 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('46	4	0	2012-07-07 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('47	6	0	2012-07-07 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('48	6	1	2012-07-07 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('49	6	1	2012-07-07 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('50	6	0	2012-07-07 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('51	7	2	2012-07-07 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('52	8	3	2012-07-07 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('53	8	3	2012-07-07 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('54	0	3	2012-07-08 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('55	0	2	2012-07-08 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('56	1	1	2012-07-08 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('57	1	1	2012-07-08 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('58	3	1	2012-07-08 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('59	3	3	2012-07-08 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('60	3	1	2012-07-08 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('61	4	0	2012-07-08 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('62	4	2	2012-07-08 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('63	4	0	2012-07-08 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('64	4	0	2012-07-08 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('65	6	0	2012-07-08 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('66	6	0	2012-07-08 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('67	7	2	2012-07-08 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('68	7	1	2012-07-08 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('69	8	3	2012-07-08 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('70	8	3	2012-07-08 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('71	0	2	2012-07-09 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('72	0	2	2012-07-09 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('73	0	2	2012-07-09 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('74	1	0	2012-07-09 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('75	1	1	2012-07-09 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('76	2	1	2012-07-09 09:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('77	2	0	2012-07-09 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('78	3	3	2012-07-09 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('79	3	3	2012-07-09 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('80	4	2	2012-07-09 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('81	4	3	2012-07-09 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('82	6	0	2012-07-09 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('83	7	1	2012-07-09 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('84	7	0	2012-07-09 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('85	8	3	2012-07-09 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('86	8	3	2012-07-09 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('87	8	3	2012-07-09 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('88	0	0	2012-07-10 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('89	0	0	2012-07-10 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('90	3	2	2012-07-10 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('91	3	1	2012-07-10 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('92	3	3	2012-07-10 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('93	3	2	2012-07-10 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('94	3	1	2012-07-10 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('95	4	0	2012-07-10 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('96	4	4	2012-07-10 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('97	4	0	2012-07-10 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('98	4	3	2012-07-10 17:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('99	5	0	2012-07-10 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('100	6	0	2012-07-10 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('101	6	0	2012-07-10 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('102	7	4	2012-07-10 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('103	7	2	2012-07-10 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('104	8	0	2012-07-10 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('105	8	3	2012-07-10 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('106	8	3	2012-07-10 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('107	0	4	2012-07-11 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('108	0	2	2012-07-11 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('109	0	0	2012-07-11 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('110	0	0	2012-07-11 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('111	0	2	2012-07-11 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('112	0	2	2012-07-11 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('113	1	0	2012-07-11 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('114	1	0	2012-07-11 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('115	4	1	2012-07-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('116	4	0	2012-07-11 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('117	4	3	2012-07-11 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('118	4	0	2012-07-11 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('119	5	4	2012-07-11 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('120	6	0	2012-07-11 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('121	6	0	2012-07-11 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('122	7	0	2012-07-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('123	7	0	2012-07-11 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('124	7	0	2012-07-11 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('125	8	4	2012-07-11 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('126	8	3	2012-07-11 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('127	0	0	2012-07-12 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('128	0	2	2012-07-12 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('129	1	1	2012-07-12 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('130	2	1	2012-07-12 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('131	2	1	2012-07-12 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('132	3	3	2012-07-12 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('133	4	1	2012-07-12 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('134	6	0	2012-07-12 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('135	7	2	2012-07-12 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('136	7	4	2012-07-12 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('137	7	4	2012-07-12 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('138	8	3	2012-07-12 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('139	0	2	2012-07-13 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('140	0	4	2012-07-13 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('141	0	3	2012-07-13 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('142	1	1	2012-07-13 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('143	2	1	2012-07-13 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('144	2	0	2012-07-13 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('145	2	1	2012-07-13 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('146	4	0	2012-07-13 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('147	4	0	2012-07-13 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('148	4	0	2012-07-13 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('149	4	3	2012-07-13 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('150	4	4	2012-07-13 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('151	6	0	2012-07-13 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('152	7	0	2012-07-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('153	7	1	2012-07-13 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('154	7	4	2012-07-13 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('155	8	0	2012-07-13 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('156	8	2	2012-07-13 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('157	0	2	2012-07-14 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('158	0	4	2012-07-14 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('159	0	3	2012-07-14 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('160	1	3	2012-07-14 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('161	1	3	2012-07-14 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('162	1	0	2012-07-14 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('163	2	1	2012-07-14 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('164	3	2	2012-07-14 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('165	4	3	2012-07-14 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('166	4	1	2012-07-14 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('167	6	0	2012-07-14 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('168	6	1	2012-07-14 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('169	6	0	2012-07-14 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('170	7	2	2012-07-14 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('171	7	2	2012-07-14 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('172	7	4	2012-07-14 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('173	7	1	2012-07-14 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('174	8	3	2012-07-14 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('175	8	1	2012-07-14 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('176	0	2	2012-07-15 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('177	0	0	2012-07-15 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('178	0	2	2012-07-15 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('179	1	0	2012-07-15 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('180	1	0	2012-07-15 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('181	1	3	2012-07-15 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('182	2	1	2012-07-15 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('183	3	1	2012-07-15 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('184	4	3	2012-07-15 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('185	4	0	2012-07-15 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('186	4	3	2012-07-15 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('187	7	4	2012-07-15 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('188	7	4	2012-07-15 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('189	8	4	2012-07-15 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('190	8	2	2012-07-15 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('191	8	3	2012-07-15 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('192	8	3	2012-07-15 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('193	0	5	2012-07-16 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('194	0	5	2012-07-16 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('195	1	1	2012-07-16 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('196	1	0	2012-07-16 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('197	2	1	2012-07-16 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('198	4	3	2012-07-16 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('199	4	1	2012-07-16 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('200	4	3	2012-07-16 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('201	4	3	2012-07-16 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('202	6	0	2012-07-16 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('203	7	4	2012-07-16 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('204	7	2	2012-07-16 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('205	7	4	2012-07-16 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('206	7	5	2012-07-16 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('207	8	4	2012-07-16 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('208	8	1	2012-07-16 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('209	8	4	2012-07-16 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('210	8	3	2012-07-16 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('211	0	5	2012-07-17 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('212	0	5	2012-07-17 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('213	1	1	2012-07-17 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('214	1	4	2012-07-17 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('215	2	5	2012-07-17 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('216	2	1	2012-07-17 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('217	2	1	2012-07-17 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('218	2	2	2012-07-17 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('219	3	1	2012-07-17 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('220	3	2	2012-07-17 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('221	4	0	2012-07-17 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('222	4	3	2012-07-17 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('223	4	3	2012-07-17 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('224	4	5	2012-07-17 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('225	4	3	2012-07-17 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('226	5	0	2012-07-17 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('227	6	4	2012-07-17 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('228	6	0	2012-07-17 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('229	7	4	2012-07-17 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('230	7	5	2012-07-17 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('231	7	4	2012-07-17 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('232	8	3	2012-07-17 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('233	8	2	2012-07-17 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('234	8	3	2012-07-17 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('235	8	3	2012-07-17 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('236	8	0	2012-07-17 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('237	8	3	2012-07-17 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('238	8	3	2012-07-17 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('239	8	3	2012-07-17 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('240	0	5	2012-07-18 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('241	0	5	2012-07-18 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('242	1	0	2012-07-18 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('243	1	0	2012-07-18 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('244	2	1	2012-07-18 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('245	3	2	2012-07-18 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('246	3	3	2012-07-18 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('247	4	1	2012-07-18 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('248	4	4	2012-07-18 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('249	4	5	2012-07-18 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('250	5	0	2012-07-18 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('251	6	0	2012-07-18 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('252	6	0	2012-07-18 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('253	6	0	2012-07-18 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('254	6	1	2012-07-18 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('255	7	4	2012-07-18 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('256	7	4	2012-07-18 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('257	8	3	2012-07-18 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('258	8	0	2012-07-18 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('259	8	3	2012-07-18 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('260	8	4	2012-07-18 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('261	8	3	2012-07-18 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('262	8	4	2012-07-18 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('263	0	2	2012-07-19 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('264	0	4	2012-07-19 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('265	0	5	2012-07-19 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('266	0	0	2012-07-19 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('267	0	5	2012-07-19 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('268	1	1	2012-07-19 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('269	1	0	2012-07-19 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('270	1	0	2012-07-19 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('271	2	1	2012-07-19 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('272	2	0	2012-07-19 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('273	2	1	2012-07-19 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('274	2	2	2012-07-19 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('275	3	3	2012-07-19 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('276	3	3	2012-07-19 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('277	3	3	2012-07-19 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('278	4	3	2012-07-19 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('279	4	5	2012-07-19 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('280	4	0	2012-07-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('281	4	1	2012-07-19 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('282	4	0	2012-07-19 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('283	5	0	2012-07-19 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('284	6	4	2012-07-19 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('285	6	2	2012-07-19 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('286	6	0	2012-07-19 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('287	6	0	2012-07-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('288	7	2	2012-07-19 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('289	7	0	2012-07-19 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('290	7	0	2012-07-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('291	7	4	2012-07-19 17:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('292	8	3	2012-07-19 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('293	8	1	2012-07-19 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('294	8	3	2012-07-19 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('295	8	3	2012-07-19 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('296	8	3	2012-07-19 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('297	0	3	2012-07-20 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('298	0	5	2012-07-20 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('299	0	5	2012-07-20 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('300	0	5	2012-07-20 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('301	0	0	2012-07-20 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('302	1	2	2012-07-20 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('303	1	3	2012-07-20 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('304	1	4	2012-07-20 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('305	2	1	2012-07-20 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('306	3	3	2012-07-20 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('307	3	1	2012-07-20 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('308	4	5	2012-07-20 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('309	4	0	2012-07-20 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('310	4	1	2012-07-20 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('311	4	0	2012-07-20 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('312	4	3	2012-07-20 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('313	6	0	2012-07-20 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('314	6	4	2012-07-20 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('315	6	2	2012-07-20 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('316	6	0	2012-07-20 16:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('317	7	2	2012-07-20 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('318	7	2	2012-07-20 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('319	7	4	2012-07-20 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('320	8	1	2012-07-20 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('321	8	2	2012-07-20 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('322	8	3	2012-07-20 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('323	0	0	2012-07-21 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('324	0	5	2012-07-21 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('325	0	5	2012-07-21 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('326	0	4	2012-07-21 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('327	1	1	2012-07-21 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('328	1	0	2012-07-21 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('329	2	0	2012-07-21 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('330	2	1	2012-07-21 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('331	3	2	2012-07-21 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('332	4	0	2012-07-21 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('333	4	3	2012-07-21 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('334	4	0	2012-07-21 14:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('335	4	3	2012-07-21 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('336	4	1	2012-07-21 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('337	4	0	2012-07-21 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('338	6	4	2012-07-21 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('339	6	0	2012-07-21 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('340	6	0	2012-07-21 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('341	8	3	2012-07-21 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('342	8	3	2012-07-21 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('343	8	3	2012-07-21 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('344	8	3	2012-07-21 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('345	0	5	2012-07-22 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('346	0	0	2012-07-22 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('347	0	2	2012-07-22 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('348	1	0	2012-07-22 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('349	1	0	2012-07-22 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('350	1	5	2012-07-22 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('351	2	1	2012-07-22 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('352	2	1	2012-07-22 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('353	2	1	2012-07-22 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('354	3	3	2012-07-22 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('355	3	2	2012-07-22 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('356	4	4	2012-07-22 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('357	4	3	2012-07-22 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('358	4	0	2012-07-22 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('359	4	5	2012-07-22 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('360	4	0	2012-07-22 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('361	4	1	2012-07-22 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('362	4	3	2012-07-22 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('363	6	4	2012-07-22 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('364	6	0	2012-07-22 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('365	6	0	2012-07-22 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('366	7	2	2012-07-22 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('367	7	2	2012-07-22 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('368	8	3	2012-07-22 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('369	8	3	2012-07-22 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('370	8	2	2012-07-22 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('371	0	0	2012-07-23 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('372	0	0	2012-07-23 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('373	0	5	2012-07-23 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('374	1	1	2012-07-23 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('375	1	4	2012-07-23 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('376	1	4	2012-07-23 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('377	1	0	2012-07-23 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('378	1	4	2012-07-23 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('379	2	1	2012-07-23 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('380	2	5	2012-07-23 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('381	2	1	2012-07-23 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('382	2	1	2012-07-23 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('383	3	2	2012-07-23 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('384	3	2	2012-07-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('385	4	4	2012-07-23 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('386	4	0	2012-07-23 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('387	4	3	2012-07-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('388	5	3	2012-07-23 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('389	6	0	2012-07-23 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('390	6	0	2012-07-23 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('391	6	0	2012-07-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('392	7	5	2012-07-23 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('393	7	4	2012-07-23 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('394	8	3	2012-07-23 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('395	8	3	2012-07-23 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('396	8	3	2012-07-23 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('397	8	2	2012-07-23 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('398	0	0	2012-07-24 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('399	0	4	2012-07-24 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('400	0	5	2012-07-24 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('401	1	4	2012-07-24 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('402	1	0	2012-07-24 16:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('403	1	1	2012-07-24 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('404	2	1	2012-07-24 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('405	2	2	2012-07-24 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('406	3	3	2012-07-24 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('407	3	3	2012-07-24 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('408	4	0	2012-07-24 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('409	4	5	2012-07-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('410	4	0	2012-07-24 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('411	4	1	2012-07-24 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('412	4	0	2012-07-24 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('413	4	0	2012-07-24 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('414	4	0	2012-07-24 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('415	5	5	2012-07-24 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('416	6	0	2012-07-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('417	6	0	2012-07-24 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('418	7	4	2012-07-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('419	7	5	2012-07-24 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('420	7	2	2012-07-24 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('421	7	4	2012-07-24 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('422	7	2	2012-07-24 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('423	8	3	2012-07-24 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('424	8	3	2012-07-24 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('425	8	3	2012-07-24 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('426	8	3	2012-07-24 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('427	8	0	2012-07-24 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('428	8	4	2012-07-24 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('429	8	0	2012-07-24 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('430	0	5	2012-07-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('431	0	0	2012-07-25 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('432	0	0	2012-07-25 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('433	1	1	2012-07-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('434	1	0	2012-07-25 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('435	1	4	2012-07-25 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('436	2	1	2012-07-25 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('437	2	1	2012-07-25 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('438	3	2	2012-07-25 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('439	3	3	2012-07-25 14:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('440	3	3	2012-07-25 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('441	3	2	2012-07-25 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('442	4	3	2012-07-25 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('443	4	0	2012-07-25 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('444	4	3	2012-07-25 11:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('445	4	5	2012-07-25 13:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('446	4	3	2012-07-25 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('447	4	3	2012-07-25 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('448	4	3	2012-07-25 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('449	5	0	2012-07-25 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('450	6	4	2012-07-25 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('451	6	1	2012-07-25 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('452	6	0	2012-07-25 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('453	6	0	2012-07-25 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('454	6	0	2012-07-25 16:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('455	6	5	2012-07-25 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('456	7	5	2012-07-25 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('457	7	2	2012-07-25 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('458	7	2	2012-07-25 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('459	8	3	2012-07-25 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('460	8	3	2012-07-25 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('461	8	4	2012-07-25 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('462	8	1	2012-07-25 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('463	8	2	2012-07-25 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('464	0	4	2012-07-26 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('465	0	0	2012-07-26 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('466	0	4	2012-07-26 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('467	1	8	2012-07-26 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('468	1	8	2012-07-26 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('469	1	8	2012-07-26 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('470	1	1	2012-07-26 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('471	1	0	2012-07-26 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('472	1	6	2012-07-26 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('473	2	1	2012-07-26 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('474	2	2	2012-07-26 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('475	2	7	2012-07-26 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('476	2	2	2012-07-26 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('477	2	3	2012-07-26 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('478	3	0	2012-07-26 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('479	3	0	2012-07-26 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('480	3	3	2012-07-26 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('481	4	3	2012-07-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('482	4	6	2012-07-26 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('483	4	0	2012-07-26 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('484	4	5	2012-07-26 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('485	4	6	2012-07-26 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('486	4	7	2012-07-26 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('487	6	0	2012-07-26 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('488	6	0	2012-07-26 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('489	6	0	2012-07-26 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('490	7	7	2012-07-26 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('491	7	6	2012-07-26 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('492	7	5	2012-07-26 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('493	7	4	2012-07-26 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('494	7	5	2012-07-26 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('495	8	3	2012-07-26 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('496	8	3	2012-07-26 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('497	8	2	2012-07-26 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('498	8	1	2012-07-26 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('499	8	3	2012-07-26 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('500	0	4	2012-07-27 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('501	0	5	2012-07-27 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('502	0	6	2012-07-27 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('503	0	6	2012-07-27 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('504	1	0	2012-07-27 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('505	1	7	2012-07-27 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('506	1	0	2012-07-27 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('507	1	0	2012-07-27 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('508	1	0	2012-07-27 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('509	2	1	2012-07-27 12:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('510	3	0	2012-07-27 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('511	3	2	2012-07-27 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('512	3	3	2012-07-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('513	4	1	2012-07-27 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('514	4	6	2012-07-27 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('515	4	0	2012-07-27 14:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('516	4	0	2012-07-27 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('517	4	1	2012-07-27 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('518	4	0	2012-07-27 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('519	5	7	2012-07-27 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('520	6	0	2012-07-27 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('521	6	5	2012-07-27 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('522	6	8	2012-07-27 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('523	7	2	2012-07-27 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('524	7	4	2012-07-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('525	8	3	2012-07-27 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('526	8	3	2012-07-27 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('527	8	3	2012-07-27 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('528	8	6	2012-07-27 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('529	8	0	2012-07-27 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('530	0	7	2012-07-28 08:00:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('531	0	4	2012-07-28 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('532	0	5	2012-07-28 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('533	0	2	2012-07-28 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('534	1	1	2012-07-28 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('535	1	0	2012-07-28 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('536	1	0	2012-07-28 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('537	1	7	2012-07-28 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('538	2	1	2012-07-28 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('539	2	1	2012-07-28 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('540	2	1	2012-07-28 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('541	2	5	2012-07-28 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('542	3	3	2012-07-28 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('543	3	3	2012-07-28 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('544	4	0	2012-07-28 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('545	4	3	2012-07-28 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('546	4	0	2012-07-28 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('547	4	8	2012-07-28 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('548	4	0	2012-07-28 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('549	5	0	2012-07-28 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('550	6	0	2012-07-28 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('551	6	0	2012-07-28 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('552	7	2	2012-07-28 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('553	7	5	2012-07-28 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('554	7	6	2012-07-28 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('555	7	8	2012-07-28 17:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('556	8	2	2012-07-28 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('557	8	3	2012-07-28 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('558	8	4	2012-07-28 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('559	0	7	2012-07-29 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('560	0	2	2012-07-29 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('561	0	6	2012-07-29 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('562	0	5	2012-07-29 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('563	0	0	2012-07-29 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('564	1	8	2012-07-29 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('565	1	0	2012-07-29 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('566	1	8	2012-07-29 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('567	2	1	2012-07-29 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('568	2	1	2012-07-29 12:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('569	2	1	2012-07-29 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('570	4	3	2012-07-29 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('571	4	0	2012-07-29 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('572	4	3	2012-07-29 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('573	4	8	2012-07-29 11:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('574	4	8	2012-07-29 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('575	4	0	2012-07-29 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('576	6	0	2012-07-29 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('577	6	0	2012-07-29 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('578	6	6	2012-07-29 17:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('579	7	4	2012-07-29 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('580	7	8	2012-07-29 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('581	8	3	2012-07-29 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('582	8	7	2012-07-29 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('583	8	3	2012-07-29 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('584	8	3	2012-07-29 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('585	0	5	2012-07-30 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('586	0	6	2012-07-30 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('587	0	7	2012-07-30 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('588	1	8	2012-07-30 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('589	1	7	2012-07-30 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('590	1	2	2012-07-30 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('591	1	1	2012-07-30 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('592	2	5	2012-07-30 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('593	2	8	2012-07-30 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('594	2	7	2012-07-30 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('595	2	0	2012-07-30 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('596	3	3	2012-07-30 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('597	3	4	2012-07-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('598	4	0	2012-07-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('599	4	0	2012-07-30 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('600	4	0	2012-07-30 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('601	4	7	2012-07-30 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('602	4	3	2012-07-30 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('603	5	0	2012-07-30 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('604	5	0	2012-07-30 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('605	6	0	2012-07-30 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('606	6	0	2012-07-30 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('607	6	0	2012-07-30 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('608	6	0	2012-07-30 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('609	7	7	2012-07-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('610	7	6	2012-07-30 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('611	7	8	2012-07-30 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('612	7	5	2012-07-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('613	7	4	2012-07-30 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('614	7	6	2012-07-30 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('615	8	3	2012-07-30 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('616	8	2	2012-07-30 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('617	8	2	2012-07-30 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('618	8	2	2012-07-30 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('619	8	3	2012-07-30 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('620	8	5	2012-07-30 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('621	8	2	2012-07-30 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('622	8	3	2012-07-30 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('623	8	1	2012-07-30 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('624	0	7	2012-07-31 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('625	0	0	2012-07-31 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('626	0	0	2012-07-31 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('627	0	5	2012-07-31 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('628	0	0	2012-07-31 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('629	1	0	2012-07-31 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('630	1	7	2012-07-31 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('631	2	1	2012-07-31 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('632	3	3	2012-07-31 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('633	3	1	2012-07-31 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('634	3	1	2012-07-31 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('635	4	8	2012-07-31 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('636	4	0	2012-07-31 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('637	4	3	2012-07-31 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('638	4	2	2012-07-31 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('639	4	3	2012-07-31 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('640	4	0	2012-07-31 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('641	4	6	2012-07-31 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('642	4	7	2012-07-31 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('643	4	0	2012-07-31 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('644	6	0	2012-07-31 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('645	6	5	2012-07-31 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('646	6	6	2012-07-31 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('647	6	0	2012-07-31 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('648	6	6	2012-07-31 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('649	7	4	2012-07-31 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('650	8	3	2012-07-31 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('651	8	3	2012-07-31 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('652	8	5	2012-07-31 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('653	8	7	2012-07-31 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('654	8	8	2012-07-31 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('655	8	6	2012-07-31 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('656	8	4	2012-07-31 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('657	8	2	2012-07-31 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('658	0	5	2012-08-01 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('659	0	5	2012-08-01 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('660	1	8	2012-08-01 09:00:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('661	1	8	2012-08-01 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('662	2	1	2012-08-01 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('663	2	1	2012-08-01 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('664	2	1	2012-08-01 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('665	3	7	2012-08-01 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('666	4	5	2012-08-01 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('667	4	6	2012-08-01 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('668	4	0	2012-08-01 10:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('669	4	3	2012-08-01 13:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('670	4	3	2012-08-01 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('671	5	7	2012-08-01 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('672	5	0	2012-08-01 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('673	6	0	2012-08-01 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('674	6	0	2012-08-01 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('675	6	6	2012-08-01 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('676	6	0	2012-08-01 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('677	7	4	2012-08-01 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('678	7	2	2012-08-01 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('679	7	5	2012-08-01 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('680	8	3	2012-08-01 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('681	8	2	2012-08-01 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('682	8	3	2012-08-01 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('683	8	3	2012-08-01 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('684	8	8	2012-08-01 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('685	8	8	2012-08-01 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('686	8	3	2012-08-01 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('687	0	8	2012-08-02 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('688	0	5	2012-08-02 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('689	0	7	2012-08-02 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('690	0	5	2012-08-02 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('691	1	8	2012-08-02 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('692	1	8	2012-08-02 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('693	1	0	2012-08-02 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('694	1	5	2012-08-02 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('695	1	0	2012-08-02 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('696	2	1	2012-08-02 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('697	2	0	2012-08-02 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('698	2	3	2012-08-02 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('699	2	1	2012-08-02 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('700	3	3	2012-08-02 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('701	3	2	2012-08-02 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('702	3	3	2012-08-02 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('703	3	6	2012-08-02 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('704	3	4	2012-08-02 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('705	4	4	2012-08-02 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('706	4	7	2012-08-02 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('707	4	5	2012-08-02 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('708	4	8	2012-08-02 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('709	4	8	2012-08-02 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('710	4	3	2012-08-02 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('711	4	0	2012-08-02 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('712	6	4	2012-08-02 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('713	6	0	2012-08-02 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('714	6	0	2012-08-02 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('715	6	6	2012-08-02 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('716	6	8	2012-08-02 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('717	6	0	2012-08-02 17:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('718	6	2	2012-08-02 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('719	7	7	2012-08-02 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('720	7	5	2012-08-02 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('721	7	6	2012-08-02 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('722	7	4	2012-08-02 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('723	7	0	2012-08-02 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('724	8	3	2012-08-02 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('725	8	3	2012-08-02 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('726	8	7	2012-08-02 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('727	8	3	2012-08-02 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('728	8	7	2012-08-02 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('729	8	3	2012-08-02 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('730	0	5	2012-08-03 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('731	0	0	2012-08-03 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('732	0	6	2012-08-03 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('733	1	8	2012-08-03 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('734	1	0	2012-08-03 13:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('735	1	7	2012-08-03 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('736	1	8	2012-08-03 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('737	2	8	2012-08-03 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('738	2	1	2012-08-03 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('739	3	6	2012-08-03 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('740	3	2	2012-08-03 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('741	3	6	2012-08-03 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('742	3	6	2012-08-03 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('743	3	2	2012-08-03 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('744	4	0	2012-08-03 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('745	4	7	2012-08-03 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('746	4	0	2012-08-03 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('747	4	0	2012-08-03 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('748	4	1	2012-08-03 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('749	4	3	2012-08-03 15:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('750	4	3	2012-08-03 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('751	6	0	2012-08-03 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('752	6	0	2012-08-03 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('753	6	4	2012-08-03 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('754	6	0	2012-08-03 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('755	6	1	2012-08-03 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('756	6	0	2012-08-03 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('757	7	6	2012-08-03 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('758	7	6	2012-08-03 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('759	7	2	2012-08-03 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('760	7	5	2012-08-03 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('761	8	8	2012-08-03 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('762	8	3	2012-08-03 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('763	8	6	2012-08-03 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('764	8	3	2012-08-03 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('765	8	6	2012-08-03 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('766	8	8	2012-08-03 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('767	8	0	2012-08-03 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('768	8	3	2012-08-03 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('769	0	6	2012-08-04 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('770	1	9	2012-08-04 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('771	1	0	2012-08-04 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('772	1	8	2012-08-04 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('773	1	0	2012-08-04 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('774	2	1	2012-08-04 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('775	2	2	2012-08-04 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('776	2	1	2012-08-04 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('777	2	2	2012-08-04 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('778	2	9	2012-08-04 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('779	3	6	2012-08-04 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('780	3	1	2012-08-04 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('781	3	3	2012-08-04 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('782	3	4	2012-08-04 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('783	4	8	2012-08-04 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('784	4	7	2012-08-04 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('785	4	0	2012-08-04 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('786	4	5	2012-08-04 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('787	4	0	2012-08-04 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('788	4	5	2012-08-04 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('789	5	0	2012-08-04 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('790	6	6	2012-08-04 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('791	6	5	2012-08-04 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('792	6	6	2012-08-04 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('793	6	0	2012-08-04 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('794	6	0	2012-08-04 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('795	7	5	2012-08-04 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('796	7	9	2012-08-04 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('797	7	7	2012-08-04 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('798	7	5	2012-08-04 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('799	8	3	2012-08-04 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('800	8	3	2012-08-04 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('801	8	3	2012-08-04 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('802	8	3	2012-08-04 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('803	8	6	2012-08-04 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('804	8	7	2012-08-04 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('805	8	3	2012-08-04 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('806	0	2	2012-08-05 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('807	0	5	2012-08-05 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('808	0	7	2012-08-05 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('809	0	7	2012-08-05 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('810	1	0	2012-08-05 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('811	1	7	2012-08-05 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('812	1	9	2012-08-05 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('813	1	9	2012-08-05 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('814	1	1	2012-08-05 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('815	2	1	2012-08-05 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('816	2	5	2012-08-05 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('817	2	2	2012-08-05 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('818	2	8	2012-08-05 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('819	3	3	2012-08-05 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('820	3	4	2012-08-05 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('821	3	3	2012-08-05 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('822	4	0	2012-08-05 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('823	4	0	2012-08-05 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('824	4	0	2012-08-05 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('825	4	4	2012-08-05 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('826	4	8	2012-08-05 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('827	6	0	2012-08-05 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('828	6	6	2012-08-05 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('829	6	0	2012-08-05 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('830	7	2	2012-08-05 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('831	7	8	2012-08-05 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('832	7	2	2012-08-05 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('833	8	0	2012-08-05 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('834	8	3	2012-08-05 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('835	8	0	2012-08-05 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('836	8	3	2012-08-05 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('837	8	3	2012-08-05 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('838	8	3	2012-08-05 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('839	0	7	2012-08-06 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('840	0	0	2012-08-06 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('841	0	2	2012-08-06 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('842	0	0	2012-08-06 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('843	0	7	2012-08-06 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('844	0	5	2012-08-06 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('845	0	7	2012-08-06 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('846	1	8	2012-08-06 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('847	1	3	2012-08-06 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('848	1	0	2012-08-06 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('849	1	9	2012-08-06 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('850	1	9	2012-08-06 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('851	2	1	2012-08-06 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('852	2	5	2012-08-06 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('853	2	8	2012-08-06 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('854	2	8	2012-08-06 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('855	3	3	2012-08-06 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('856	3	6	2012-08-06 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('857	3	6	2012-08-06 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('858	4	0	2012-08-06 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('859	4	0	2012-08-06 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('860	4	7	2012-08-06 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('861	4	0	2012-08-06 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('862	4	6	2012-08-06 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('863	5	0	2012-08-06 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('864	6	6	2012-08-06 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('865	6	0	2012-08-06 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('866	6	6	2012-08-06 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('867	6	0	2012-08-06 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('868	6	5	2012-08-06 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('869	7	8	2012-08-06 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('870	7	2	2012-08-06 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('871	7	5	2012-08-06 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('872	7	4	2012-08-06 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('873	7	2	2012-08-06 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('874	8	3	2012-08-06 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('875	8	4	2012-08-06 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('876	8	3	2012-08-06 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('877	8	6	2012-08-06 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('878	8	1	2012-08-06 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('879	8	8	2012-08-06 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('880	8	3	2012-08-06 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('881	0	10	2012-08-07 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('882	1	0	2012-08-07 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('883	1	8	2012-08-07 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('884	1	7	2012-08-07 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('885	2	1	2012-08-07 09:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('886	2	1	2012-08-07 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('887	2	10	2012-08-07 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('888	2	2	2012-08-07 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('889	3	6	2012-08-07 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('890	3	6	2012-08-07 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('891	3	3	2012-08-07 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('892	3	3	2012-08-07 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('893	3	3	2012-08-07 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('894	4	0	2012-08-07 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('895	4	8	2012-08-07 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('896	4	8	2012-08-07 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('897	4	0	2012-08-07 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('898	4	6	2012-08-07 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('899	6	1	2012-08-07 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('900	6	0	2012-08-07 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('901	6	0	2012-08-07 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('902	6	0	2012-08-07 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('903	7	10	2012-08-07 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('904	7	4	2012-08-07 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('905	7	9	2012-08-07 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('906	8	3	2012-08-07 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('907	8	2	2012-08-07 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('908	8	3	2012-08-07 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('909	8	0	2012-08-07 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('910	8	3	2012-08-07 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('911	8	2	2012-08-07 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('912	8	2	2012-08-07 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('913	8	0	2012-08-07 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('914	8	3	2012-08-07 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('915	8	8	2012-08-07 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('916	0	10	2012-08-08 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('917	0	6	2012-08-08 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('918	0	5	2012-08-08 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('919	0	6	2012-08-08 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('920	1	0	2012-08-08 08:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('921	1	10	2012-08-08 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('922	1	10	2012-08-08 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('923	1	9	2012-08-08 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('924	2	5	2012-08-08 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('925	2	9	2012-08-08 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('926	2	7	2012-08-08 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('927	2	1	2012-08-08 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('928	2	5	2012-08-08 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('929	2	1	2012-08-08 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('930	3	10	2012-08-08 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('931	3	6	2012-08-08 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('932	3	0	2012-08-08 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('933	3	10	2012-08-08 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('934	3	2	2012-08-08 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('935	4	6	2012-08-08 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('936	4	8	2012-08-08 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('937	4	9	2012-08-08 12:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('938	4	0	2012-08-08 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('939	4	0	2012-08-08 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('940	4	3	2012-08-08 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('941	5	0	2012-08-08 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('942	6	0	2012-08-08 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('943	6	0	2012-08-08 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('944	6	8	2012-08-08 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('945	6	6	2012-08-08 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('946	6	10	2012-08-08 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('947	6	0	2012-08-08 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('948	7	8	2012-08-08 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('949	7	9	2012-08-08 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('950	7	7	2012-08-08 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('951	7	4	2012-08-08 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('952	7	9	2012-08-08 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('953	7	10	2012-08-08 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('954	8	4	2012-08-08 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('955	8	2	2012-08-08 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('956	8	3	2012-08-08 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('957	8	3	2012-08-08 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('958	8	3	2012-08-08 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('959	8	2	2012-08-08 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('960	8	7	2012-08-08 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('961	8	1	2012-08-08 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('962	8	3	2012-08-08 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('963	8	2	2012-08-08 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('964	8	1	2012-08-08 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('965	0	6	2012-08-09 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('966	0	7	2012-08-09 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('967	0	10	2012-08-09 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('968	1	10	2012-08-09 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('969	1	0	2012-08-09 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('970	1	8	2012-08-09 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('971	1	0	2012-08-09 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('972	2	2	2012-08-09 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('973	2	1	2012-08-09 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('974	2	9	2012-08-09 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('975	2	1	2012-08-09 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('976	2	1	2012-08-09 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('977	3	10	2012-08-09 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('978	3	7	2012-08-09 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('979	3	6	2012-08-09 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('980	3	2	2012-08-09 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('981	4	0	2012-08-09 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('982	4	0	2012-08-09 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('983	4	10	2012-08-09 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('984	4	9	2012-08-09 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('985	4	8	2012-08-09 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('986	4	10	2012-08-09 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('987	6	6	2012-08-09 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('988	6	6	2012-08-09 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('989	7	8	2012-08-09 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('990	7	8	2012-08-09 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('991	7	0	2012-08-09 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('992	7	6	2012-08-09 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('993	7	2	2012-08-09 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('994	7	4	2012-08-09 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('995	8	4	2012-08-09 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('996	8	2	2012-08-09 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('997	8	6	2012-08-09 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('998	8	3	2012-08-09 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('999	8	5	2012-08-09 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1000	8	3	2012-08-09 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1001	0	3	2012-08-10 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1002	0	2	2012-08-10 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1003	0	5	2012-08-10 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1004	0	2	2012-08-10 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1005	0	8	2012-08-10 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1006	1	10	2012-08-10 08:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1007	1	8	2012-08-10 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1008	1	9	2012-08-10 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1009	1	0	2012-08-10 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1010	1	10	2012-08-10 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1011	2	1	2012-08-10 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1012	2	8	2012-08-10 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1013	2	7	2012-08-10 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1014	2	0	2012-08-10 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1015	3	2	2012-08-10 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1016	3	7	2012-08-10 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1017	3	10	2012-08-10 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1018	3	4	2012-08-10 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1019	3	3	2012-08-10 18:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1020	4	6	2012-08-10 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1021	4	5	2012-08-10 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1022	4	6	2012-08-10 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1023	4	0	2012-08-10 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1024	4	8	2012-08-10 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1025	4	1	2012-08-10 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1026	4	3	2012-08-10 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1027	4	9	2012-08-10 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1028	5	0	2012-08-10 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1029	6	0	2012-08-10 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1030	6	0	2012-08-10 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1031	6	0	2012-08-10 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1032	6	0	2012-08-10 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1033	6	10	2012-08-10 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1034	6	0	2012-08-10 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1035	7	4	2012-08-10 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1036	7	4	2012-08-10 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1037	7	9	2012-08-10 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1038	7	6	2012-08-10 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1039	7	5	2012-08-10 16:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1040	7	6	2012-08-10 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1041	7	7	2012-08-10 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1042	8	8	2012-08-10 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1043	8	7	2012-08-10 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1044	8	3	2012-08-10 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1045	8	3	2012-08-10 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1046	8	7	2012-08-10 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1047	8	2	2012-08-10 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1048	8	2	2012-08-10 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1049	8	7	2012-08-10 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1050	8	4	2012-08-10 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1051	8	3	2012-08-10 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1052	0	0	2012-08-11 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1053	0	5	2012-08-11 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1054	0	0	2012-08-11 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1055	0	4	2012-08-11 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1056	0	0	2012-08-11 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1057	0	12	2012-08-11 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1058	0	4	2012-08-11 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1059	1	11	2012-08-11 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1060	1	0	2012-08-11 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1061	1	0	2012-08-11 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1062	1	0	2012-08-11 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1063	1	8	2012-08-11 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1064	1	0	2012-08-11 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1065	2	1	2012-08-11 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1066	2	7	2012-08-11 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1067	2	1	2012-08-11 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1068	3	11	2012-08-11 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1069	3	6	2012-08-11 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1070	3	7	2012-08-11 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1071	3	13	2012-08-11 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1072	4	0	2012-08-11 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1073	4	14	2012-08-11 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1074	4	0	2012-08-11 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1075	4	8	2012-08-11 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1076	4	6	2012-08-11 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1077	4	8	2012-08-11 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1078	4	9	2012-08-11 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1079	5	12	2012-08-11 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1080	6	13	2012-08-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1081	6	0	2012-08-11 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1082	6	0	2012-08-11 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1083	6	6	2012-08-11 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1084	6	6	2012-08-11 17:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1085	7	2	2012-08-11 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1086	7	8	2012-08-11 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1087	7	4	2012-08-11 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1088	7	2	2012-08-11 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1089	7	8	2012-08-11 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1090	8	3	2012-08-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1091	8	1	2012-08-11 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1092	8	3	2012-08-11 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1093	8	3	2012-08-11 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1094	8	3	2012-08-11 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1095	8	2	2012-08-11 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1096	8	3	2012-08-11 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1097	8	2	2012-08-11 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1098	8	14	2012-08-11 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1099	0	0	2012-08-12 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1100	0	7	2012-08-12 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1101	0	14	2012-08-12 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1102	0	0	2012-08-12 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1103	0	6	2012-08-12 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1104	0	0	2012-08-12 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1105	1	0	2012-08-12 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1106	1	9	2012-08-12 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1107	1	8	2012-08-12 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1108	2	1	2012-08-12 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1109	2	2	2012-08-12 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1110	2	0	2012-08-12 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1111	3	6	2012-08-12 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1112	3	10	2012-08-12 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1113	3	11	2012-08-12 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1114	3	3	2012-08-12 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1115	3	5	2012-08-12 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1116	4	0	2012-08-12 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1117	4	0	2012-08-12 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1118	4	6	2012-08-12 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1119	4	7	2012-08-12 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1120	4	6	2012-08-12 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1121	5	0	2012-08-12 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1122	5	0	2012-08-12 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1123	6	0	2012-08-12 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1124	6	13	2012-08-12 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1125	6	0	2012-08-12 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1126	6	10	2012-08-12 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1127	7	8	2012-08-12 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1128	7	2	2012-08-12 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1129	7	13	2012-08-12 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1130	7	5	2012-08-12 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1131	8	9	2012-08-12 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1132	8	11	2012-08-12 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1133	8	3	2012-08-12 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1134	8	8	2012-08-12 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1135	8	0	2012-08-12 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1136	8	0	2012-08-12 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1137	8	3	2012-08-12 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1138	0	4	2012-08-13 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1139	0	0	2012-08-13 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1140	0	6	2012-08-13 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1141	0	0	2012-08-13 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1142	1	12	2012-08-13 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1143	1	6	2012-08-13 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1144	1	10	2012-08-13 12:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1145	1	11	2012-08-13 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1146	1	0	2012-08-13 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1147	1	11	2012-08-13 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1148	2	1	2012-08-13 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1149	2	1	2012-08-13 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1150	2	11	2012-08-13 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1151	2	2	2012-08-13 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1152	2	1	2012-08-13 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1153	2	5	2012-08-13 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1154	3	3	2012-08-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1155	3	10	2012-08-13 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1156	3	9	2012-08-13 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1157	3	3	2012-08-13 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1158	3	10	2012-08-13 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1159	3	6	2012-08-13 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1160	4	7	2012-08-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1161	4	10	2012-08-13 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1162	4	0	2012-08-13 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1163	4	0	2012-08-13 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1164	4	8	2012-08-13 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1165	4	3	2012-08-13 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1166	4	10	2012-08-13 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1167	6	0	2012-08-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1168	6	5	2012-08-13 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1169	6	6	2012-08-13 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1170	6	0	2012-08-13 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1171	7	6	2012-08-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1172	7	14	2012-08-13 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1173	7	7	2012-08-13 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1174	7	13	2012-08-13 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1175	7	8	2012-08-13 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1176	7	9	2012-08-13 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1177	7	11	2012-08-13 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1178	7	4	2012-08-13 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1179	8	2	2012-08-13 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1180	8	1	2012-08-13 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1181	8	3	2012-08-13 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1182	8	4	2012-08-13 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1183	8	7	2012-08-13 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1184	8	4	2012-08-13 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1185	8	1	2012-08-13 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1186	8	6	2012-08-13 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1187	8	3	2012-08-13 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1188	8	3	2012-08-13 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1189	0	7	2012-08-14 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1190	0	14	2012-08-14 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1191	0	11	2012-08-14 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1192	0	0	2012-08-14 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1193	0	10	2012-08-14 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1194	1	11	2012-08-14 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1195	1	8	2012-08-14 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1196	1	0	2012-08-14 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1197	1	0	2012-08-14 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1198	2	13	2012-08-14 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1199	2	1	2012-08-14 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1200	2	1	2012-08-14 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1201	2	10	2012-08-14 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1202	2	0	2012-08-14 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1203	2	1	2012-08-14 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1204	3	10	2012-08-14 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1205	3	10	2012-08-14 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1206	3	3	2012-08-14 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1207	4	11	2012-08-14 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1208	4	0	2012-08-14 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1209	4	6	2012-08-14 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1210	4	0	2012-08-14 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1211	4	14	2012-08-14 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1212	4	0	2012-08-14 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1213	4	6	2012-08-14 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1214	5	0	2012-08-14 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1215	5	0	2012-08-14 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1216	6	12	2012-08-14 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1217	6	0	2012-08-14 12:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1218	6	0	2012-08-14 16:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1219	7	8	2012-08-14 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1220	7	2	2012-08-14 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1221	8	0	2012-08-14 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1222	8	2	2012-08-14 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1223	8	11	2012-08-14 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1224	8	3	2012-08-14 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1225	8	12	2012-08-14 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1226	8	3	2012-08-14 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1227	8	3	2012-08-14 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1228	8	9	2012-08-14 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1229	8	6	2012-08-14 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1230	8	8	2012-08-14 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1231	8	0	2012-08-14 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1232	0	0	2012-08-15 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1233	0	6	2012-08-15 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1234	0	5	2012-08-15 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1235	0	14	2012-08-15 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1236	0	0	2012-08-15 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1237	0	7	2012-08-15 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1238	1	0	2012-08-15 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1239	1	8	2012-08-15 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1240	1	12	2012-08-15 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1241	1	11	2012-08-15 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1242	1	12	2012-08-15 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1243	1	8	2012-08-15 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1244	2	1	2012-08-15 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1245	2	0	2012-08-15 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1246	2	10	2012-08-15 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1247	2	13	2012-08-15 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1248	2	1	2012-08-15 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1249	2	9	2012-08-15 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1250	3	3	2012-08-15 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1251	3	1	2012-08-15 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1252	3	3	2012-08-15 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1253	3	11	2012-08-15 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1254	3	10	2012-08-15 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1255	3	3	2012-08-15 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1256	4	0	2012-08-15 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1257	4	6	2012-08-15 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1258	4	0	2012-08-15 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1259	4	0	2012-08-15 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1260	4	9	2012-08-15 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1261	4	11	2012-08-15 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1262	5	0	2012-08-15 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1263	5	0	2012-08-15 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1264	5	11	2012-08-15 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1265	6	6	2012-08-15 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1266	6	0	2012-08-15 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1267	6	13	2012-08-15 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1268	6	11	2012-08-15 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1269	6	10	2012-08-15 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1270	6	8	2012-08-15 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1271	6	13	2012-08-15 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1272	6	12	2012-08-15 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1273	7	6	2012-08-15 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1274	7	8	2012-08-15 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1275	8	6	2012-08-15 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1276	8	3	2012-08-15 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1277	8	2	2012-08-15 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1278	8	3	2012-08-15 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1279	8	2	2012-08-15 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1280	8	3	2012-08-15 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1281	8	0	2012-08-15 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1282	8	8	2012-08-15 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1283	8	3	2012-08-15 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1284	8	14	2012-08-15 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1285	8	1	2012-08-15 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1286	8	6	2012-08-15 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1287	0	4	2012-08-16 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1288	0	0	2012-08-16 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1289	0	5	2012-08-16 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1290	0	14	2012-08-16 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1291	0	0	2012-08-16 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1292	0	0	2012-08-16 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1293	1	12	2012-08-16 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1294	1	0	2012-08-16 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1295	1	11	2012-08-16 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1296	1	8	2012-08-16 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1297	1	12	2012-08-16 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1298	2	5	2012-08-16 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1299	2	14	2012-08-16 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1300	2	1	2012-08-16 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1301	2	2	2012-08-16 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1302	2	9	2012-08-16 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1303	2	15	2012-08-16 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1304	3	6	2012-08-16 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1305	3	10	2012-08-16 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1306	3	3	2012-08-16 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1307	4	1	2012-08-16 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1308	4	0	2012-08-16 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1309	4	1	2012-08-16 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1310	4	9	2012-08-16 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1311	4	8	2012-08-16 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1312	4	14	2012-08-16 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1313	4	13	2012-08-16 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1314	4	8	2012-08-16 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1315	5	0	2012-08-16 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1316	6	0	2012-08-16 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1317	6	0	2012-08-16 11:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1318	6	12	2012-08-16 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1319	6	5	2012-08-16 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1320	6	0	2012-08-16 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1321	7	7	2012-08-16 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1322	7	7	2012-08-16 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1323	7	13	2012-08-16 14:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1324	7	4	2012-08-16 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1325	7	10	2012-08-16 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1326	8	7	2012-08-16 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1327	8	3	2012-08-16 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1328	8	3	2012-08-16 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1329	8	3	2012-08-16 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1330	8	12	2012-08-16 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1331	8	3	2012-08-16 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1332	8	15	2012-08-16 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1333	8	3	2012-08-16 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1334	8	4	2012-08-16 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1335	8	3	2012-08-16 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1336	8	12	2012-08-16 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1337	0	0	2012-08-17 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1338	0	14	2012-08-17 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1339	0	6	2012-08-17 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1340	0	10	2012-08-17 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1341	0	14	2012-08-17 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1342	1	10	2012-08-17 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1343	1	0	2012-08-17 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1344	1	11	2012-08-17 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1345	1	0	2012-08-17 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1346	1	16	2012-08-17 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1347	2	1	2012-08-17 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1348	2	1	2012-08-17 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1349	2	11	2012-08-17 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1350	2	2	2012-08-17 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1351	2	1	2012-08-17 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1352	3	10	2012-08-17 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1353	3	15	2012-08-17 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1354	3	13	2012-08-17 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1355	3	15	2012-08-17 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1356	4	9	2012-08-17 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1357	4	6	2012-08-17 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1358	4	3	2012-08-17 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1359	4	3	2012-08-17 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1360	4	0	2012-08-17 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1361	4	16	2012-08-17 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1362	4	0	2012-08-17 16:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1363	4	9	2012-08-17 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1364	5	4	2012-08-17 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1365	5	0	2012-08-17 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1366	6	0	2012-08-17 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1367	6	12	2012-08-17 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1368	6	0	2012-08-17 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1369	6	6	2012-08-17 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1370	6	0	2012-08-17 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1371	6	0	2012-08-17 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1372	6	12	2012-08-17 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1373	6	6	2012-08-17 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1374	7	8	2012-08-17 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1375	7	13	2012-08-17 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1376	7	15	2012-08-17 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1377	7	7	2012-08-17 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1378	8	16	2012-08-17 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1379	8	16	2012-08-17 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1380	8	14	2012-08-17 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1381	8	0	2012-08-17 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1382	8	2	2012-08-17 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1383	8	3	2012-08-17 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1384	8	3	2012-08-17 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1385	8	8	2012-08-17 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1386	8	16	2012-08-17 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1387	8	4	2012-08-17 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1388	8	6	2012-08-17 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1389	8	12	2012-08-17 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1390	0	5	2012-08-18 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1391	0	0	2012-08-18 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1392	0	5	2012-08-18 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1393	0	0	2012-08-18 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1394	1	8	2012-08-18 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1395	1	15	2012-08-18 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1396	1	0	2012-08-18 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1397	1	7	2012-08-18 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1398	1	12	2012-08-18 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1399	2	1	2012-08-18 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1400	2	1	2012-08-18 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1401	2	2	2012-08-18 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1402	2	14	2012-08-18 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1403	3	15	2012-08-18 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1404	3	15	2012-08-18 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1405	3	12	2012-08-18 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1406	3	1	2012-08-18 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1407	4	16	2012-08-18 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1408	4	3	2012-08-18 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1409	4	4	2012-08-18 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1410	4	3	2012-08-18 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1411	4	11	2012-08-18 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1412	4	0	2012-08-18 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1413	4	0	2012-08-18 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1414	4	5	2012-08-18 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1415	4	0	2012-08-18 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1416	5	0	2012-08-18 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1417	6	12	2012-08-18 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1418	6	0	2012-08-18 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1419	6	4	2012-08-18 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1420	6	0	2012-08-18 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1421	6	14	2012-08-18 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1422	6	0	2012-08-18 16:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1423	6	8	2012-08-18 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1424	7	8	2012-08-18 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1425	7	8	2012-08-18 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1426	7	15	2012-08-18 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1427	7	15	2012-08-18 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1428	7	1	2012-08-18 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1429	8	3	2012-08-18 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1430	8	6	2012-08-18 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1431	8	16	2012-08-18 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1432	8	16	2012-08-18 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1433	8	2	2012-08-18 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1434	8	16	2012-08-18 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1435	8	11	2012-08-18 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1436	8	16	2012-08-18 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1437	8	0	2012-08-18 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1438	8	3	2012-08-18 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1439	0	12	2012-08-19 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1440	0	16	2012-08-19 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1441	0	6	2012-08-19 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1442	0	6	2012-08-19 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1443	1	10	2012-08-19 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1444	1	7	2012-08-19 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1445	1	10	2012-08-19 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1446	1	0	2012-08-19 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1447	2	1	2012-08-19 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1448	2	5	2012-08-19 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1449	2	14	2012-08-19 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1450	2	2	2012-08-19 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1451	3	16	2012-08-19 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1452	3	10	2012-08-19 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1453	3	15	2012-08-19 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1454	3	14	2012-08-19 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1455	3	3	2012-08-19 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1456	4	0	2012-08-19 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1457	4	5	2012-08-19 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1458	4	1	2012-08-19 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1459	4	5	2012-08-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1460	4	16	2012-08-19 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1461	4	1	2012-08-19 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1462	5	0	2012-08-19 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1463	5	0	2012-08-19 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1464	6	0	2012-08-19 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1465	6	12	2012-08-19 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1466	6	0	2012-08-19 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1467	6	11	2012-08-19 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1468	6	16	2012-08-19 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1469	6	0	2012-08-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1470	6	0	2012-08-19 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1471	7	6	2012-08-19 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1472	7	5	2012-08-19 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1473	7	13	2012-08-19 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1474	7	15	2012-08-19 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1475	7	4	2012-08-19 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1476	8	0	2012-08-19 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1477	8	3	2012-08-19 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1478	8	4	2012-08-19 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1479	8	6	2012-08-19 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1480	8	1	2012-08-19 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1481	8	16	2012-08-19 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1482	8	2	2012-08-19 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1483	8	8	2012-08-19 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1484	8	12	2012-08-19 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1485	0	10	2012-08-20 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1486	0	10	2012-08-20 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1487	0	14	2012-08-20 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1488	0	4	2012-08-20 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1489	0	14	2012-08-20 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1490	0	16	2012-08-20 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1491	1	9	2012-08-20 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1492	1	16	2012-08-20 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1493	1	0	2012-08-20 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1494	1	10	2012-08-20 13:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1495	1	6	2012-08-20 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1496	1	8	2012-08-20 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1497	2	8	2012-08-20 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1498	2	5	2012-08-20 10:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1499	2	1	2012-08-20 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1500	2	1	2012-08-20 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1501	2	14	2012-08-20 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1502	3	1	2012-08-20 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1503	3	4	2012-08-20 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1504	3	8	2012-08-20 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1505	3	11	2012-08-20 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1506	3	3	2012-08-20 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1507	4	6	2012-08-20 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1508	4	3	2012-08-20 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1509	4	6	2012-08-20 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1510	4	13	2012-08-20 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1511	4	16	2012-08-20 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1512	4	5	2012-08-20 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1513	4	0	2012-08-20 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1514	4	16	2012-08-20 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1515	4	16	2012-08-20 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1516	4	0	2012-08-20 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1517	6	16	2012-08-20 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1518	6	13	2012-08-20 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1519	6	0	2012-08-20 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1520	6	6	2012-08-20 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1521	6	11	2012-08-20 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1522	6	0	2012-08-20 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1523	6	8	2012-08-20 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1524	6	6	2012-08-20 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1525	7	5	2012-08-20 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1526	7	1	2012-08-20 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1527	7	17	2012-08-20 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1528	7	6	2012-08-20 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1529	7	9	2012-08-20 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1530	7	17	2012-08-20 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1531	8	15	2012-08-20 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1532	8	3	2012-08-20 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1533	8	0	2012-08-20 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1534	8	2	2012-08-20 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1535	8	3	2012-08-20 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1536	8	2	2012-08-20 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1537	0	14	2012-08-21 09:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1538	0	0	2012-08-21 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1539	0	0	2012-08-21 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1540	1	11	2012-08-21 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1541	1	9	2012-08-21 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1542	1	10	2012-08-21 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1543	1	7	2012-08-21 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1544	1	10	2012-08-21 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1545	2	15	2012-08-21 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1546	2	1	2012-08-21 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1547	2	17	2012-08-21 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1548	2	2	2012-08-21 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1549	2	1	2012-08-21 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1550	2	15	2012-08-21 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1551	3	8	2012-08-21 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1552	3	16	2012-08-21 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1553	3	2	2012-08-21 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1554	3	1	2012-08-21 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1555	4	0	2012-08-21 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1556	4	7	2012-08-21 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1557	4	13	2012-08-21 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1558	4	14	2012-08-21 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1559	4	0	2012-08-21 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1560	4	16	2012-08-21 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1561	4	0	2012-08-21 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1562	4	0	2012-08-21 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1563	5	0	2012-08-21 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1564	5	0	2012-08-21 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1565	6	0	2012-08-21 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1566	6	0	2012-08-21 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1567	6	0	2012-08-21 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1568	6	0	2012-08-21 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1569	6	0	2012-08-21 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1570	6	0	2012-08-21 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1571	7	10	2012-08-21 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1572	7	13	2012-08-21 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1573	7	5	2012-08-21 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1574	7	5	2012-08-21 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1575	8	11	2012-08-21 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1576	8	6	2012-08-21 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1577	8	3	2012-08-21 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1578	8	16	2012-08-21 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1579	8	6	2012-08-21 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1580	8	3	2012-08-21 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1581	8	3	2012-08-21 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1582	8	3	2012-08-21 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1583	8	6	2012-08-21 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1584	8	16	2012-08-21 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1585	8	1	2012-08-21 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1586	0	11	2012-08-22 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1587	0	5	2012-08-22 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1588	0	0	2012-08-22 11:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1589	0	16	2012-08-22 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1590	0	11	2012-08-22 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1591	1	0	2012-08-22 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1592	1	0	2012-08-22 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1593	1	0	2012-08-22 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1594	1	7	2012-08-22 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1595	1	12	2012-08-22 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1596	2	10	2012-08-22 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1597	2	0	2012-08-22 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1598	2	1	2012-08-22 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1599	2	11	2012-08-22 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1600	2	0	2012-08-22 16:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1601	3	11	2012-08-22 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1602	3	3	2012-08-22 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1603	3	13	2012-08-22 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1604	3	1	2012-08-22 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1605	3	17	2012-08-22 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1606	3	15	2012-08-22 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1607	3	10	2012-08-22 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1608	3	15	2012-08-22 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1609	4	5	2012-08-22 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1610	4	9	2012-08-22 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1611	4	14	2012-08-22 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1612	4	0	2012-08-22 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1613	4	9	2012-08-22 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1614	4	0	2012-08-22 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1615	4	13	2012-08-22 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1616	4	3	2012-08-22 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1617	4	6	2012-08-22 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1618	4	0	2012-08-22 18:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1619	5	0	2012-08-22 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1620	6	8	2012-08-22 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1621	6	0	2012-08-22 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1622	6	12	2012-08-22 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1623	6	0	2012-08-22 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1624	6	6	2012-08-22 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1625	6	12	2012-08-22 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1626	6	0	2012-08-22 18:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1627	7	6	2012-08-22 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1628	7	4	2012-08-22 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1629	7	8	2012-08-22 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1630	7	1	2012-08-22 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1631	7	13	2012-08-22 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1632	8	8	2012-08-22 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1633	8	7	2012-08-22 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1634	8	8	2012-08-22 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1635	8	6	2012-08-22 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1636	8	3	2012-08-22 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1637	8	2	2012-08-22 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1638	8	15	2012-08-22 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1639	8	2	2012-08-22 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1640	8	3	2012-08-22 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1641	8	4	2012-08-22 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1642	8	9	2012-08-22 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1643	0	11	2012-08-23 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1644	0	14	2012-08-23 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1645	0	10	2012-08-23 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1646	0	5	2012-08-23 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1647	0	12	2012-08-23 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1648	1	12	2012-08-23 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1649	1	11	2012-08-23 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1650	1	0	2012-08-23 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1651	1	16	2012-08-23 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1652	1	10	2012-08-23 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1653	1	9	2012-08-23 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1654	1	15	2012-08-23 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1655	2	14	2012-08-23 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1656	2	1	2012-08-23 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1657	2	9	2012-08-23 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1658	2	8	2012-08-23 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1659	3	15	2012-08-23 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1660	3	3	2012-08-23 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1661	3	4	2012-08-23 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1662	3	1	2012-08-23 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1663	3	17	2012-08-23 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1664	3	3	2012-08-23 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1665	3	16	2012-08-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1666	4	0	2012-08-23 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1667	4	0	2012-08-23 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1668	4	11	2012-08-23 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1669	4	1	2012-08-23 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1670	4	5	2012-08-23 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1671	4	14	2012-08-23 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1672	4	2	2012-08-23 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1673	4	8	2012-08-23 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1674	4	3	2012-08-23 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1675	5	0	2012-08-23 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1676	5	0	2012-08-23 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1677	6	1	2012-08-23 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1678	6	0	2012-08-23 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1679	6	13	2012-08-23 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1680	6	12	2012-08-23 14:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1681	6	17	2012-08-23 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1682	7	4	2012-08-23 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1683	7	8	2012-08-23 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1684	7	13	2012-08-23 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1685	7	11	2012-08-23 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1686	7	10	2012-08-23 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1687	7	6	2012-08-23 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1688	8	17	2012-08-23 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1689	8	16	2012-08-23 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1690	8	6	2012-08-23 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1691	8	4	2012-08-23 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1692	8	3	2012-08-23 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1693	8	3	2012-08-23 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1694	8	9	2012-08-23 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1695	8	1	2012-08-23 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1696	8	16	2012-08-23 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1697	8	16	2012-08-23 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1698	8	17	2012-08-23 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1699	8	16	2012-08-23 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1700	0	14	2012-08-24 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1701	0	2	2012-08-24 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1702	0	0	2012-08-24 12:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1703	0	6	2012-08-24 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1704	0	16	2012-08-24 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1705	0	8	2012-08-24 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1706	1	12	2012-08-24 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1707	1	9	2012-08-24 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1708	1	0	2012-08-24 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1709	1	8	2012-08-24 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1710	1	10	2012-08-24 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1711	1	12	2012-08-24 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1712	2	13	2012-08-24 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1713	2	0	2012-08-24 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1714	2	15	2012-08-24 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1715	2	16	2012-08-24 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1716	2	12	2012-08-24 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1717	3	1	2012-08-24 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1718	3	3	2012-08-24 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1719	3	17	2012-08-24 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1720	3	8	2012-08-24 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1721	3	15	2012-08-24 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1722	3	10	2012-08-24 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1723	4	0	2012-08-24 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1724	4	3	2012-08-24 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1725	4	9	2012-08-24 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1726	4	14	2012-08-24 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1727	4	3	2012-08-24 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1728	4	0	2012-08-24 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1729	4	3	2012-08-24 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1730	4	0	2012-08-24 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1731	5	0	2012-08-24 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1732	6	6	2012-08-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1733	6	0	2012-08-24 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1734	6	14	2012-08-24 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1735	6	0	2012-08-24 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1736	6	11	2012-08-24 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1737	6	14	2012-08-24 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1738	6	0	2012-08-24 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1739	7	15	2012-08-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1740	7	17	2012-08-24 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1741	7	13	2012-08-24 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1742	7	4	2012-08-24 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1743	7	2	2012-08-24 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1744	8	3	2012-08-24 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1745	8	16	2012-08-24 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1746	8	16	2012-08-24 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1747	8	14	2012-08-24 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1748	8	14	2012-08-24 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1749	0	8	2012-08-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1750	0	7	2012-08-25 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1751	0	0	2012-08-25 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1752	0	5	2012-08-25 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1753	0	0	2012-08-25 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1754	0	17	2012-08-25 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1755	1	9	2012-08-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1756	1	11	2012-08-25 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1757	1	0	2012-08-25 13:30:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1758	1	15	2012-08-25 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1759	2	2	2012-08-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1760	2	1	2012-08-25 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1761	2	14	2012-08-25 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1762	2	1	2012-08-25 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1763	2	1	2012-08-25 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1764	3	16	2012-08-25 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1765	3	16	2012-08-25 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1766	3	0	2012-08-25 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1767	3	15	2012-08-25 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1768	3	11	2012-08-25 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1769	3	3	2012-08-25 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1770	4	14	2012-08-25 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1771	4	0	2012-08-25 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1772	4	6	2012-08-25 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1773	4	10	2012-08-25 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1774	4	3	2012-08-25 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1775	4	11	2012-08-25 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1776	4	13	2012-08-25 15:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1777	4	3	2012-08-25 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1778	5	11	2012-08-25 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1779	5	0	2012-08-25 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1780	6	0	2012-08-25 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1781	6	0	2012-08-25 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1782	6	12	2012-08-25 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1783	6	0	2012-08-25 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1784	6	6	2012-08-25 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1785	7	15	2012-08-25 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1786	7	2	2012-08-25 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1787	7	4	2012-08-25 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1788	7	13	2012-08-25 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1789	7	8	2012-08-25 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1790	7	0	2012-08-25 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1791	8	15	2012-08-25 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1792	8	3	2012-08-25 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1793	8	16	2012-08-25 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1794	8	2	2012-08-25 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1795	8	16	2012-08-25 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1796	8	3	2012-08-25 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1797	8	16	2012-08-25 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1798	8	6	2012-08-25 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1799	8	3	2012-08-25 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1800	8	2	2012-08-25 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1801	8	16	2012-08-25 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1802	0	11	2012-08-26 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1803	0	6	2012-08-26 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1804	0	11	2012-08-26 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1805	0	0	2012-08-26 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1806	0	6	2012-08-26 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1807	0	5	2012-08-26 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1808	1	12	2012-08-26 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1809	1	11	2012-08-26 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1810	1	0	2012-08-26 13:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1811	1	13	2012-08-26 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1812	1	0	2012-08-26 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1813	2	1	2012-08-26 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1814	2	16	2012-08-26 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1815	2	1	2012-08-26 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1816	2	1	2012-08-26 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1817	2	0	2012-08-26 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1818	3	3	2012-08-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1819	3	13	2012-08-26 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1820	3	10	2012-08-26 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1821	3	0	2012-08-26 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1822	3	6	2012-08-26 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1823	4	0	2012-08-26 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1824	4	14	2012-08-26 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1825	4	0	2012-08-26 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1826	4	10	2012-08-26 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1827	4	0	2012-08-26 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1828	4	3	2012-08-26 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1829	5	0	2012-08-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1830	6	0	2012-08-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1831	6	0	2012-08-26 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1832	6	12	2012-08-26 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1833	6	0	2012-08-26 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1834	6	12	2012-08-26 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1835	6	0	2012-08-26 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1836	7	4	2012-08-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1837	7	17	2012-08-26 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1838	7	8	2012-08-26 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1839	7	4	2012-08-26 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1840	7	7	2012-08-26 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1841	7	7	2012-08-26 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1842	7	0	2012-08-26 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1843	8	15	2012-08-26 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1844	8	3	2012-08-26 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1845	8	3	2012-08-26 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1846	8	16	2012-08-26 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1847	8	3	2012-08-26 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1848	8	15	2012-08-26 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1849	8	3	2012-08-26 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1850	8	16	2012-08-26 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1851	8	3	2012-08-26 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1852	8	0	2012-08-26 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1853	8	0	2012-08-26 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1854	8	3	2012-08-26 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1855	8	8	2012-08-26 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1856	0	0	2012-08-27 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1857	0	5	2012-08-27 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1858	0	17	2012-08-27 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1859	0	7	2012-08-27 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1860	0	0	2012-08-27 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1861	1	12	2012-08-27 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1862	1	0	2012-08-27 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1863	1	9	2012-08-27 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1864	1	8	2012-08-27 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1865	1	9	2012-08-27 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1866	1	10	2012-08-27 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1867	2	0	2012-08-27 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1868	2	0	2012-08-27 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1869	2	2	2012-08-27 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1870	2	2	2012-08-27 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1871	3	15	2012-08-27 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1872	3	0	2012-08-27 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1873	3	11	2012-08-27 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1874	3	16	2012-08-27 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1875	3	16	2012-08-27 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1876	4	9	2012-08-27 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1877	4	5	2012-08-27 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1878	4	3	2012-08-27 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1879	4	0	2012-08-27 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1880	4	8	2012-08-27 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1881	4	13	2012-08-27 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1882	4	11	2012-08-27 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1883	4	0	2012-08-27 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1884	4	11	2012-08-27 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1885	4	12	2012-08-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1886	5	20	2012-08-27 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1887	5	0	2012-08-27 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1888	5	12	2012-08-27 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1889	6	0	2012-08-27 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1890	6	0	2012-08-27 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1891	6	6	2012-08-27 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1892	6	0	2012-08-27 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1893	6	12	2012-08-27 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1894	6	0	2012-08-27 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1895	6	1	2012-08-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1896	7	17	2012-08-27 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1897	7	4	2012-08-27 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1898	7	2	2012-08-27 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1899	7	14	2012-08-27 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1900	7	4	2012-08-27 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1901	7	13	2012-08-27 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1902	7	8	2012-08-27 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1903	7	15	2012-08-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1904	8	9	2012-08-27 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1905	8	16	2012-08-27 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1906	8	16	2012-08-27 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1907	8	3	2012-08-27 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1908	8	9	2012-08-27 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1909	8	16	2012-08-27 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1910	8	4	2012-08-27 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1911	8	12	2012-08-27 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1912	8	11	2012-08-27 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1913	8	3	2012-08-27 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1914	0	11	2012-08-28 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1915	0	14	2012-08-28 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1916	0	10	2012-08-28 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1917	0	17	2012-08-28 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1918	0	6	2012-08-28 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1919	0	16	2012-08-28 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1920	1	12	2012-08-28 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1921	1	11	2012-08-28 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1922	1	9	2012-08-28 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1923	1	12	2012-08-28 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1924	2	17	2012-08-28 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1925	2	1	2012-08-28 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1926	2	2	2012-08-28 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1927	2	1	2012-08-28 13:30:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1928	2	0	2012-08-28 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1929	3	8	2012-08-28 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1930	3	15	2012-08-28 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1931	3	20	2012-08-28 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1932	3	17	2012-08-28 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1933	4	8	2012-08-28 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1934	4	3	2012-08-28 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1935	4	0	2012-08-28 11:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1936	4	17	2012-08-28 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1937	4	10	2012-08-28 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1938	4	0	2012-08-28 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1939	4	13	2012-08-28 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1940	4	20	2012-08-28 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1941	5	0	2012-08-28 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1942	5	7	2012-08-28 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1943	5	0	2012-08-28 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1944	5	0	2012-08-28 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1945	6	6	2012-08-28 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1946	6	0	2012-08-28 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1947	6	14	2012-08-28 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1948	6	12	2012-08-28 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1949	7	13	2012-08-28 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1950	7	2	2012-08-28 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1951	7	8	2012-08-28 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1952	7	9	2012-08-28 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1953	7	15	2012-08-28 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1954	7	4	2012-08-28 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1955	7	2	2012-08-28 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1956	7	4	2012-08-28 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1957	8	16	2012-08-28 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1958	8	3	2012-08-28 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1959	8	16	2012-08-28 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1960	8	2	2012-08-28 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1961	8	12	2012-08-28 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1962	8	16	2012-08-28 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1963	8	4	2012-08-28 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1964	8	16	2012-08-28 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1965	8	3	2012-08-28 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1966	8	0	2012-08-28 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1967	0	0	2012-08-29 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1968	0	7	2012-08-29 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1969	0	10	2012-08-29 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1970	0	0	2012-08-29 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1971	0	9	2012-08-29 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1972	0	0	2012-08-29 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1973	1	12	2012-08-29 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1974	1	10	2012-08-29 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1975	1	9	2012-08-29 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1976	1	10	2012-08-29 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1977	1	8	2012-08-29 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1978	2	1	2012-08-29 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1979	2	1	2012-08-29 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1980	2	8	2012-08-29 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1981	2	8	2012-08-29 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1982	2	6	2012-08-29 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1983	2	1	2012-08-29 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1984	2	11	2012-08-29 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1985	3	3	2012-08-29 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1986	3	3	2012-08-29 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1987	3	1	2012-08-29 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1988	3	14	2012-08-29 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1989	3	16	2012-08-29 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1990	3	3	2012-08-29 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1991	4	0	2012-08-29 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1992	4	13	2012-08-29 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1993	4	0	2012-08-29 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1994	4	1	2012-08-29 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1995	4	0	2012-08-29 13:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1996	4	5	2012-08-29 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1997	4	0	2012-08-29 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1998	4	14	2012-08-29 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('1999	4	20	2012-08-29 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2000	6	0	2012-08-29 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2001	6	6	2012-08-29 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2002	6	0	2012-08-29 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2003	6	0	2012-08-29 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2004	6	12	2012-08-29 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2005	6	12	2012-08-29 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2006	7	8	2012-08-29 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2007	7	15	2012-08-29 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2008	7	4	2012-08-29 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2009	7	2	2012-08-29 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2010	7	13	2012-08-29 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2011	7	4	2012-08-29 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2012	7	8	2012-08-29 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2013	8	15	2012-08-29 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2014	8	0	2012-08-29 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2015	8	3	2012-08-29 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2016	8	16	2012-08-29 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2017	8	3	2012-08-29 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2018	8	0	2012-08-29 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2019	8	16	2012-08-29 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2020	8	1	2012-08-29 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2021	0	0	2012-08-30 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2022	0	17	2012-08-30 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2023	0	5	2012-08-30 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2024	0	0	2012-08-30 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2025	0	5	2012-08-30 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2026	1	8	2012-08-30 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2027	1	10	2012-08-30 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2028	1	11	2012-08-30 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2029	1	0	2012-08-30 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2030	1	0	2012-08-30 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2031	2	1	2012-08-30 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2032	2	15	2012-08-30 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2033	2	1	2012-08-30 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2034	2	7	2012-08-30 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2035	2	21	2012-08-30 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2036	3	10	2012-08-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2037	3	6	2012-08-30 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2038	3	14	2012-08-30 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2039	3	20	2012-08-30 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2040	3	20	2012-08-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2041	3	16	2012-08-30 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2042	3	6	2012-08-30 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2043	4	0	2012-08-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2044	4	13	2012-08-30 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2045	4	0	2012-08-30 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2046	4	10	2012-08-30 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2047	4	11	2012-08-30 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2048	4	1	2012-08-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2049	4	0	2012-08-30 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2050	6	12	2012-08-30 08:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2051	6	12	2012-08-30 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2052	6	0	2012-08-30 13:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2053	6	0	2012-08-30 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2054	6	12	2012-08-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2055	6	0	2012-08-30 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2056	7	0	2012-08-30 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2057	7	4	2012-08-30 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2058	7	15	2012-08-30 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2059	7	8	2012-08-30 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2060	8	1	2012-08-30 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2061	8	21	2012-08-30 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2062	8	3	2012-08-30 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2063	8	20	2012-08-30 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2064	8	17	2012-08-30 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2065	8	3	2012-08-30 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2066	8	2	2012-08-30 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2067	8	21	2012-08-30 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2068	8	3	2012-08-30 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2069	8	6	2012-08-30 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2070	8	16	2012-08-30 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2071	8	9	2012-08-30 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2072	0	5	2012-08-31 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2073	0	0	2012-08-31 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2074	0	11	2012-08-31 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2075	0	6	2012-08-31 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2076	0	2	2012-08-31 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2077	0	5	2012-08-31 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2078	1	0	2012-08-31 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2079	1	0	2012-08-31 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2080	1	12	2012-08-31 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2081	1	8	2012-08-31 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2082	1	10	2012-08-31 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2083	1	8	2012-08-31 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2084	2	2	2012-08-31 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2085	2	0	2012-08-31 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2086	2	16	2012-08-31 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2087	2	21	2012-08-31 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2088	2	21	2012-08-31 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2089	2	0	2012-08-31 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2090	3	20	2012-08-31 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2091	3	10	2012-08-31 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2092	3	3	2012-08-31 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2093	3	20	2012-08-31 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2094	4	0	2012-08-31 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2095	4	0	2012-08-31 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2096	4	14	2012-08-31 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2097	4	0	2012-08-31 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2098	4	11	2012-08-31 14:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2099	4	9	2012-08-31 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2100	4	6	2012-08-31 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2101	4	11	2012-08-31 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2102	5	0	2012-08-31 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2103	5	0	2012-08-31 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2104	5	0	2012-08-31 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2105	5	11	2012-08-31 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2106	6	1	2012-08-31 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2107	6	0	2012-08-31 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2108	6	0	2012-08-31 14:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2109	6	12	2012-08-31 18:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2110	7	9	2012-08-31 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2111	7	5	2012-08-31 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2112	7	17	2012-08-31 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2113	7	15	2012-08-31 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2114	7	17	2012-08-31 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2115	7	13	2012-08-31 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2116	7	10	2012-08-31 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2117	8	17	2012-08-31 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2118	8	3	2012-08-31 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2119	8	21	2012-08-31 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2120	8	3	2012-08-31 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2121	8	15	2012-08-31 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2122	8	3	2012-08-31 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2123	8	16	2012-08-31 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2124	8	6	2012-08-31 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2125	8	3	2012-08-31 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2126	8	2	2012-08-31 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2127	8	20	2012-08-31 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2128	8	21	2012-08-31 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2129	8	21	2012-08-31 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2130	0	0	2012-09-01 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2131	0	17	2012-09-01 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2132	0	7	2012-09-01 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2133	0	6	2012-09-01 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2134	0	4	2012-09-01 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2135	1	0	2012-09-01 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2136	1	11	2012-09-01 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2137	1	10	2012-09-01 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2138	1	12	2012-09-01 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2139	1	0	2012-09-01 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2140	1	12	2012-09-01 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2141	2	1	2012-09-01 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2142	2	21	2012-09-01 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2143	2	1	2012-09-01 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2144	2	15	2012-09-01 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2145	3	17	2012-09-01 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2146	3	13	2012-09-01 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2147	3	15	2012-09-01 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2148	3	17	2012-09-01 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2149	3	17	2012-09-01 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2150	3	16	2012-09-01 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2151	3	0	2012-09-01 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2152	3	16	2012-09-01 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2153	3	17	2012-09-01 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2154	4	8	2012-09-01 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2155	4	9	2012-09-01 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2156	4	11	2012-09-01 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2157	4	0	2012-09-01 13:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2158	4	0	2012-09-01 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2159	4	16	2012-09-01 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2160	5	0	2012-09-01 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2161	5	7	2012-09-01 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2162	6	0	2012-09-01 09:30:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2163	6	4	2012-09-01 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2164	6	0	2012-09-01 16:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2165	6	2	2012-09-01 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2166	7	21	2012-09-01 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2167	7	2	2012-09-01 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2168	7	1	2012-09-01 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2169	7	15	2012-09-01 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2170	7	13	2012-09-01 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2171	7	9	2012-09-01 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2172	8	17	2012-09-01 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2173	8	1	2012-09-01 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2174	8	14	2012-09-01 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2175	8	21	2012-09-01 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2176	8	21	2012-09-01 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2177	8	3	2012-09-01 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2178	8	20	2012-09-01 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2179	8	3	2012-09-01 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2180	8	7	2012-09-01 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2181	0	10	2012-09-02 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2182	0	0	2012-09-02 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2183	0	12	2012-09-02 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2184	0	5	2012-09-02 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2185	0	6	2012-09-02 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2186	1	15	2012-09-02 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2187	1	11	2012-09-02 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2188	1	10	2012-09-02 16:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2189	1	0	2012-09-02 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2190	2	0	2012-09-02 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2191	2	21	2012-09-02 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2192	2	0	2012-09-02 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2193	2	9	2012-09-02 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2194	2	5	2012-09-02 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2195	2	0	2012-09-02 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2196	3	15	2012-09-02 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2197	3	3	2012-09-02 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2198	3	15	2012-09-02 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2199	3	15	2012-09-02 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2200	3	17	2012-09-02 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2201	4	0	2012-09-02 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2202	4	0	2012-09-02 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2203	4	5	2012-09-02 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2204	4	0	2012-09-02 13:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2205	4	20	2012-09-02 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2206	4	8	2012-09-02 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2207	4	14	2012-09-02 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2208	4	0	2012-09-02 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2209	5	0	2012-09-02 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2210	5	0	2012-09-02 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2211	6	0	2012-09-02 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2212	6	0	2012-09-02 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2213	6	10	2012-09-02 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2214	6	0	2012-09-02 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2215	6	0	2012-09-02 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2216	6	0	2012-09-02 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2217	7	17	2012-09-02 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2218	7	2	2012-09-02 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2219	7	22	2012-09-02 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2220	7	7	2012-09-02 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2221	7	8	2012-09-02 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2222	7	2	2012-09-02 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2223	7	2	2012-09-02 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2224	8	20	2012-09-02 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2225	8	3	2012-09-02 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2226	8	16	2012-09-02 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2227	8	3	2012-09-02 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2228	8	3	2012-09-02 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2229	8	7	2012-09-02 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2230	8	16	2012-09-02 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2231	8	16	2012-09-02 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2232	8	3	2012-09-02 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2233	8	21	2012-09-02 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2234	8	3	2012-09-02 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2235	8	16	2012-09-02 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2236	0	0	2012-09-03 08:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2237	0	11	2012-09-03 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2238	0	14	2012-09-03 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2239	0	0	2012-09-03 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2240	0	16	2012-09-03 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2241	1	12	2012-09-03 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2242	1	0	2012-09-03 10:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2243	1	0	2012-09-03 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2244	1	8	2012-09-03 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2245	1	11	2012-09-03 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2246	2	21	2012-09-03 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2247	2	12	2012-09-03 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2248	2	9	2012-09-03 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2249	2	17	2012-09-03 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2250	2	0	2012-09-03 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2251	3	22	2012-09-03 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2252	3	21	2012-09-03 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2253	3	13	2012-09-03 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2254	3	20	2012-09-03 13:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2255	3	17	2012-09-03 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2256	3	20	2012-09-03 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2257	4	0	2012-09-03 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2258	4	8	2012-09-03 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2259	4	0	2012-09-03 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2260	4	8	2012-09-03 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2261	4	0	2012-09-03 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2262	4	3	2012-09-03 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2263	4	0	2012-09-03 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2264	4	14	2012-09-03 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2265	5	10	2012-09-03 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2266	6	6	2012-09-03 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2267	6	0	2012-09-03 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2268	6	0	2012-09-03 13:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2269	6	6	2012-09-03 16:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2270	6	12	2012-09-03 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2271	6	0	2012-09-03 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2272	7	15	2012-09-03 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2273	7	4	2012-09-03 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2274	7	15	2012-09-03 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2275	7	15	2012-09-03 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2276	7	1	2012-09-03 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2277	7	7	2012-09-03 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2278	8	2	2012-09-03 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2279	8	7	2012-09-03 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2280	8	16	2012-09-03 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2281	8	1	2012-09-03 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2282	8	0	2012-09-03 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2283	8	3	2012-09-03 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2284	8	21	2012-09-03 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2285	8	3	2012-09-03 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2286	8	21	2012-09-03 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2287	8	21	2012-09-03 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2288	8	16	2012-09-03 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2289	8	20	2012-09-03 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2290	8	21	2012-09-03 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2291	0	11	2012-09-04 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2292	0	0	2012-09-04 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2293	0	10	2012-09-04 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2294	0	0	2012-09-04 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2295	0	5	2012-09-04 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2296	0	0	2012-09-04 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2297	1	0	2012-09-04 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2298	1	8	2012-09-04 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2299	1	0	2012-09-04 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2300	1	0	2012-09-04 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2301	1	9	2012-09-04 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2302	1	24	2012-09-04 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2303	2	21	2012-09-04 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2304	2	14	2012-09-04 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2305	2	15	2012-09-04 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2306	2	0	2012-09-04 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2307	2	0	2012-09-04 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2308	2	5	2012-09-04 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2309	2	2	2012-09-04 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2310	3	20	2012-09-04 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2311	3	21	2012-09-04 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2312	3	17	2012-09-04 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2313	3	21	2012-09-04 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2314	3	20	2012-09-04 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2315	3	22	2012-09-04 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2316	4	0	2012-09-04 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2317	4	3	2012-09-04 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2318	4	0	2012-09-04 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2319	4	7	2012-09-04 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2320	4	0	2012-09-04 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2321	4	3	2012-09-04 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2322	4	0	2012-09-04 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2323	4	0	2012-09-04 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2324	4	11	2012-09-04 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2325	4	8	2012-09-04 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2326	5	0	2012-09-04 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2327	5	0	2012-09-04 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2328	6	0	2012-09-04 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2329	6	0	2012-09-04 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2330	6	12	2012-09-04 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2331	6	0	2012-09-04 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2332	6	5	2012-09-04 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2333	7	22	2012-09-04 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2334	7	8	2012-09-04 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2335	7	7	2012-09-04 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2336	7	24	2012-09-04 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2337	7	5	2012-09-04 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2338	7	24	2012-09-04 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2339	7	0	2012-09-04 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2340	7	14	2012-09-04 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2341	8	3	2012-09-04 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2342	8	3	2012-09-04 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2343	8	20	2012-09-04 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2344	8	21	2012-09-04 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2345	8	0	2012-09-04 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2346	8	21	2012-09-04 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2347	8	3	2012-09-04 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2348	8	8	2012-09-04 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2349	8	21	2012-09-04 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2350	8	3	2012-09-04 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2351	8	21	2012-09-04 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2352	8	16	2012-09-04 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2353	0	22	2012-09-05 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2354	0	12	2012-09-05 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2355	0	0	2012-09-05 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2356	0	2	2012-09-05 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2357	0	6	2012-09-05 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2358	0	17	2012-09-05 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2359	1	1	2012-09-05 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2360	1	10	2012-09-05 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2361	1	24	2012-09-05 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2362	1	8	2012-09-05 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2363	1	12	2012-09-05 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2364	2	7	2012-09-05 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2365	2	13	2012-09-05 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2366	2	1	2012-09-05 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2367	2	24	2012-09-05 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2368	2	1	2012-09-05 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2369	3	16	2012-09-05 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2370	3	15	2012-09-05 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2371	3	2	2012-09-05 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2372	3	10	2012-09-05 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2373	3	10	2012-09-05 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2374	4	24	2012-09-05 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2375	4	0	2012-09-05 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2376	4	0	2012-09-05 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2377	4	16	2012-09-05 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2378	4	0	2012-09-05 13:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2379	4	11	2012-09-05 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2380	4	0	2012-09-05 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2381	4	9	2012-09-05 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2382	5	0	2012-09-05 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2383	5	0	2012-09-05 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2384	5	0	2012-09-05 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2385	6	0	2012-09-05 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2386	6	0	2012-09-05 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2387	6	11	2012-09-05 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2388	6	0	2012-09-05 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2389	6	0	2012-09-05 15:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2390	7	8	2012-09-05 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2391	7	4	2012-09-05 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2392	7	15	2012-09-05 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2393	7	7	2012-09-05 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2394	7	4	2012-09-05 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2395	7	9	2012-09-05 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2396	7	5	2012-09-05 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2397	8	20	2012-09-05 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2398	8	14	2012-09-05 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2399	8	3	2012-09-05 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2400	8	20	2012-09-05 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2401	8	2	2012-09-05 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2402	8	21	2012-09-05 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2403	8	0	2012-09-05 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2404	8	9	2012-09-05 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2405	8	2	2012-09-05 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2406	8	16	2012-09-05 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2407	8	6	2012-09-05 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2408	8	8	2012-09-05 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2409	8	2	2012-09-05 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2410	8	1	2012-09-05 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2411	0	17	2012-09-06 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2412	0	11	2012-09-06 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2413	0	22	2012-09-06 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2414	0	11	2012-09-06 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2415	0	4	2012-09-06 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2416	1	0	2012-09-06 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2417	1	8	2012-09-06 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2418	1	0	2012-09-06 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2419	1	9	2012-09-06 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2420	1	12	2012-09-06 16:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2421	2	9	2012-09-06 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2422	2	15	2012-09-06 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2423	2	21	2012-09-06 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2424	2	12	2012-09-06 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2425	2	17	2012-09-06 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2426	2	1	2012-09-06 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2427	2	21	2012-09-06 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2428	3	13	2012-09-06 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2429	3	15	2012-09-06 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2430	3	17	2012-09-06 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2431	3	13	2012-09-06 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2432	3	20	2012-09-06 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2433	3	15	2012-09-06 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2434	4	0	2012-09-06 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2435	4	2	2012-09-06 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2436	4	24	2012-09-06 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2437	4	13	2012-09-06 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2438	4	0	2012-09-06 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2439	4	6	2012-09-06 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2440	4	0	2012-09-06 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2441	4	7	2012-09-06 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2442	4	16	2012-09-06 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2443	4	8	2012-09-06 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2444	5	0	2012-09-06 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2445	6	0	2012-09-06 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2446	6	0	2012-09-06 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2447	6	14	2012-09-06 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2448	6	0	2012-09-06 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2449	6	0	2012-09-06 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2450	6	0	2012-09-06 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2451	6	0	2012-09-06 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2452	6	13	2012-09-06 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2453	7	0	2012-09-06 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2454	7	15	2012-09-06 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2455	7	24	2012-09-06 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2456	7	10	2012-09-06 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2457	7	0	2012-09-06 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2458	8	21	2012-09-06 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2459	8	24	2012-09-06 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2460	8	16	2012-09-06 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2461	8	7	2012-09-06 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2462	8	9	2012-09-06 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2463	8	3	2012-09-06 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2464	8	0	2012-09-06 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2465	8	20	2012-09-06 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2466	8	24	2012-09-06 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2467	8	3	2012-09-06 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2468	8	22	2012-09-06 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2469	8	16	2012-09-06 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2470	8	2	2012-09-06 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2471	8	3	2012-09-06 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2472	0	0	2012-09-07 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2473	0	14	2012-09-07 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2474	0	0	2012-09-07 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2475	0	11	2012-09-07 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2476	0	17	2012-09-07 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2477	0	14	2012-09-07 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2478	1	9	2012-09-07 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2479	1	12	2012-09-07 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2480	1	11	2012-09-07 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2481	1	24	2012-09-07 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2482	1	12	2012-09-07 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2483	1	9	2012-09-07 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2484	2	1	2012-09-07 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2485	2	5	2012-09-07 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2486	2	1	2012-09-07 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2487	2	0	2012-09-07 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2488	2	1	2012-09-07 14:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2489	2	0	2012-09-07 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2490	2	1	2012-09-07 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2491	3	16	2012-09-07 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2492	3	15	2012-09-07 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2493	3	20	2012-09-07 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2494	3	7	2012-09-07 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2495	3	10	2012-09-07 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2496	4	3	2012-09-07 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2497	4	6	2012-09-07 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2498	4	20	2012-09-07 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2499	4	5	2012-09-07 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2500	4	16	2012-09-07 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2501	4	0	2012-09-07 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2502	4	10	2012-09-07 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2503	4	13	2012-09-07 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2504	5	24	2012-09-07 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2505	5	3	2012-09-07 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2506	6	0	2012-09-07 09:30:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2507	6	0	2012-09-07 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2508	6	6	2012-09-07 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2509	7	8	2012-09-07 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2510	7	9	2012-09-07 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2511	7	4	2012-09-07 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2512	7	15	2012-09-07 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2513	7	5	2012-09-07 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2514	7	5	2012-09-07 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2515	8	24	2012-09-07 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2516	8	3	2012-09-07 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2517	8	21	2012-09-07 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2518	8	3	2012-09-07 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2519	8	17	2012-09-07 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2520	8	3	2012-09-07 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2521	8	20	2012-09-07 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2522	8	16	2012-09-07 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2523	8	21	2012-09-07 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2524	8	4	2012-09-07 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2525	8	21	2012-09-07 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2526	8	2	2012-09-07 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2527	8	7	2012-09-07 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2528	8	16	2012-09-07 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2529	0	5	2012-09-08 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2530	0	0	2012-09-08 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2531	0	7	2012-09-08 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2532	0	0	2012-09-08 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2533	0	11	2012-09-08 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2534	0	17	2012-09-08 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2535	0	16	2012-09-08 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2536	1	10	2012-09-08 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2537	1	24	2012-09-08 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2538	1	9	2012-09-08 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2539	1	0	2012-09-08 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2540	1	9	2012-09-08 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2541	2	8	2012-09-08 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2542	2	21	2012-09-08 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2543	2	26	2012-09-08 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2544	2	1	2012-09-08 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2545	2	21	2012-09-08 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2546	2	1	2012-09-08 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2547	3	6	2012-09-08 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2548	3	2	2012-09-08 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2549	3	15	2012-09-08 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2550	3	11	2012-09-08 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2551	3	20	2012-09-08 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2552	3	20	2012-09-08 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2553	3	1	2012-09-08 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2554	3	9	2012-09-08 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2555	3	15	2012-09-08 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2556	4	20	2012-09-08 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2557	4	0	2012-09-08 09:30:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2558	4	3	2012-09-08 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2559	4	0	2012-09-08 14:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2560	4	13	2012-09-08 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2561	4	13	2012-09-08 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2562	4	0	2012-09-08 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2563	5	24	2012-09-08 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2564	6	0	2012-09-08 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2565	6	6	2012-09-08 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2566	6	0	2012-09-08 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2567	6	4	2012-09-08 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2568	6	0	2012-09-08 18:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2569	7	6	2012-09-08 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2570	7	4	2012-09-08 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2571	7	13	2012-09-08 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2572	7	0	2012-09-08 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2573	7	15	2012-09-08 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2574	7	8	2012-09-08 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2575	7	1	2012-09-08 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2576	7	15	2012-09-08 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2577	8	21	2012-09-08 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2578	8	3	2012-09-08 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2579	8	22	2012-09-08 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2580	8	0	2012-09-08 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2581	8	16	2012-09-08 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2582	8	3	2012-09-08 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2583	8	0	2012-09-08 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2584	8	6	2012-09-08 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2585	8	22	2012-09-08 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2586	8	16	2012-09-08 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2587	8	7	2012-09-08 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2588	8	3	2012-09-08 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2589	8	8	2012-09-08 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2590	0	5	2012-09-09 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2591	0	16	2012-09-09 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2592	0	26	2012-09-09 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2593	0	7	2012-09-09 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2594	0	0	2012-09-09 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2595	0	24	2012-09-09 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2596	1	8	2012-09-09 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2597	1	0	2012-09-09 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2598	1	16	2012-09-09 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2599	1	10	2012-09-09 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2600	1	15	2012-09-09 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2601	1	0	2012-09-09 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2602	2	21	2012-09-09 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2603	2	1	2012-09-09 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2604	2	1	2012-09-09 13:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2605	2	5	2012-09-09 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2606	2	14	2012-09-09 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2607	3	22	2012-09-09 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2608	3	10	2012-09-09 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2609	3	20	2012-09-09 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2610	3	0	2012-09-09 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2611	3	21	2012-09-09 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2612	3	0	2012-09-09 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2613	3	6	2012-09-09 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2614	4	13	2012-09-09 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2615	4	7	2012-09-09 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2616	4	20	2012-09-09 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2617	4	0	2012-09-09 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2618	4	3	2012-09-09 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2619	4	11	2012-09-09 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2620	4	20	2012-09-09 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2621	4	0	2012-09-09 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2622	4	11	2012-09-09 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2623	4	13	2012-09-09 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2624	5	0	2012-09-09 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2625	6	0	2012-09-09 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2626	6	0	2012-09-09 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2627	6	12	2012-09-09 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2628	6	14	2012-09-09 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2629	6	0	2012-09-09 16:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2630	6	26	2012-09-09 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2631	6	21	2012-09-09 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2632	7	22	2012-09-09 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2633	7	22	2012-09-09 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2634	7	21	2012-09-09 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2635	7	4	2012-09-09 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2636	7	7	2012-09-09 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2637	7	4	2012-09-09 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2638	8	16	2012-09-09 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2639	8	0	2012-09-09 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2640	8	16	2012-09-09 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2641	8	3	2012-09-09 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2642	8	2	2012-09-09 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2643	8	21	2012-09-09 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2644	8	5	2012-09-09 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2645	8	15	2012-09-09 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2646	8	3	2012-09-09 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2647	8	0	2012-09-09 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2648	8	0	2012-09-09 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2649	8	16	2012-09-09 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2650	8	9	2012-09-09 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2651	8	17	2012-09-09 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2652	8	6	2012-09-09 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2653	8	3	2012-09-09 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2654	8	16	2012-09-09 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2655	8	3	2012-09-09 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2656	8	16	2012-09-09 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2657	0	22	2012-09-10 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2658	0	14	2012-09-10 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2659	0	0	2012-09-10 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2660	0	14	2012-09-10 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2661	0	10	2012-09-10 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2662	1	24	2012-09-10 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2663	1	0	2012-09-10 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2664	1	0	2012-09-10 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2665	1	15	2012-09-10 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2666	1	0	2012-09-10 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2667	1	12	2012-09-10 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2668	1	0	2012-09-10 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2669	2	1	2012-09-10 09:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2670	2	21	2012-09-10 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2671	2	21	2012-09-10 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2672	2	0	2012-09-10 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2673	2	6	2012-09-10 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2674	3	6	2012-09-10 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2675	3	15	2012-09-10 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2676	3	15	2012-09-10 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2677	3	15	2012-09-10 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2678	3	16	2012-09-10 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2679	3	2	2012-09-10 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2680	3	16	2012-09-10 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2681	3	17	2012-09-10 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2682	3	15	2012-09-10 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2683	4	4	2012-09-10 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2684	4	13	2012-09-10 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2685	4	20	2012-09-10 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2686	4	11	2012-09-10 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2687	4	1	2012-09-10 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2688	4	10	2012-09-10 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2689	4	12	2012-09-10 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2690	4	17	2012-09-10 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2691	4	14	2012-09-10 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2692	4	0	2012-09-10 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2693	5	0	2012-09-10 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2694	5	0	2012-09-10 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2695	6	0	2012-09-10 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2696	6	11	2012-09-10 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2697	6	8	2012-09-10 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2698	6	12	2012-09-10 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2699	6	0	2012-09-10 14:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2700	6	0	2012-09-10 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2701	6	12	2012-09-10 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2702	7	22	2012-09-10 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2703	7	4	2012-09-10 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2704	7	24	2012-09-10 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2705	7	10	2012-09-10 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2706	7	15	2012-09-10 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2707	7	4	2012-09-10 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2708	7	7	2012-09-10 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2709	8	15	2012-09-10 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2710	8	26	2012-09-10 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2711	8	5	2012-09-10 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2712	8	16	2012-09-10 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2713	8	2	2012-09-10 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2714	8	16	2012-09-10 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2715	8	3	2012-09-10 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2716	8	21	2012-09-10 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2717	8	24	2012-09-10 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2718	8	16	2012-09-10 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2719	8	21	2012-09-10 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2720	8	3	2012-09-10 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2721	8	21	2012-09-10 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2722	0	5	2012-09-11 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2723	0	6	2012-09-11 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2724	0	7	2012-09-11 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2725	0	17	2012-09-11 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2726	0	11	2012-09-11 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2727	0	26	2012-09-11 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2728	1	9	2012-09-11 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2729	1	11	2012-09-11 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2730	1	8	2012-09-11 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2731	1	12	2012-09-11 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2732	1	11	2012-09-11 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2733	1	9	2012-09-11 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2734	1	11	2012-09-11 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2735	2	2	2012-09-11 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2736	2	1	2012-09-11 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2737	2	8	2012-09-11 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2738	2	21	2012-09-11 17:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2739	3	22	2012-09-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2740	3	16	2012-09-11 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2741	3	21	2012-09-11 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2742	3	6	2012-09-11 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2743	3	15	2012-09-11 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2744	3	2	2012-09-11 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2745	3	6	2012-09-11 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2746	4	3	2012-09-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2747	4	6	2012-09-11 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2748	4	0	2012-09-11 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2749	4	13	2012-09-11 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2750	4	16	2012-09-11 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2751	4	3	2012-09-11 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2752	4	0	2012-09-11 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2753	4	8	2012-09-11 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2754	4	0	2012-09-11 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2755	4	14	2012-09-11 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2756	5	0	2012-09-11 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2757	5	0	2012-09-11 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2758	6	12	2012-09-11 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2759	6	0	2012-09-11 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2760	6	12	2012-09-11 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2761	6	0	2012-09-11 12:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2762	6	16	2012-09-11 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2763	6	0	2012-09-11 15:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2764	6	12	2012-09-11 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2765	6	0	2012-09-11 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2766	6	12	2012-09-11 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2767	7	10	2012-09-11 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2768	7	13	2012-09-11 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2769	7	7	2012-09-11 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2770	7	6	2012-09-11 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2771	7	4	2012-09-11 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2772	7	24	2012-09-11 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2773	7	10	2012-09-11 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2774	7	15	2012-09-11 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2775	8	24	2012-09-11 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2776	8	3	2012-09-11 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2777	8	21	2012-09-11 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2778	8	0	2012-09-11 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2779	8	16	2012-09-11 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2780	8	3	2012-09-11 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2781	8	21	2012-09-11 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2782	8	21	2012-09-11 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2783	8	22	2012-09-11 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2784	8	8	2012-09-11 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2785	8	3	2012-09-11 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2786	8	3	2012-09-11 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2787	0	22	2012-09-12 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2788	0	0	2012-09-12 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2789	0	4	2012-09-12 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2790	0	26	2012-09-12 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2791	0	5	2012-09-12 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2792	0	0	2012-09-12 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2793	0	16	2012-09-12 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2794	1	11	2012-09-12 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2795	1	0	2012-09-12 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2796	1	14	2012-09-12 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2797	1	11	2012-09-12 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2798	1	0	2012-09-12 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2799	1	10	2012-09-12 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2800	2	24	2012-09-12 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2801	2	12	2012-09-12 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2802	2	9	2012-09-12 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2803	2	13	2012-09-12 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2804	2	9	2012-09-12 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2805	2	2	2012-09-12 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2806	3	15	2012-09-12 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2807	3	20	2012-09-12 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2808	3	10	2012-09-12 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2809	3	3	2012-09-12 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2810	3	16	2012-09-12 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2811	3	0	2012-09-12 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2812	4	16	2012-09-12 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2813	4	0	2012-09-12 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2814	4	0	2012-09-12 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2815	4	13	2012-09-12 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2816	4	0	2012-09-12 12:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2817	4	16	2012-09-12 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2818	4	0	2012-09-12 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2819	4	3	2012-09-12 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2820	4	1	2012-09-12 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2821	4	7	2012-09-12 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2822	5	0	2012-09-12 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2823	6	0	2012-09-12 08:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2824	6	0	2012-09-12 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2825	6	24	2012-09-12 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2826	6	0	2012-09-12 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2827	6	0	2012-09-12 17:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2828	7	5	2012-09-12 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2829	7	4	2012-09-12 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2830	7	15	2012-09-12 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2831	7	24	2012-09-12 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2832	7	7	2012-09-12 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2833	7	22	2012-09-12 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2834	8	1	2012-09-12 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2835	8	16	2012-09-12 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2836	8	3	2012-09-12 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2837	8	16	2012-09-12 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2838	8	21	2012-09-12 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2839	8	1	2012-09-12 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2840	8	5	2012-09-12 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2841	8	2	2012-09-12 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2842	8	22	2012-09-12 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2843	8	3	2012-09-12 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2844	8	4	2012-09-12 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2845	8	21	2012-09-12 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2846	0	5	2012-09-13 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2847	0	0	2012-09-13 10:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2848	0	7	2012-09-13 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2849	0	10	2012-09-13 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2850	0	0	2012-09-13 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2851	1	8	2012-09-13 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2852	1	11	2012-09-13 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2853	1	0	2012-09-13 12:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2854	1	12	2012-09-13 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2855	1	8	2012-09-13 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2856	1	24	2012-09-13 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2857	2	11	2012-09-13 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2858	2	1	2012-09-13 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2859	2	2	2012-09-13 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2860	2	10	2012-09-13 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2861	2	15	2012-09-13 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2862	2	21	2012-09-13 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2863	2	11	2012-09-13 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2864	3	16	2012-09-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2865	3	3	2012-09-13 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2866	3	17	2012-09-13 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2867	3	22	2012-09-13 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2868	3	24	2012-09-13 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2869	3	3	2012-09-13 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2870	3	11	2012-09-13 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2871	3	3	2012-09-13 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2872	3	17	2012-09-13 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2873	3	4	2012-09-13 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2874	4	7	2012-09-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2875	4	20	2012-09-13 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2876	4	6	2012-09-13 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2877	4	5	2012-09-13 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2878	4	21	2012-09-13 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2879	4	20	2012-09-13 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2880	4	9	2012-09-13 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2881	4	20	2012-09-13 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2882	4	0	2012-09-13 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2883	4	5	2012-09-13 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2884	5	0	2012-09-13 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2885	5	0	2012-09-13 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2886	5	0	2012-09-13 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2887	6	12	2012-09-13 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2888	6	0	2012-09-13 10:30:00	14');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2889	6	0	2012-09-13 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2890	6	6	2012-09-13 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2891	7	14	2012-09-13 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2892	7	4	2012-09-13 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2893	7	17	2012-09-13 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2894	7	5	2012-09-13 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2895	7	4	2012-09-13 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2896	7	15	2012-09-13 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2897	7	0	2012-09-13 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2898	7	9	2012-09-13 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2899	8	20	2012-09-13 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2900	8	15	2012-09-13 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2901	8	21	2012-09-13 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2902	8	21	2012-09-13 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2903	8	16	2012-09-13 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2904	8	21	2012-09-13 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2905	8	0	2012-09-13 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2906	8	24	2012-09-13 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2907	8	3	2012-09-13 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2908	8	16	2012-09-13 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2909	8	21	2012-09-13 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2910	8	21	2012-09-13 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2911	8	16	2012-09-13 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2912	8	21	2012-09-13 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2913	8	0	2012-09-13 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2914	8	21	2012-09-13 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2915	8	15	2012-09-13 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2916	0	6	2012-09-14 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2917	0	17	2012-09-14 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2918	0	5	2012-09-14 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2919	0	3	2012-09-14 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2920	0	0	2012-09-14 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2921	0	26	2012-09-14 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2922	0	0	2012-09-14 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2923	1	11	2012-09-14 08:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2924	1	8	2012-09-14 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2925	1	0	2012-09-14 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2926	1	0	2012-09-14 17:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2927	2	1	2012-09-14 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2928	2	21	2012-09-14 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2929	2	1	2012-09-14 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2930	2	5	2012-09-14 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2931	2	9	2012-09-14 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2932	3	15	2012-09-14 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2933	3	16	2012-09-14 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2934	3	20	2012-09-14 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2935	3	21	2012-09-14 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2936	4	14	2012-09-14 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2937	4	0	2012-09-14 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2938	4	13	2012-09-14 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2939	4	9	2012-09-14 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2940	4	0	2012-09-14 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2941	4	13	2012-09-14 14:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2942	4	0	2012-09-14 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2943	4	6	2012-09-14 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2944	4	20	2012-09-14 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2945	5	15	2012-09-14 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2946	5	0	2012-09-14 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2947	6	12	2012-09-14 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2948	6	0	2012-09-14 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2949	6	0	2012-09-14 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2950	6	16	2012-09-14 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2951	6	0	2012-09-14 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2952	6	12	2012-09-14 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2953	6	17	2012-09-14 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2954	7	10	2012-09-14 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2955	7	24	2012-09-14 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2956	7	9	2012-09-14 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2957	7	21	2012-09-14 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2958	7	24	2012-09-14 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2959	8	3	2012-09-14 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2960	8	16	2012-09-14 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2961	8	2	2012-09-14 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2962	8	21	2012-09-14 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2963	8	3	2012-09-14 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2964	8	9	2012-09-14 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2965	8	3	2012-09-14 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2966	8	20	2012-09-14 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2967	8	21	2012-09-14 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2968	8	16	2012-09-14 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2969	8	24	2012-09-14 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2970	8	20	2012-09-14 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2971	8	22	2012-09-14 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2972	8	16	2012-09-14 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2973	8	3	2012-09-14 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2974	8	15	2012-09-14 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2975	8	16	2012-09-14 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2976	8	11	2012-09-14 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2977	8	2	2012-09-14 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2978	0	0	2012-09-15 08:00:00	12');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2979	0	11	2012-09-15 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2980	0	7	2012-09-15 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2981	0	17	2012-09-15 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2982	1	10	2012-09-15 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2983	1	11	2012-09-15 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2984	1	24	2012-09-15 13:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2985	1	12	2012-09-15 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2986	2	0	2012-09-15 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2987	2	1	2012-09-15 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2988	2	0	2012-09-15 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2989	2	14	2012-09-15 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2990	2	26	2012-09-15 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2991	2	0	2012-09-15 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2992	3	1	2012-09-15 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2993	3	14	2012-09-15 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2994	3	22	2012-09-15 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2995	3	21	2012-09-15 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2996	3	20	2012-09-15 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2997	3	3	2012-09-15 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2998	3	11	2012-09-15 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('2999	3	0	2012-09-15 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3000	3	11	2012-09-15 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3001	4	13	2012-09-15 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3002	4	0	2012-09-15 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3003	4	17	2012-09-15 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3004	4	3	2012-09-15 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3005	4	0	2012-09-15 12:00:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3006	4	24	2012-09-15 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3007	4	16	2012-09-15 17:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3008	4	14	2012-09-15 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3009	5	0	2012-09-15 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3010	6	0	2012-09-15 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3011	6	0	2012-09-15 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3012	6	11	2012-09-15 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3013	6	22	2012-09-15 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3014	6	12	2012-09-15 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3015	6	1	2012-09-15 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3016	6	4	2012-09-15 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3017	6	15	2012-09-15 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3018	6	0	2012-09-15 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3019	7	17	2012-09-15 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3020	7	2	2012-09-15 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3021	7	8	2012-09-15 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3022	7	15	2012-09-15 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3023	7	22	2012-09-15 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3024	7	13	2012-09-15 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3025	7	10	2012-09-15 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3026	7	13	2012-09-15 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3027	8	21	2012-09-15 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3028	8	16	2012-09-15 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3029	8	15	2012-09-15 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3030	8	16	2012-09-15 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3031	8	15	2012-09-15 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3032	8	16	2012-09-15 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3033	8	3	2012-09-15 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3034	8	21	2012-09-15 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3035	8	6	2012-09-15 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3036	8	15	2012-09-15 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3037	8	6	2012-09-15 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3038	8	21	2012-09-15 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3039	8	21	2012-09-15 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3040	8	3	2012-09-15 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3041	0	0	2012-09-16 08:00:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3042	0	11	2012-09-16 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3043	0	6	2012-09-16 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3044	0	0	2012-09-16 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3045	0	24	2012-09-16 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3046	0	10	2012-09-16 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3047	1	8	2012-09-16 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3048	1	0	2012-09-16 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3049	1	16	2012-09-16 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3050	1	8	2012-09-16 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3051	1	12	2012-09-16 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3052	1	0	2012-09-16 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3053	2	2	2012-09-16 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3054	2	1	2012-09-16 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3055	2	12	2012-09-16 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3056	2	21	2012-09-16 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3057	2	7	2012-09-16 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3058	2	21	2012-09-16 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3059	2	21	2012-09-16 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3060	3	1	2012-09-16 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3061	3	14	2012-09-16 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3062	3	0	2012-09-16 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3063	3	22	2012-09-16 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3064	3	16	2012-09-16 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3065	3	15	2012-09-16 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3066	4	1	2012-09-16 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3067	4	0	2012-09-16 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3068	4	8	2012-09-16 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3069	4	13	2012-09-16 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3070	4	3	2012-09-16 14:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3071	4	0	2012-09-16 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3072	4	0	2012-09-16 17:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3073	4	14	2012-09-16 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3074	5	22	2012-09-16 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3075	6	11	2012-09-16 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3076	6	0	2012-09-16 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3077	6	12	2012-09-16 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3078	6	2	2012-09-16 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3079	6	10	2012-09-16 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3080	6	0	2012-09-16 14:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3081	6	0	2012-09-16 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3082	7	10	2012-09-16 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3083	7	10	2012-09-16 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3084	7	9	2012-09-16 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3085	7	15	2012-09-16 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3086	7	13	2012-09-16 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3087	7	8	2012-09-16 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3088	7	27	2012-09-16 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3089	7	27	2012-09-16 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3090	8	21	2012-09-16 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3091	8	3	2012-09-16 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3092	8	21	2012-09-16 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3093	8	27	2012-09-16 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3094	8	16	2012-09-16 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3095	8	21	2012-09-16 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3096	8	27	2012-09-16 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3097	8	16	2012-09-16 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3098	8	3	2012-09-16 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3099	8	3	2012-09-16 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3100	8	2	2012-09-16 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3101	8	3	2012-09-16 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3102	0	22	2012-09-17 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3103	0	0	2012-09-17 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3104	0	13	2012-09-17 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3105	0	7	2012-09-17 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3106	0	0	2012-09-17 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3107	0	26	2012-09-17 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3108	1	8	2012-09-17 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3109	1	9	2012-09-17 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3110	1	0	2012-09-17 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3111	1	0	2012-09-17 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3112	1	8	2012-09-17 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3113	1	9	2012-09-17 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3114	1	8	2012-09-17 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3115	2	5	2012-09-17 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3116	2	12	2012-09-17 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3117	2	21	2012-09-17 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3118	2	12	2012-09-17 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3119	2	0	2012-09-17 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3120	2	1	2012-09-17 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3121	3	21	2012-09-17 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3122	3	22	2012-09-17 09:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3123	3	15	2012-09-17 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3124	3	22	2012-09-17 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3125	3	16	2012-09-17 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3126	3	13	2012-09-17 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3127	3	3	2012-09-17 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3128	4	7	2012-09-17 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3129	4	0	2012-09-17 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3130	4	0	2012-09-17 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3131	4	10	2012-09-17 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3132	4	20	2012-09-17 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3133	4	16	2012-09-17 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3134	4	0	2012-09-17 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3135	4	5	2012-09-17 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3136	4	14	2012-09-17 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3137	4	0	2012-09-17 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3138	5	0	2012-09-17 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3139	5	24	2012-09-17 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3140	6	0	2012-09-17 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3141	6	0	2012-09-17 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3142	6	5	2012-09-17 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3143	6	0	2012-09-17 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3144	6	0	2012-09-17 15:00:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3145	7	10	2012-09-17 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3146	7	21	2012-09-17 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3147	7	17	2012-09-17 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3148	7	15	2012-09-17 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3149	7	0	2012-09-17 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3150	7	22	2012-09-17 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3151	7	20	2012-09-17 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3152	7	1	2012-09-17 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3153	8	15	2012-09-17 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3154	8	16	2012-09-17 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3155	8	0	2012-09-17 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3156	8	8	2012-09-17 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3157	8	1	2012-09-17 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3158	8	11	2012-09-17 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3159	8	3	2012-09-17 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3160	8	1	2012-09-17 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3161	8	2	2012-09-17 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3162	8	21	2012-09-17 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3163	8	3	2012-09-17 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3164	8	21	2012-09-17 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3165	8	21	2012-09-17 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3166	8	2	2012-09-17 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3167	0	28	2012-09-18 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3168	0	6	2012-09-18 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3169	0	11	2012-09-18 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3170	0	16	2012-09-18 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3171	0	5	2012-09-18 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3172	0	28	2012-09-18 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3173	0	14	2012-09-18 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3174	1	10	2012-09-18 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3175	1	12	2012-09-18 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3176	1	0	2012-09-18 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3177	1	11	2012-09-18 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3178	1	10	2012-09-18 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3179	2	16	2012-09-18 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3180	2	21	2012-09-18 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3181	2	21	2012-09-18 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3182	2	1	2012-09-18 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3183	2	24	2012-09-18 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3184	2	13	2012-09-18 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3185	3	3	2012-09-18 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3186	3	20	2012-09-18 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3187	3	13	2012-09-18 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3188	3	3	2012-09-18 13:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3189	3	21	2012-09-18 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3190	3	15	2012-09-18 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3191	3	3	2012-09-18 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3192	4	5	2012-09-18 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3193	4	0	2012-09-18 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3194	4	13	2012-09-18 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3195	4	1	2012-09-18 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3196	4	13	2012-09-18 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3197	4	0	2012-09-18 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3198	4	13	2012-09-18 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3199	4	0	2012-09-18 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3200	4	4	2012-09-18 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3201	4	0	2012-09-18 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3202	5	0	2012-09-18 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3203	5	0	2012-09-18 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3204	6	0	2012-09-18 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3205	6	9	2012-09-18 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3206	6	0	2012-09-18 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3207	6	8	2012-09-18 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3208	6	0	2012-09-18 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3209	6	0	2012-09-18 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3210	7	7	2012-09-18 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3211	7	0	2012-09-18 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3212	7	27	2012-09-18 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3213	7	8	2012-09-18 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3214	8	21	2012-09-18 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3215	8	15	2012-09-18 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3216	8	0	2012-09-18 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3217	8	7	2012-09-18 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3218	8	3	2012-09-18 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3219	8	28	2012-09-18 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3220	8	15	2012-09-18 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3221	8	4	2012-09-18 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3222	8	24	2012-09-18 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3223	8	3	2012-09-18 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3224	8	21	2012-09-18 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3225	8	9	2012-09-18 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3226	8	0	2012-09-18 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3227	8	3	2012-09-18 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3228	8	0	2012-09-18 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3229	8	28	2012-09-18 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3230	0	16	2012-09-19 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3231	0	28	2012-09-19 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3232	0	0	2012-09-19 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3233	0	28	2012-09-19 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3234	0	24	2012-09-19 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3235	0	14	2012-09-19 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3236	1	0	2012-09-19 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3237	1	1	2012-09-19 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3238	1	0	2012-09-19 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3239	1	4	2012-09-19 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3240	1	10	2012-09-19 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3241	2	1	2012-09-19 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3242	2	16	2012-09-19 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3243	2	9	2012-09-19 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3244	2	21	2012-09-19 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3245	2	29	2012-09-19 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3246	2	30	2012-09-19 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3247	3	22	2012-09-19 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3248	3	15	2012-09-19 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3249	3	3	2012-09-19 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3250	3	3	2012-09-19 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3251	3	2	2012-09-19 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3252	3	1	2012-09-19 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3253	3	21	2012-09-19 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3254	4	20	2012-09-19 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3255	4	5	2012-09-19 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3256	4	0	2012-09-19 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3257	4	5	2012-09-19 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3258	4	0	2012-09-19 13:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3259	4	16	2012-09-19 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3260	4	0	2012-09-19 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3261	4	13	2012-09-19 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3262	5	10	2012-09-19 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3263	5	7	2012-09-19 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3264	5	0	2012-09-19 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3265	5	0	2012-09-19 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3266	5	0	2012-09-19 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3267	6	0	2012-09-19 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3268	6	8	2012-09-19 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3269	6	14	2012-09-19 10:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3270	6	0	2012-09-19 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3271	6	12	2012-09-19 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3272	6	0	2012-09-19 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3273	6	12	2012-09-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3274	6	4	2012-09-19 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3275	7	10	2012-09-19 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3276	7	27	2012-09-19 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3277	7	15	2012-09-19 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3278	7	4	2012-09-19 13:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3279	7	27	2012-09-19 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3280	7	15	2012-09-19 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3281	7	6	2012-09-19 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3282	8	21	2012-09-19 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3283	8	3	2012-09-19 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3284	8	29	2012-09-19 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3285	8	3	2012-09-19 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3286	8	12	2012-09-19 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3287	8	30	2012-09-19 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3288	8	28	2012-09-19 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3289	8	29	2012-09-19 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3290	8	24	2012-09-19 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3291	8	29	2012-09-19 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3292	8	16	2012-09-19 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3293	8	22	2012-09-19 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3294	8	29	2012-09-19 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3295	8	3	2012-09-19 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3296	8	8	2012-09-19 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3297	8	15	2012-09-19 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3298	0	14	2012-09-20 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3299	0	0	2012-09-20 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3300	0	0	2012-09-20 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3301	0	17	2012-09-20 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3302	0	26	2012-09-20 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3303	0	5	2012-09-20 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3304	1	11	2012-09-20 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3305	1	10	2012-09-20 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3306	1	30	2012-09-20 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3307	1	10	2012-09-20 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3308	1	9	2012-09-20 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3309	1	0	2012-09-20 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3310	1	24	2012-09-20 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3311	2	21	2012-09-20 08:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3312	2	0	2012-09-20 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3313	2	14	2012-09-20 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3314	2	1	2012-09-20 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3315	2	2	2012-09-20 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3316	2	14	2012-09-20 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3317	3	1	2012-09-20 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3318	3	21	2012-09-20 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3319	3	30	2012-09-20 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3320	4	0	2012-09-20 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3321	4	14	2012-09-20 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3322	4	0	2012-09-20 10:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3323	4	3	2012-09-20 12:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3324	4	0	2012-09-20 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3325	4	0	2012-09-20 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3326	4	20	2012-09-20 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3327	4	8	2012-09-20 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3328	5	0	2012-09-20 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3329	5	0	2012-09-20 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3330	5	0	2012-09-20 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3331	5	0	2012-09-20 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3332	6	6	2012-09-20 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3333	6	0	2012-09-20 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3334	6	0	2012-09-20 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3335	6	28	2012-09-20 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3336	7	0	2012-09-20 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3337	7	24	2012-09-20 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3338	7	9	2012-09-20 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3339	7	8	2012-09-20 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3340	7	4	2012-09-20 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3341	7	22	2012-09-20 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3342	7	15	2012-09-20 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3343	7	8	2012-09-20 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3344	7	33	2012-09-20 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3345	8	33	2012-09-20 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3346	8	24	2012-09-20 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3347	8	20	2012-09-20 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3348	8	3	2012-09-20 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3349	8	20	2012-09-20 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3350	8	24	2012-09-20 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3351	8	28	2012-09-20 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3352	8	3	2012-09-20 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3353	8	33	2012-09-20 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3354	8	16	2012-09-20 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3355	8	21	2012-09-20 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3356	8	28	2012-09-20 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3357	8	3	2012-09-20 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3358	8	0	2012-09-20 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3359	8	16	2012-09-20 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3360	0	26	2012-09-21 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3361	0	11	2012-09-21 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3362	0	22	2012-09-21 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3363	0	16	2012-09-21 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3364	0	5	2012-09-21 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3365	0	17	2012-09-21 17:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3366	1	12	2012-09-21 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3367	1	16	2012-09-21 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3368	1	1	2012-09-21 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3369	1	9	2012-09-21 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3370	1	10	2012-09-21 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3371	1	27	2012-09-21 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3372	2	9	2012-09-21 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3373	2	21	2012-09-21 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3374	2	9	2012-09-21 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3375	2	0	2012-09-21 14:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3376	3	29	2012-09-21 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3377	3	30	2012-09-21 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3378	3	2	2012-09-21 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3379	3	20	2012-09-21 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3380	3	21	2012-09-21 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3381	3	4	2012-09-21 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3382	3	30	2012-09-21 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3383	3	29	2012-09-21 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3384	3	1	2012-09-21 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3385	4	16	2012-09-21 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3386	4	14	2012-09-21 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3387	4	0	2012-09-21 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3388	4	8	2012-09-21 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3389	4	0	2012-09-21 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3390	4	14	2012-09-21 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3391	4	0	2012-09-21 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3392	4	9	2012-09-21 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3393	4	1	2012-09-21 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3394	4	3	2012-09-21 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3395	4	20	2012-09-21 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3396	5	15	2012-09-21 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3397	5	0	2012-09-21 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3398	6	0	2012-09-21 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3399	6	13	2012-09-21 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3400	6	0	2012-09-21 11:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3401	6	0	2012-09-21 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3402	6	12	2012-09-21 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3403	6	12	2012-09-21 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3404	6	14	2012-09-21 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3405	7	21	2012-09-21 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3406	7	5	2012-09-21 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3407	7	10	2012-09-21 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3408	7	24	2012-09-21 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3409	7	4	2012-09-21 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3410	7	24	2012-09-21 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3411	7	13	2012-09-21 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3412	7	5	2012-09-21 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3413	8	33	2012-09-21 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3414	8	21	2012-09-21 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3415	8	28	2012-09-21 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3416	8	3	2012-09-21 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3417	8	29	2012-09-21 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3418	8	12	2012-09-21 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3419	8	28	2012-09-21 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3420	8	29	2012-09-21 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3421	8	6	2012-09-21 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3422	8	3	2012-09-21 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3423	8	15	2012-09-21 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3424	8	8	2012-09-21 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3425	8	29	2012-09-21 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3426	8	33	2012-09-21 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3427	8	30	2012-09-21 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3428	8	3	2012-09-21 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3429	0	0	2012-09-22 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3430	0	11	2012-09-22 10:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3431	0	0	2012-09-22 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3432	0	6	2012-09-22 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3433	0	14	2012-09-22 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3434	0	10	2012-09-22 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3435	1	5	2012-09-22 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3436	1	10	2012-09-22 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3437	1	8	2012-09-22 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3438	1	15	2012-09-22 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3439	1	12	2012-09-22 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3440	1	0	2012-09-22 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3441	2	24	2012-09-22 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3442	2	0	2012-09-22 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3443	2	1	2012-09-22 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3444	2	2	2012-09-22 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3445	2	1	2012-09-22 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3446	2	24	2012-09-22 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3447	3	29	2012-09-22 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3448	3	20	2012-09-22 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3449	3	21	2012-09-22 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3450	3	30	2012-09-22 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3451	3	22	2012-09-22 18:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3452	4	0	2012-09-22 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3453	4	14	2012-09-22 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3454	4	7	2012-09-22 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3455	4	0	2012-09-22 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3456	4	24	2012-09-22 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3457	4	0	2012-09-22 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3458	4	16	2012-09-22 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3459	4	0	2012-09-22 15:00:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3460	4	2	2012-09-22 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3461	5	0	2012-09-22 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3462	6	6	2012-09-22 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3463	6	0	2012-09-22 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3464	6	4	2012-09-22 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3465	6	12	2012-09-22 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3466	6	0	2012-09-22 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3467	6	8	2012-09-22 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3468	6	0	2012-09-22 15:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3469	6	12	2012-09-22 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3470	7	10	2012-09-22 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3471	7	4	2012-09-22 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3472	7	27	2012-09-22 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3473	7	4	2012-09-22 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3474	7	30	2012-09-22 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3475	7	33	2012-09-22 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3476	7	17	2012-09-22 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3477	7	27	2012-09-22 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3478	8	22	2012-09-22 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3479	8	28	2012-09-22 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3480	8	17	2012-09-22 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3481	8	21	2012-09-22 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3482	8	21	2012-09-22 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3483	8	22	2012-09-22 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3484	8	29	2012-09-22 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3485	8	24	2012-09-22 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3486	8	3	2012-09-22 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3487	8	28	2012-09-22 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3488	8	3	2012-09-22 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3489	8	21	2012-09-22 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3490	8	11	2012-09-22 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3491	0	7	2012-09-23 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3492	0	10	2012-09-23 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3493	0	15	2012-09-23 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3494	0	26	2012-09-23 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3495	0	35	2012-09-23 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3496	0	2	2012-09-23 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3497	0	17	2012-09-23 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3498	1	0	2012-09-23 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3499	1	24	2012-09-23 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3500	1	8	2012-09-23 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3501	1	24	2012-09-23 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3502	1	15	2012-09-23 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3503	1	35	2012-09-23 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3504	1	0	2012-09-23 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3505	2	1	2012-09-23 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3506	2	1	2012-09-23 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3507	2	16	2012-09-23 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3508	2	29	2012-09-23 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3509	2	9	2012-09-23 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3510	2	7	2012-09-23 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3511	3	3	2012-09-23 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3512	3	22	2012-09-23 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3513	3	3	2012-09-23 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3514	3	22	2012-09-23 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3515	3	15	2012-09-23 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3516	3	22	2012-09-23 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3517	3	3	2012-09-23 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3518	3	22	2012-09-23 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3519	3	10	2012-09-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3520	4	11	2012-09-23 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3521	4	16	2012-09-23 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3522	4	9	2012-09-23 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3523	4	0	2012-09-23 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3524	4	6	2012-09-23 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3525	4	13	2012-09-23 13:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3526	4	22	2012-09-23 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3527	4	0	2012-09-23 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3528	4	11	2012-09-23 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3529	4	1	2012-09-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3530	5	0	2012-09-23 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3531	6	0	2012-09-23 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3532	6	0	2012-09-23 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3533	6	0	2012-09-23 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3534	6	0	2012-09-23 13:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3535	6	12	2012-09-23 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3536	6	15	2012-09-23 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3537	6	0	2012-09-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3538	7	8	2012-09-23 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3539	7	17	2012-09-23 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3540	7	9	2012-09-23 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3541	7	27	2012-09-23 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3542	7	15	2012-09-23 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3543	7	14	2012-09-23 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3544	7	0	2012-09-23 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3545	8	33	2012-09-23 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3546	8	28	2012-09-23 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3547	8	0	2012-09-23 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3548	8	3	2012-09-23 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3549	8	0	2012-09-23 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3550	8	29	2012-09-23 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3551	8	3	2012-09-23 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3552	8	30	2012-09-23 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3553	8	21	2012-09-23 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3554	8	0	2012-09-23 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3555	8	16	2012-09-23 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3556	8	13	2012-09-23 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3557	8	6	2012-09-23 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3558	8	29	2012-09-23 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3559	8	28	2012-09-23 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3560	8	6	2012-09-23 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3561	8	28	2012-09-23 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3562	8	29	2012-09-23 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3563	0	0	2012-09-24 08:00:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3564	0	35	2012-09-24 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3565	0	0	2012-09-24 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3566	0	14	2012-09-24 15:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3567	0	11	2012-09-24 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3568	1	28	2012-09-24 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3569	1	10	2012-09-24 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3570	1	10	2012-09-24 12:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3571	1	16	2012-09-24 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3572	1	0	2012-09-24 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3573	1	24	2012-09-24 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3574	2	21	2012-09-24 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3575	2	0	2012-09-24 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3576	2	1	2012-09-24 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3577	2	3	2012-09-24 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3578	2	12	2012-09-24 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3579	2	7	2012-09-24 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3580	2	3	2012-09-24 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3581	3	0	2012-09-24 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3582	3	21	2012-09-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3583	3	16	2012-09-24 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3584	3	15	2012-09-24 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3585	3	2	2012-09-24 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3586	3	20	2012-09-24 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3587	3	22	2012-09-24 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3588	3	16	2012-09-24 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3589	3	0	2012-09-24 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3590	4	11	2012-09-24 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3591	4	14	2012-09-24 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3592	4	0	2012-09-24 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3593	4	0	2012-09-24 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3594	4	20	2012-09-24 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3595	4	0	2012-09-24 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3596	4	8	2012-09-24 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3597	4	6	2012-09-24 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3598	4	8	2012-09-24 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3599	4	35	2012-09-24 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3600	4	0	2012-09-24 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3601	5	14	2012-09-24 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3602	5	0	2012-09-24 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3603	6	0	2012-09-24 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3604	6	9	2012-09-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3605	6	0	2012-09-24 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3606	6	0	2012-09-24 12:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3607	6	14	2012-09-24 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3608	6	0	2012-09-24 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3609	6	12	2012-09-24 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3610	6	33	2012-09-24 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3611	6	17	2012-09-24 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3612	7	24	2012-09-24 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3613	7	22	2012-09-24 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3614	7	9	2012-09-24 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3615	7	17	2012-09-24 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3616	7	28	2012-09-24 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3617	7	10	2012-09-24 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3618	7	8	2012-09-24 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3619	8	0	2012-09-24 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3620	8	29	2012-09-24 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3621	8	0	2012-09-24 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3622	8	3	2012-09-24 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3623	8	8	2012-09-24 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3624	8	0	2012-09-24 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3625	8	28	2012-09-24 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3626	8	21	2012-09-24 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3627	8	2	2012-09-24 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3628	8	3	2012-09-24 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3629	8	2	2012-09-24 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3630	8	22	2012-09-24 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3631	8	0	2012-09-24 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3632	8	29	2012-09-24 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3633	8	16	2012-09-24 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3634	8	29	2012-09-24 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3635	0	12	2012-09-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3636	0	2	2012-09-25 09:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3637	0	16	2012-09-25 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3638	0	0	2012-09-25 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3639	0	11	2012-09-25 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3640	1	9	2012-09-25 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3641	1	12	2012-09-25 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3642	1	0	2012-09-25 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3643	1	12	2012-09-25 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3644	1	11	2012-09-25 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3645	1	35	2012-09-25 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3646	1	0	2012-09-25 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3647	2	29	2012-09-25 08:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3648	2	11	2012-09-25 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3649	2	13	2012-09-25 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3650	2	0	2012-09-25 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3651	2	33	2012-09-25 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3652	3	20	2012-09-25 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3653	3	17	2012-09-25 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3654	3	22	2012-09-25 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3655	3	35	2012-09-25 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3656	3	20	2012-09-25 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3657	3	17	2012-09-25 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3658	4	8	2012-09-25 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3659	4	20	2012-09-25 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3660	4	14	2012-09-25 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3661	4	0	2012-09-25 11:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3662	4	8	2012-09-25 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3663	4	3	2012-09-25 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3664	4	0	2012-09-25 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3665	4	20	2012-09-25 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3666	4	4	2012-09-25 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3667	4	6	2012-09-25 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3668	4	3	2012-09-25 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3669	5	0	2012-09-25 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3670	5	0	2012-09-25 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3671	5	0	2012-09-25 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3672	6	0	2012-09-25 08:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3673	6	8	2012-09-25 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3674	6	0	2012-09-25 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3675	6	2	2012-09-25 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3676	6	0	2012-09-25 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3677	6	0	2012-09-25 15:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3678	7	21	2012-09-25 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3679	7	10	2012-09-25 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3680	7	0	2012-09-25 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3681	7	7	2012-09-25 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3682	7	33	2012-09-25 15:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3683	7	2	2012-09-25 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3684	8	15	2012-09-25 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3685	8	21	2012-09-25 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3686	8	3	2012-09-25 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3687	8	29	2012-09-25 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3688	8	3	2012-09-25 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3689	8	29	2012-09-25 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3690	8	16	2012-09-25 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3691	8	28	2012-09-25 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3692	8	28	2012-09-25 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3693	8	21	2012-09-25 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3694	8	3	2012-09-25 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3695	8	16	2012-09-25 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3696	8	33	2012-09-25 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3697	0	5	2012-09-26 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3698	0	0	2012-09-26 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3699	0	6	2012-09-26 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3700	0	11	2012-09-26 13:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3701	0	0	2012-09-26 15:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3702	0	22	2012-09-26 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3703	1	0	2012-09-26 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3704	1	0	2012-09-26 10:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3705	1	9	2012-09-26 12:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3706	1	35	2012-09-26 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3707	1	12	2012-09-26 15:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3708	1	11	2012-09-26 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3709	2	1	2012-09-26 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3710	2	2	2012-09-26 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3711	2	10	2012-09-26 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3712	2	1	2012-09-26 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3713	2	0	2012-09-26 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3714	2	1	2012-09-26 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3715	2	17	2012-09-26 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3716	2	12	2012-09-26 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3717	3	15	2012-09-26 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3718	3	30	2012-09-26 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3719	3	3	2012-09-26 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3720	3	22	2012-09-26 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3721	3	15	2012-09-26 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3722	3	9	2012-09-26 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3723	4	3	2012-09-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3724	4	0	2012-09-26 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3725	4	33	2012-09-26 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3726	4	20	2012-09-26 11:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3727	4	29	2012-09-26 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3728	4	0	2012-09-26 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3729	4	5	2012-09-26 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3730	4	0	2012-09-26 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3731	4	14	2012-09-26 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3732	4	20	2012-09-26 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3733	5	0	2012-09-26 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3734	6	0	2012-09-26 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3735	6	0	2012-09-26 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3736	6	30	2012-09-26 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3737	6	0	2012-09-26 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3738	6	0	2012-09-26 13:00:00	8');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3739	6	10	2012-09-26 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3740	6	21	2012-09-26 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3741	6	0	2012-09-26 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3742	7	7	2012-09-26 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3743	7	24	2012-09-26 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3744	7	5	2012-09-26 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3745	7	27	2012-09-26 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3746	7	24	2012-09-26 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3747	7	5	2012-09-26 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3748	8	0	2012-09-26 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3749	8	30	2012-09-26 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3750	8	16	2012-09-26 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3751	8	21	2012-09-26 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3752	8	29	2012-09-26 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3753	8	16	2012-09-26 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3754	8	29	2012-09-26 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3755	8	28	2012-09-26 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3756	8	3	2012-09-26 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3757	8	20	2012-09-26 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3758	8	3	2012-09-26 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3759	8	28	2012-09-26 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3760	8	21	2012-09-26 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3761	8	29	2012-09-26 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3762	8	24	2012-09-26 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3763	0	11	2012-09-27 09:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3764	0	6	2012-09-27 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3765	0	17	2012-09-27 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3766	0	26	2012-09-27 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3767	0	0	2012-09-27 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3768	1	0	2012-09-27 08:00:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3769	1	8	2012-09-27 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3770	1	0	2012-09-27 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3771	1	35	2012-09-27 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3772	1	10	2012-09-27 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3773	2	1	2012-09-27 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3774	2	24	2012-09-27 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3775	2	36	2012-09-27 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3776	2	30	2012-09-27 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3777	2	11	2012-09-27 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3778	2	2	2012-09-27 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3779	3	15	2012-09-27 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3780	3	22	2012-09-27 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3781	3	0	2012-09-27 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3782	3	15	2012-09-27 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3783	3	15	2012-09-27 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3784	3	20	2012-09-27 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3785	3	0	2012-09-27 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3786	4	0	2012-09-27 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3787	4	24	2012-09-27 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3788	4	35	2012-09-27 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3789	4	20	2012-09-27 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3790	4	0	2012-09-27 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3791	4	12	2012-09-27 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3792	4	24	2012-09-27 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3793	4	36	2012-09-27 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3794	4	0	2012-09-27 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3795	4	7	2012-09-27 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3796	4	35	2012-09-27 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3797	4	6	2012-09-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3798	5	0	2012-09-27 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3799	5	22	2012-09-27 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3800	6	0	2012-09-27 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3801	6	12	2012-09-27 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3802	6	0	2012-09-27 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3803	6	0	2012-09-27 12:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3804	6	12	2012-09-27 15:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3805	6	0	2012-09-27 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3806	7	24	2012-09-27 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3807	7	4	2012-09-27 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3808	7	10	2012-09-27 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3809	7	10	2012-09-27 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3810	7	8	2012-09-27 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3811	7	9	2012-09-27 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3812	7	24	2012-09-27 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3813	7	17	2012-09-27 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3814	8	28	2012-09-27 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3815	8	2	2012-09-27 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3816	8	29	2012-09-27 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3817	8	33	2012-09-27 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3818	8	3	2012-09-27 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3819	8	29	2012-09-27 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3820	8	22	2012-09-27 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3821	8	29	2012-09-27 15:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3822	8	0	2012-09-27 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3823	8	20	2012-09-27 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3824	8	8	2012-09-27 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3825	8	16	2012-09-27 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3826	8	27	2012-09-27 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3827	8	3	2012-09-27 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3828	8	29	2012-09-27 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3829	0	35	2012-09-28 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3830	0	16	2012-09-28 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3831	0	28	2012-09-28 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3832	0	0	2012-09-28 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3833	0	0	2012-09-28 15:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3834	0	0	2012-09-28 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3835	1	10	2012-09-28 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3836	1	0	2012-09-28 09:30:00	9');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3837	1	8	2012-09-28 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3838	1	0	2012-09-28 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3839	1	0	2012-09-28 17:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3840	2	2	2012-09-28 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3841	2	21	2012-09-28 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3842	2	21	2012-09-28 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3843	2	1	2012-09-28 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3844	2	5	2012-09-28 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3845	2	17	2012-09-28 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3846	2	0	2012-09-28 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3847	2	1	2012-09-28 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3848	3	30	2012-09-28 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3849	3	15	2012-09-28 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3850	3	13	2012-09-28 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3851	3	22	2012-09-28 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3852	3	15	2012-09-28 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3853	3	24	2012-09-28 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3854	3	22	2012-09-28 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3855	3	20	2012-09-28 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3856	4	24	2012-09-28 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3857	4	0	2012-09-28 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3858	4	14	2012-09-28 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3859	4	0	2012-09-28 12:30:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3860	4	16	2012-09-28 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3861	4	0	2012-09-28 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3862	4	5	2012-09-28 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3863	4	0	2012-09-28 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3864	4	8	2012-09-28 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3865	4	7	2012-09-28 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3866	5	0	2012-09-28 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3867	5	0	2012-09-28 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3868	5	11	2012-09-28 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3869	5	0	2012-09-28 17:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3870	6	0	2012-09-28 08:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3871	6	12	2012-09-28 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3872	6	0	2012-09-28 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3873	6	16	2012-09-28 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3874	6	0	2012-09-28 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3875	6	0	2012-09-28 16:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3876	6	12	2012-09-28 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3877	7	17	2012-09-28 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3878	7	27	2012-09-28 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3879	7	9	2012-09-28 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3880	7	21	2012-09-28 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3881	7	27	2012-09-28 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3882	7	8	2012-09-28 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3883	7	6	2012-09-28 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3884	8	21	2012-09-28 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3885	8	28	2012-09-28 09:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3886	8	3	2012-09-28 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3887	8	3	2012-09-28 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3888	8	29	2012-09-28 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3889	8	28	2012-09-28 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3890	8	3	2012-09-28 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3891	8	30	2012-09-28 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3892	8	12	2012-09-28 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3893	8	0	2012-09-28 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3894	8	3	2012-09-28 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3895	8	29	2012-09-28 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3896	8	10	2012-09-28 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3897	8	21	2012-09-28 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3898	8	16	2012-09-28 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3899	0	0	2012-09-29 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3900	0	11	2012-09-29 11:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3901	0	6	2012-09-29 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3902	0	28	2012-09-29 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3903	0	20	2012-09-29 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3904	1	0	2012-09-29 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3905	1	8	2012-09-29 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3906	1	10	2012-09-29 13:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3907	1	12	2012-09-29 14:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3908	1	0	2012-09-29 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3909	1	10	2012-09-29 18:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3910	2	1	2012-09-29 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3911	2	36	2012-09-29 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3912	2	14	2012-09-29 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3913	2	21	2012-09-29 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3914	2	1	2012-09-29 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3915	2	24	2012-09-29 15:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3916	2	12	2012-09-29 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3917	2	16	2012-09-29 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3918	3	2	2012-09-29 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3919	3	21	2012-09-29 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3920	3	6	2012-09-29 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3921	3	13	2012-09-29 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3922	3	16	2012-09-29 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3923	3	20	2012-09-29 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3924	3	21	2012-09-29 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3925	4	16	2012-09-29 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3926	4	0	2012-09-29 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3927	4	3	2012-09-29 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3928	4	20	2012-09-29 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3929	4	5	2012-09-29 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3930	4	0	2012-09-29 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3931	4	3	2012-09-29 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3932	4	0	2012-09-29 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3933	4	16	2012-09-29 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3934	4	13	2012-09-29 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3935	4	36	2012-09-29 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3936	4	24	2012-09-29 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3937	5	0	2012-09-29 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3938	6	6	2012-09-29 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3939	6	0	2012-09-29 09:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3940	6	24	2012-09-29 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3941	6	0	2012-09-29 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3942	6	12	2012-09-29 13:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3943	6	0	2012-09-29 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3944	6	27	2012-09-29 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3945	6	0	2012-09-29 18:00:00	4');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3946	7	8	2012-09-29 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3947	7	4	2012-09-29 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3948	7	0	2012-09-29 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3949	7	24	2012-09-29 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3950	7	8	2012-09-29 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3951	7	27	2012-09-29 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3952	7	8	2012-09-29 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3953	7	15	2012-09-29 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3954	7	27	2012-09-29 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3955	8	12	2012-09-29 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3956	8	3	2012-09-29 08:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3957	8	21	2012-09-29 09:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3958	8	29	2012-09-29 10:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3959	8	28	2012-09-29 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3960	8	2	2012-09-29 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3961	8	29	2012-09-29 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3962	8	20	2012-09-29 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3963	8	28	2012-09-29 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3964	8	3	2012-09-29 14:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3965	8	28	2012-09-29 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3966	8	12	2012-09-29 16:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3967	8	26	2012-09-29 16:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3968	8	15	2012-09-29 17:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3969	8	28	2012-09-29 17:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3970	8	29	2012-09-29 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3971	8	4	2012-09-29 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3972	8	33	2012-09-29 20:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3973	0	4	2012-09-30 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3974	0	35	2012-09-30 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3975	0	0	2012-09-30 11:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3976	0	36	2012-09-30 14:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3977	0	24	2012-09-30 16:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3978	0	0	2012-09-30 17:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3979	0	24	2012-09-30 19:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3980	1	8	2012-09-30 08:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3981	1	0	2012-09-30 10:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3982	1	10	2012-09-30 11:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3983	1	11	2012-09-30 13:30:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3984	1	10	2012-09-30 16:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3985	1	8	2012-09-30 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3986	2	1	2012-09-30 08:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3987	2	17	2012-09-30 09:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3988	2	29	2012-09-30 11:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3989	2	35	2012-09-30 12:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3990	2	1	2012-09-30 14:00:00	6');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3991	2	5	2012-09-30 17:00:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3992	2	35	2012-09-30 18:30:00	3');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3993	3	24	2012-09-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3994	3	3	2012-09-30 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3995	3	36	2012-09-30 10:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3996	3	36	2012-09-30 12:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3997	3	0	2012-09-30 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3998	3	1	2012-09-30 18:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('3999	4	13	2012-09-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4000	4	16	2012-09-30 09:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4001	4	0	2012-09-30 10:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4002	4	20	2012-09-30 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4003	4	4	2012-09-30 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4004	4	3	2012-09-30 13:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4005	4	20	2012-09-30 15:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4006	4	0	2012-09-30 16:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4007	4	3	2012-09-30 17:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4008	4	0	2012-09-30 18:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4009	5	0	2012-09-30 11:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4010	5	0	2012-09-30 19:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4011	6	0	2012-09-30 08:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4012	6	27	2012-09-30 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4013	6	0	2012-09-30 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4014	6	0	2012-09-30 12:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4015	6	12	2012-09-30 14:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4016	6	0	2012-09-30 15:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4017	6	35	2012-09-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4018	6	0	2012-09-30 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4019	6	0	2012-09-30 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4020	7	27	2012-09-30 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4021	7	33	2012-09-30 09:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4022	7	33	2012-09-30 11:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4023	7	5	2012-09-30 14:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4024	7	15	2012-09-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4025	7	24	2012-09-30 17:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4026	7	5	2012-09-30 19:00:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4027	8	16	2012-09-30 08:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4028	8	21	2012-09-30 08:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4029	8	3	2012-09-30 10:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4030	8	16	2012-09-30 11:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4031	8	3	2012-09-30 11:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4032	8	17	2012-09-30 12:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4033	8	21	2012-09-30 12:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4034	8	3	2012-09-30 13:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4035	8	29	2012-09-30 13:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4036	8	28	2012-09-30 14:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4037	8	29	2012-09-30 15:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4038	8	29	2012-09-30 16:30:00	2');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4039	8	29	2012-09-30 18:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4040	8	21	2012-09-30 18:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4041	8	16	2012-09-30 19:00:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4042	8	29	2012-09-30 19:30:00	1');
insert into cd.bookings (bookid, facid, memid, starttime, slots)
values ('4043	8	5	2013-01-01 15:30:00	1');


select mems.firstname || ' ' || mems.surname as member,
       facs.name                             as facility,
       case
           when mems.memid = 0 then
               bks.slots * facs.guestcost
           else
               bks.slots * facs.membercost
           end                               as cost
from cd.members mems
         inner join cd.bookings bks
                    on mems.memid = bks.memid
         inner join cd.facilities facs
                    on bks.facid = facs.facid
where bks.starttime >= '2012-09-14'
  and bks.starttime < '2012-09-15'
  and (
    (mems.memid = 0 and bks.slots * facs.guestcost > 30) or
    (mems.memid != 0 and bks.slots * facs.membercost > 30)
    )
order by cost desc;