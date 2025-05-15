--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-15 18:06:17 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 24686)
-- Name: customers; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.customers (
    customer_name character varying(200) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(20) NOT NULL,
    address character varying(200) NOT NULL,
    customer_id numeric(9,0) NOT NULL
);


ALTER TABLE public.customers OWNER TO nafbarg;

--
-- TOC entry 218 (class 1259 OID 24691)
-- Name: departments; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.departments (
    department_id numeric(9,0) NOT NULL,
    department_name character varying(35) NOT NULL,
    information character varying(50) NOT NULL
);


ALTER TABLE public.departments OWNER TO nafbarg;

--
-- TOC entry 219 (class 1259 OID 24694)
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.feedbacks (
    rating numeric(10,1) NOT NULL,
    feedback_id integer NOT NULL,
    feedback_date date NOT NULL,
    comment_text character varying(2000) NOT NULL,
    item_id numeric(9,0) NOT NULL,
    customer_id numeric(9,0) NOT NULL
);


ALTER TABLE public.feedbacks OWNER TO nafbarg;

--
-- TOC entry 220 (class 1259 OID 24699)
-- Name: items; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.items (
    item_id numeric(9,0) NOT NULL,
    item_name character varying(200) NOT NULL,
    status character varying(20) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    available_date date NOT NULL,
    department_id numeric(9,0) NOT NULL
);


ALTER TABLE public.items OWNER TO nafbarg;

--
-- TOC entry 221 (class 1259 OID 24702)
-- Name: orderdetails; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.orderdetails (
    tracking_number character varying(20) NOT NULL,
    order_status character varying(20) NOT NULL,
    delivery_method character varying(20) NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.orderdetails OWNER TO nafbarg;

--
-- TOC entry 222 (class 1259 OID 24705)
-- Name: orderitems; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.orderitems (
    quantity integer NOT NULL,
    order_id integer NOT NULL,
    item_id numeric(9,0) NOT NULL
);


ALTER TABLE public.orderitems OWNER TO nafbarg;

--
-- TOC entry 223 (class 1259 OID 24708)
-- Name: orders; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.orders (
    order_date date NOT NULL,
    order_id integer NOT NULL,
    customer_id numeric(9,0) NOT NULL
);


ALTER TABLE public.orders OWNER TO nafbarg;

--
-- TOC entry 224 (class 1259 OID 24711)
-- Name: sell; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.sell (
    item_id numeric(9,0) NOT NULL,
    supplier_id numeric(10,0) NOT NULL
);


ALTER TABLE public.sell OWNER TO nafbarg;

--
-- TOC entry 225 (class 1259 OID 24714)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: nafbarg
--

CREATE TABLE public.suppliers (
    supplier_id numeric(10,0) NOT NULL,
    supplier_name character varying(100) NOT NULL,
    phone character varying(20) NOT NULL,
    address character varying(200) NOT NULL
);


ALTER TABLE public.suppliers OWNER TO nafbarg;

--
-- TOC entry 3413 (class 0 OID 24686)
-- Dependencies: 217
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.customers (customer_name, email, phone, address, customer_id) FROM stdin;
Brandon Russell	grayanna@christian-moore.com	+1-532-061-9610	01220 Pruitt Ports Suite 470, Matthewfort, PA 84224	1
Rhonda Stewart	ocohen@hotmail.com	+1-786-580-2174x255	769 Smith Radial, Port Courtneytown, MI 30533	2
Jonathan Holloway	victoria38@hooper-hernandez.net	670.027.3045x466	511 Merritt Underpass, Jonesfurt, MD 34912	3
Amanda Hoffman	andrew26@gmail.com	001-253-108-6842x465	129 Reynolds Streets Apt. 705, Pittsmouth, NE 04204	4
Frederick Black	vincent85@barry.com	833-546-0813x830	95158 Sarah Valleys, Port Rachel, VA 52714	5
Dawn Wall	randy38@gmail.com	+1-099-759-1057x565	3260 Bennett Greens Apt. 865, West Davidview, PA 42736	6
James Willis	owenskathy@hotmail.com	374-799-5378x94502	727 Thomas Plains Apt. 553, South Williamport, OR 02327	7
James Watts	justin65@williams-smith.com	048.283.4773	79884 Abigail Cliff, Russellmouth, AR 75213	8
Matthew Holmes	ntaylor@compton.com	600-658-0036	1453 Kaitlyn Turnpike, South Jeffrey, NY 87325	9
Jeanette Lopez	soneill@alvarez.com	(175)890-7854	18195 Kimberly Ford Suite 262, Taylortown, WY 11813	10
Brett Robinson	donnabrown@gmail.com	712-057-3336	04565 Lisa Centers, North Sandyport, DC 73552	11
Rachel Jacobs	jbray@yahoo.com	(260)945-5058x041	571 Raymond Springs, East Jamiestad, WI 63529	12
Steve Bird	ujohnson@duran.com	001-352-129-1411x504	488 Elizabeth Crest, Justinport, IA 01202	13
Brian Garcia	wroth@hotmail.com	(260)633-0621	2641 David Port Suite 490, West Larry, WY 87245	14
Alexander Thomas	ronaldjimenez@yahoo.com	220-831-7936	851 Christopher Canyon Suite 030, Port Dawn, VT 07154	15
Rebecca Andrade	dorothy66@hotmail.com	+1-110-322-9458x6446	99289 Shawn Shoal, Lake Lauren, NJ 04361	16
Robert Marshall	james05@gmail.com	001-175-621-9139	178 Nichole Underpass, Rogerschester, WV 85513	17
Gail Castillo	danielmary@black.com	(226)283-8278	45873 Ronald Vista Suite 650, Hancockland, NV 61297	18
Andrew Bonilla	kimberly88@yahoo.com	001-953-022-7376x052	USNV Stephens, FPO AP 09871	19
Robert Wilson	greenezachary@padilla-brown.com	(535)671-6158	USS Gonzalez, FPO AE 91257	20
Christopher Miller	pmeyers@hickman-kim.info	001-060-148-6655x515	76850 Linda Island, Edwardfort, IN 70544	21
Amanda Ruiz	markgraves@walker.com	757.774.6416x719	998 Jesse Centers Apt. 687, Catherineport, NC 31623	22
Jennifer Doyle	xkelley@benson-pineda.com	(922)462-2749x393	3970 Eric Isle, West Benjamin, AZ 46039	23
Christopher Murray	zavalaalexandria@sandoval.com	427.295.6097	929 James Hills Suite 829, East Alyssa, NM 98130	24
Eric Thompson	oball@sullivan.org	(144)844-3293x30168	27581 Stephens Court Suite 024, Davidmouth, ME 15751	25
Karen Bell	terrichoi@scott.com	+1-557-762-2325x3728	6249 Huff Trafficway Suite 860, South Jeremiah, IN 20786	26
Hailey Shaffer	delgadomatthew@hotmail.com	3042427223	468 Brown Port, Greenmouth, DC 10339	27
Randy Key	kerrgary@yahoo.com	787-900-3276x318	33011 Medina Parks Suite 356, New Cindy, ID 05076	28
Kellie Lee	michelle42@hotmail.com	(523)215-3519x7005	965 George Flat, Dawnbury, OR 82511	29
Kevin Campbell	rhonda75@hotmail.com	001-527-781-2260	733 Johnson Run Apt. 292, Johnberg, OR 67840	30
Paul Morse	stephaniebarnett@brown.com	366-818-4629x62535	65710 Smith Square, South Bryanville, MA 85358	31
David Lopez	ejohnson@robinson.com	001-779-931-6171x512	233 Frank Ways, Katieport, IA 31301	32
David Lowery	williecollins@park.com	886-355-7938	01176 Alexandra Squares, New Jessicaborough, VA 20510	33
Michael Hobbs	melissa17@grimes.net	467-512-7298	PSC 9488, Box 5794, APO AE 26512	34
Rachel Gibson	ruizmichelle@foster-lyons.com	884-898-0817x22762	Unit 7142 Box 3119, DPO AP 37404	35
Ethan Parks	wrighttiffany@hotmail.com	001-086-560-4347x837	425 Justin Lodge, Lynnchester, NV 99100	36
Dylan Williamson	sgraham@evans-best.com	001-373-005-4269x137	22888 Brian Course, South Stacey, WI 69531	37
Catherine Fisher	johnsonheather@hotmail.com	369-589-0822x342	59787 Hood Unions Apt. 397, Nicoleborough, TN 95151	38
Edward Huber	hubbardkarina@hotmail.com	001-773-361-9896x513	46429 Adam Points, Ryanland, MD 87903	39
Wesley Oneal	stephanie76@gmail.com	001-216-153-0062x913	248 Abigail Walk Apt. 444, Johnsonland, AR 47352	40
Terri Meadows	patelrachel@watts.com	586-492-8339x763	9705 Stone Bypass Apt. 725, Nathanside, PA 96635	41
Mark Mccoy	jonathan85@gross.net	001-893-579-5657x709	PSC 8284, Box 7144, APO AE 16780	42
Johnny Thomas	mccoyelizabeth@gmail.com	(161)607-2830x382	213 Johnson Stream, South Lisa, HI 42683	43
Jeffrey Young	cheryl18@smith.org	527-867-0031	3381 Burke Locks, Chanmouth, ME 12581	44
John Nixon	mbell@murphy-anderson.com	+1-061-784-8557x9185	PSC 2666, Box 7844, APO AA 67256	45
Mr. John Keller	leslie31@zimmerman.org	001-607-275-0070x416	42129 Michael Isle Apt. 996, Parkerborough, CO 38794	46
Brenda Osborne	davisjeffrey@yahoo.com	3269156140	58455 Fisher Mountain, Apriltown, NE 39355	47
Michael King	matthew22@williamson.com	(784)888-5458x30502	20123 Jennifer Estates Apt. 388, North Carriehaven, DC 22976	48
Jennifer Vargas	clopez@alvarez.com	001-196-655-9000x849	0798 Parks Street Apt. 553, Greenstad, DC 04555	49
Alex Thompson	woodsdebra@hotmail.com	266.959.7855x59485	639 Brooke Burgs Apt. 519, Fletcherland, MD 75744	50
Luis Delacruz	adam41@hotmail.com	001-526-009-6189x422	Unit 7150 Box 0795, DPO AA 82932	51
Jeremy Lewis	markfowler@yahoo.com	+1-663-421-5844x943	1420 Miller Court, South Nicholas, ID 74960	52
Jamie Kelley	ltucker@hotmail.com	001-736-567-1674x327	0789 Freeman Port Apt. 561, Benjamintown, UT 14989	53
Dale Anthony	mckinneyrita@gross.com	511.572.1130x520	51471 Jason Rapids, Katherinefurt, RI 57624	54
Christina Miller MD	justintaylor@henderson.biz	(645)695-9372	5506 Lambert Ramp Suite 468, East Daryl, AZ 18667	55
Carol Peterson	fpeterson@perez-ayala.com	914.919.3893x0923	70988 Ball Islands Apt. 480, Michaelmouth, AL 54566	56
Donald Robinson	melinda22@wilson-simmons.net	+1-523-937-9090	USNS Randall, FPO AA 59943	57
Christian Jones	annsantiago@hotmail.com	001-563-623-4105x810	126 Martha Locks, Chelseaside, AR 42678	58
Diane Smith	maria63@anderson-monroe.com	923.989.6809	1703 Le Plaza, North Katelyn, KY 24377	59
Dawn Nguyen	kristinegreen@gmail.com	001-713-710-4856x328	2082 Jeremy Prairie, Jimmyland, VT 67515	60
Amber Robinson	obrienvictoria@gmail.com	237-673-8107x596	8806 Olivia Gardens, North Wesley, MT 78123	61
Hannah Wilson	sgarcia@yahoo.com	(291)947-3680	286 Montes Ways, South Andrewton, DE 53435	62
Tony Baker	edwardgarza@anderson-baldwin.org	+1-632-353-6849x9202	11072 Riley Ridges, Leeside, VA 93637	63
Allen Watson	vtaylor@hotmail.com	(608)538-2765	901 Nicholas Valley Suite 265, Lake Jasonport, MD 86012	64
Abigail Johnson	fletcheralice@miller-riley.net	255-043-7394	7312 Garcia Port Apt. 451, Ramirezville, WV 36333	65
Jennifer Lopez	rharrington@gmail.com	4667695756	300 Susan Island, North Sally, NJ 47529	66
Jackson Ross	munozrebecca@hotmail.com	(297)800-2486	38895 Wilson Ville, Weeksview, SC 68090	67
Amber Sims	rwilliams@johnson-jones.com	651-274-7047	82103 Miller Locks, East Shirley, DE 58492	68
Jeffrey Gonzalez	monicamartin@garcia.net	001-314-012-4334x848	PSC 4028, Box 8539, APO AE 37320	69
John Collins	carpenterjohn@lyons-smith.com	+1-461-262-9000x7144	USS Weiss, FPO AA 86198	70
Rachel Smith	masseyjustin@hicks.com	542-652-0106x39908	62860 Wilson Summit Apt. 016, East Johnfurt, KS 44311	71
Michelle Rush	ahaynes@bennett-hopkins.org	+1-702-620-4719x449	31315 Lee Oval, Maryland, IA 54866	72
Yolanda Rodriguez	johnjohnson@gmail.com	+1-369-699-7139x9684	247 Hernandez Prairie Apt. 747, Justinmouth, AZ 30994	73
Christina Riggs	robert42@smith.com	001-205-647-4712x422	2206 Stewart Forest Apt. 935, Dustinland, CT 18335	74
Janet Stanley PhD	rachelmarquez@gmail.com	001-640-970-8734	PSC 4983, Box 7412, APO AA 27378	75
Joan Moore	qhill@yahoo.com	(846)174-1451	6399 Ayala Path, East Alexandraburgh, CA 16002	76
Jamie Howell	cjackson@thompson-clayton.com	001-167-161-6497x447	80881 Smith Valley Apt. 349, Christinamouth, OK 86409	77
Tracey Haynes	csmith@hotmail.com	397-180-7750x3913	Unit 0055 Box 5784, DPO AE 95121	78
Darlene Clark	beandustin@yahoo.com	001-619-695-4324x682	877 Teresa Square Suite 007, Jonesbury, LA 15685	79
Jason Williams	lesliebeck@williams.com	786-183-5998x00273	150 Harris Drive, Andrewfort, AR 27915	80
Jillian Mccoy	psmith@briggs-ferguson.com	+1-113-158-4938x3334	PSC 3838, Box 7691, APO AE 79009	81
Theresa Smith	howenicholas@yahoo.com	+1-117-798-2265x5045	7179 Christopher Harbors, Tyronefort, IL 24581	82
Shannon Jackson	kennethwalton@hanson.biz	143-447-8209x7248	622 Mcgee Extension Suite 850, Francisshire, CO 71085	83
Edward Lopez	andersonkathy@valenzuela.com	215.987.8975x1005	799 Johnson Spurs Suite 375, Romeroshire, AK 56645	84
Teresa Vasquez	jennifer76@gmail.com	+1-549-972-8218	Unit 4459 Box 5617, DPO AP 45765	85
Christopher Gonzales	rjones@lopez.info	(660)882-1229x6777	8104 John Forge Suite 764, Desireetown, UT 99352	86
Thomas Miller	qromero@yahoo.com	(039)506-9958x69434	41320 Hill Square, West Joel, MS 57814	87
Angela French	brenda10@hotmail.com	(946)102-1139x99749	22025 Daniel Courts Apt. 528, West Andrew, MS 82880	88
Kyle Gutierrez	danielwalker@thomas.info	133.206.8636x636	323 Michael Branch Apt. 510, Wardburgh, NH 91534	89
Justin Estes	palvarez@smith.com	001-329-045-4180	985 Townsend Throughway Suite 658, Port Hollyborough, NY 75309	90
William Wilson	noah60@reid-green.org	363-256-8778	7566 Fox Lakes Suite 837, North Donald, IN 71564	91
Tina King	shahcody@hotmail.com	001-846-460-4973x243	7552 Christopher Forest Apt. 913, Lake Danielfort, CA 92411	92
Daisy Wood	randyhogan@gmail.com	1087549154	724 Simon Road Apt. 084, Sueton, VA 89428	93
Danielle Spencer	orobinson@greene.com	129.960.6876x499	089 Taylor Station Apt. 386, Port John, IN 08182	94
John Garza	dcampbell@yahoo.com	3854999623	89075 Gregory Ville, North Juliebury, NH 42666	95
Robert Herman	sherrimorris@gmail.com	272-806-6542	52563 Miller Inlet, South Heidihaven, TX 21926	96
Jonathan Myers	pereztara@smith-dawson.org	001-555-872-3643x725	98248 Gibbs Vista Suite 526, Port Erikstad, WV 66138	97
Tina Frost	cody53@mullen.com	378-737-4740	PSC 2121, Box 5755, APO AP 00739	98
David Barnes	brittanymcfarland@barrett.com	(064)539-3578	58523 Byrd Field Suite 823, South Alexanderfort, KY 73323	99
Barbara Myers	charlescole@garcia.com	549-071-2210x95675	5420 Kimberly Plains Suite 446, Port Robert, MN 92875	100
Cynthia Porter	lauramoore@johnson.com	+1-014-063-6321	41703 Tina Cliff, Port Deborahfurt, WV 86023	101
Joe Matthews	jessicawatson@cohen.com	001-272-515-0470x642	529 Shah Drives, Kevinburgh, OH 82218	102
Pamela Clarke DDS	timothy27@yahoo.com	(201)448-9284x8703	07556 Beth Stravenue Apt. 615, Lake Deannaberg, IA 82436	103
Anthony Burns	jennaroberts@yahoo.com	572-674-7737x79164	06459 Huff Fork, Medinaburgh, TN 64905	104
Michelle Harris	djackson@yahoo.com	767.623.4435	99558 Shelton Gardens, Collinsside, KS 81083	105
Madison Mendoza	reesedebra@moran.com	+1-029-031-2946	189 Lee Trail Suite 763, Travishaven, WV 54691	106
Debbie Duke	danielle07@weiss.com	(021)950-1074	01529 Carl Inlet Apt. 894, Washingtonstad, CT 50652	107
Nicole Knapp	hectorcasey@lowe-king.com	(875)448-6380x3327	474 Kristina Garden, Bridgetville, ID 87992	108
Rachel Barker	fernandezsamantha@yahoo.com	+1-929-802-0081x7765	0753 Ashley Forest Suite 542, East Emilyside, NV 02030	109
Noah Griffin	xdavis@mann.info	815-606-7875x269	3849 Dennis Harbors, Smithhaven, MA 98387	110
Stephanie Davis	john61@bailey.biz	574.597.2121	PSC 2309, Box 6043, APO AP 16875	111
Ashley Jones	william64@anderson-stewart.com	+1-150-458-1237x976	05892 April Drives, West Christopher, NM 79276	112
Peggy Schmidt	evanspatrick@gmail.com	(870)033-6229x604	04907 Mendoza Islands, Port Matthewburgh, RI 78514	113
Joshua Roberts	smoore@whitehead.com	974-723-3587	733 Duran Lock, North Michael, OR 21061	114
Lisa Berry	anna95@ellis-martin.org	041-670-6269x126	83469 James Corners Suite 521, East Jamie, ME 88029	115
Isaiah Myers	bmcdaniel@gmail.com	(967)148-5177	562 Lucas Ramp Suite 326, Wilsonborough, MD 60116	116
Karen Hester	clarkjacob@yahoo.com	269.399.3222x915	721 Perez Course Suite 919, Brownfurt, ND 55388	117
Willie York	hailey77@hotmail.com	(102)400-5937x88967	46481 Brittany Pass Suite 447, Timothyport, AR 66873	118
Virginia King	torreschristian@hotmail.com	001-093-334-2390x576	Unit 4884 Box 1722, DPO AP 68005	119
Crystal Morgan	smithlori@carter.net	+1-315-431-4505x422	50800 Wilson Knolls Apt. 572, Port Deannaton, SC 71523	120
John Clark	denisewood@gmail.com	269-120-0332	10484 Kendra Dale Apt. 000, South Matthewside, ME 04221	121
Alicia Taylor	mbradley@johnson-ford.net	265.844.9285	46447 Eileen Spurs, New Ricardo, NJ 66096	122
Laurie Martin	andrew59@yahoo.com	458.270.1919x372	51282 Scott Island, East Davidstad, SD 74327	123
John Parsons	qfreeman@gould.com	152.045.7285x8799	43112 Hodge Park Apt. 941, Christopherfort, KS 27791	124
Robert Buck	cassidy27@yahoo.com	701-081-4197x74030	73634 Schneider Brooks Apt. 511, Gonzalesburgh, DC 74175	125
Kevin Davis	jacksondwayne@hotmail.com	(569)898-6959	09870 Daniels Camp, Bonillastad, KS 90002	126
Theodore Weber	scott32@johnson.com	(091)797-0134	22266 Morgan Walks, Bryantville, TX 82476	127
Peter Zamora	mgates@mills.com	001-499-355-5521x660	USNS Burns, FPO AE 03147	128
Stephanie Molina	jonesmatthew@yahoo.com	+1-532-423-4612x518	0995 Burgess Lakes, South Corytown, UT 74913	129
Samuel Jones	amber39@hotmail.com	143.456.6978	79195 Schneider Freeway Apt. 545, Vargasfort, MD 00817	130
Jesus Warren	moorejennifer@hotmail.com	639.831.6841	04566 Arnold Mountains, Patrickfurt, AR 08383	131
Helen Johnson	joseph37@brooks.com	+1-573-885-4739x4589	73397 Fred Vista Suite 630, North Stephaniefort, FL 19742	132
Lisa Jennings	elizabeth03@brown.net	798.027.4747	4990 Kelly Ridges Apt. 883, East Robert, DE 30143	134
Mr. Joseph Baker	hawkinsanthony@aguirre.net	+1-852-258-9929x4473	2759 Tracy Canyon, Wilsonton, AR 20877	135
Andrew Ryan	ehall@french.info	001-361-256-5289x545	1035 David Cape Apt. 295, Lake David, WY 17621	136
Robert Melendez	emilyjackson@klein.com	001-664-331-1752x538	10183 Koch Ford Suite 209, East Victoria, DE 10651	137
Maria Smith	gilbertdiane@yahoo.com	905.543.8688	PSC 3422, Box 1472, APO AA 61294	138
Christine Lara	kayla02@gmail.com	(083)384-2745	04673 Choi Prairie Suite 924, Lake Lisamouth, DE 13105	139
Sabrina Garcia	grantlopez@hall-olsen.info	718.207.5804	59987 Moore Route, West Jason, KY 52250	140
Joseph Neal	williscarlos@hotmail.com	888.489.2178x49971	3821 Joan Way, Turnertown, TX 00971	141
Laura Hamilton	xle@hotmail.com	543-461-7092	5906 Sanders Inlet, Erictown, PA 36955	142
Shelley Wolf	tfrancis@yahoo.com	(781)774-8953x534	925 William Mountains Suite 045, Ritahaven, DE 64798	143
Kendra Burke	ashleyriley@gmail.com	436.893.9135	9163 Beard Trace Suite 340, New Katrina, MA 01989	144
Breanna James	jamesharris@cook.info	709.436.1948x374	84014 Thomas Tunnel Apt. 858, Lloydberg, MD 01134	145
Michelle Davidson	chenjerome@rosales-mann.org	+1-719-504-2143x636	22307 Mejia Turnpike Suite 760, South Lisa, KS 38992	146
Linda Ramirez	fnicholson@yahoo.com	+1-172-097-5772x156	5228 Neal Plains Apt. 102, West Michael, CA 27545	147
Leslie Lewis	theresabrown@smith.net	649.910.9675	535 Jeffrey Trafficway Suite 025, Jamesport, MD 89699	148
Vincent Griffin	daniel70@lee-davis.com	868.778.1183	0669 Peters Fall Suite 178, Brownbury, LA 11621	149
Randy Singh	hkey@hotmail.com	6509896929	99123 Hammond Valley Apt. 358, Rickyshire, ND 84300	150
Tracy Miller	ebony09@moore.org	001-156-995-7470x414	31284 Taylor Park, Lake Lindsayfurt, NE 63703	151
Brandi Williams	rodgersjocelyn@newman.biz	(419)991-4493	2451 Cody Common Suite 925, Richardmouth, MO 07382	152
Gregory Burch	hutchinsonpenny@nicholson.biz	001-124-479-1795	4100 Patricia Point Apt. 139, Thomasport, SC 25413	153
Christie Fry	lrobbins@carrillo-cox.biz	001-278-664-2962x575	0229 Glass Lights, Port Ashley, OK 03060	154
Jessica Morales	xreyes@johnson.com	001-112-981-5758x029	5614 Vanessa Squares, Lake Kellymouth, CT 61240	155
Elizabeth Monroe	erin75@yahoo.com	5530415571	27094 John Fords, Michaelton, RI 43262	156
Jennifer Williams	brianhoffman@caldwell-martinez.com	771-087-1509x4730	2446 Aaron Loop, Port Robinview, PA 28705	157
Hannah Cox	bschmidt@anderson.com	001-637-519-9439x111	844 Branch Mill Apt. 400, New Julie, SD 84623	158
Michael Burnett	wilsonlisa@carr.com	+1-961-676-8745x627	PSC 4949, Box 2368, APO AP 04048	159
John Vazquez	anna85@wiggins.com	005.447.2372	03132 Ashley Ford, North Michaelfort, MI 09038	160
Melissa Weaver	gabrielle97@hotmail.com	001-156-948-9064	21304 Bush Center Suite 074, North Lawrence, MD 32082	161
Anthony Marsh	wbaker@spencer.biz	266-795-1422x0989	0584 Freeman Prairie, East Alanshire, ND 91918	162
Brenda Stephenson	ernestperez@hotmail.com	+1-670-509-5637x5076	PSC 4748, Box 5701, APO AP 82800	163
Debra King	hannahhumphrey@lynch-smith.com	1098602693	Unit 0169 Box 7778, DPO AE 75297	164
Dwayne Church	tbaker@yahoo.com	(154)143-9399x244	Unit 9703 Box 9345, DPO AE 70670	165
Natasha Allison	jacksonwilliam@gmail.com	693.961.2158x75875	93681 David Islands Apt. 824, Lake Davidton, WI 68107	166
Joseph Briggs	robinsontodd@yahoo.com	3134501203	673 Maria Lakes, Brendaside, MA 11001	167
Destiny Calderon	mlarson@hotmail.com	+1-464-953-2040x902	42134 Edward Valleys Apt. 153, Rodriguezside, NC 31722	168
James Bailey	qdavies@yu-mills.org	001-653-409-9886x119	54162 Burton Burg, Port James, NH 66706	169
Jocelyn Molina	michael19@hotmail.com	494-281-3025	7064 Haley Fields Apt. 884, Bauerfort, WI 62543	170
Dr. Samantha Brady	madeline51@jordan.biz	691-700-9651x5341	7669 Morgan Spurs, Wellsside, OR 20088	171
Jerry Jordan	snydermary@hotmail.com	853.874.4287	2953 Melissa Trafficway, West Adam, NC 11054	172
Dr. Tracie Jackson MD	yjackson@yahoo.com	850.933.1117x412	5847 Schneider Highway Suite 087, New Debra, AK 73813	173
Mark Reynolds	kjones@edwards.com	+1-860-857-7360x8440	718 Ashley Fields, West Eric, DE 61745	174
Eric Hopkins	russellmiles@yahoo.com	+1-896-193-8549x817	85810 Brian Square, New Laurie, NC 15641	175
Natalie Bradley	joshuascott@hotmail.com	197.059.7915	015 Joseph Springs, New Kellychester, CT 19660	176
Rebecca Sutton	mckinneyjeffrey@michael.org	300-782-6456	6115 Erika Knolls Suite 737, Obrienmouth, CO 10541	177
Christine Lawrence MD	michael35@hotmail.com	0078101948	1622 Thompson Curve, Mcgrathchester, WA 49934	178
Faith Richardson	melissamelendez@yahoo.com	001-388-758-8329	013 Butler Orchard, Dennisshire, VT 97554	179
Ana Harris	sjohnson@stanley.com	511.793.1639	93073 Alexis Turnpike Suite 954, Johnsonchester, NC 52498	180
Francisco Smith	oolson@morris.com	325-135-4757	0491 Garcia Oval, West Joseph, WV 85880	181
Sandy Burgess	gjones@gmail.com	796-024-4463x5841	0947 Walker Inlet, Camposmouth, NM 39949	182
Haley Villarreal	tategina@mitchell.com	064.774.7767	493 Smith Hill, Ashleyton, RI 29431	183
Michelle Schultz	gregory17@harris-scott.com	(728)119-8631x83303	35896 Ward Mountains Suite 998, Lake Melissa, OK 82632	184
Jeffrey Patton	michael69@gmail.com	001-003-091-6832x770	15008 Nicholson Haven, Mcdowellland, FL 36064	185
Tonya Floyd	uwilliams@fields-tran.com	001-789-433-9437x990	7517 Joseph Park, West Anna, WV 77034	186
Kelly Goodman	robertortiz@hotmail.com	(126)641-4260x940	7753 Smith Turnpike, Kennethville, KY 26392	187
Ann Day	pward@yahoo.com	241-588-3188x455	168 Smith Ridges Suite 948, Millsfurt, MT 10546	188
Leslie Clark	cody60@coleman-mitchell.info	001-593-473-2493	USS Logan, FPO AE 97007	189
Angela Williams	qmcguire@hotmail.com	001-350-279-4644x914	5160 Gonzales Way, West Sabrinaport, MI 34612	190
Donna Matthews	ysmith@yates.com	642.856.3135	3882 Williams Plains Suite 042, West Jacquelineland, ID 22819	191
Anna Wells	hughesjoshua@gmail.com	+1-784-777-7487x691	9888 Garza Centers, North Andrewtown, OH 53268	192
Jennifer Jordan	christophercarson@clark-washington.com	123-827-6937	0755 Dawn Junctions, Jessicaville, VA 38848	193
Alexander Patterson	pamelamccarthy@hotmail.com	167-096-5343	338 Fernando Turnpike Suite 229, Fergusonhaven, NJ 88822	194
Jerome Williams	sheenadavis@walters-alexander.com	801.730.9619	887 Cain Circles Apt. 567, Rodriguezport, MI 02553	195
Theresa Wall	stephaniehicks@hotmail.com	(662)077-2913x75451	6416 Catherine Motorway Suite 771, Lake Heather, NY 17880	196
Stacey Ibarra	taylorbenjamin@robinson-neal.info	449.858.9919	40877 Smith Loop, South Angela, VA 09642	197
Ann Johnson	kelli23@mills.com	815-842-3038x20550	912 Cooley Shoals Apt. 484, Lake Thomasstad, NJ 87601	198
Tony Skinner	dawnestrada@harper-parker.info	414.108.2259x958	3657 Darius Spurs Apt. 804, Mitchellstad, CT 02597	199
Eric Harrington	jeffreycain@carpenter-martin.com	(298)043-5920	806 William Mill Apt. 292, Riosside, MI 70468	200
Joshua King	mendozawilliam@johnson.com	(941)842-0214x0794	USNV Fleming, FPO AE 15270	201
Rebecca Perez	cindy04@roy.com	(495)326-3506x41649	912 Paul Loop, Allenstad, AZ 39490	202
Omar George	rking@yahoo.com	+1-086-006-0730	02648 James Mills, Corytown, NE 39807	203
Nicholas Ewing	jjohnson@hampton.biz	050.402.3398	752 Brandon Villages, Harveymouth, MI 55012	204
Gabriela Norris	rbell@gmail.com	001-281-211-7816x619	7515 Joshua Lake, Lake Jamesland, OH 51589	205
Adam Mejia	nicholas41@hotmail.com	585.662.4049x3814	350 Richardson Parkway, Scottchester, RI 06888	206
Diane Lewis	zvasquez@chavez.com	203-875-0568x7531	1797 Henry Mountain Suite 888, New Jasmineburgh, CT 82219	207
Jessica Hess	robertswanson@yahoo.com	+1-168-863-1669	0346 Cassandra River Suite 384, Lorichester, DE 72596	208
James Kim	jeremydavis@jackson.info	+1-611-215-7937x0780	41209 Roger Fords, Grayville, FL 42300	209
Carrie Mendoza	downsbrandon@yahoo.com	(096)510-7974x2978	8873 Cynthia Plain, Port Jamieton, PA 79111	210
Alicia Fuller	sabrina80@gmail.com	001-408-502-4261x546	Unit 9961 Box 5329, DPO AE 86014	211
Donald Gomez	rrodriguez@hotmail.com	979-848-5640	PSC 5737, Box 6681, APO AE 49875	212
Abigail Morrow	david76@hotmail.com	526-663-0105	47551 Welch Cape, Port Alisonton, ID 83221	213
Dr. Lauren Mcclain MD	gmorris@brown.org	001-955-447-2287	1220 Henderson Crossing Suite 416, Port Toni, NJ 04652	214
Vincent Wilson	uchurch@yahoo.com	001-229-054-1799	289 Amber Avenue Apt. 840, Lake Brian, IL 41408	215
Juan James	stevenjones@yahoo.com	034.127.2173x8163	867 Jessica Drives Suite 516, New Stephanie, HI 22948	216
Robert Thompson	myoder@carter.biz	+1-419-679-2672	9086 Webb Loaf, Smithbury, OK 01523	217
Eric Jones	kimberly51@king.com	127-529-7097x101	0295 Solis Throughway Apt. 789, Lake Matthewhaven, TX 56467	218
Heather Morgan	johnmorris@smith.net	802.706.8511	287 Patrick Harbor, West Tyler, MS 75371	219
Dana West	millerderek@hotmail.com	175-367-4972x1736	48908 Hunter Fork Suite 575, South Russellbury, OR 02652	220
Timothy Gibbs	daniel58@yahoo.com	(971)618-9373	70571 Barbara Locks, South Aaronfurt, AZ 06348	221
Lisa Livingston	cathywalker@matthews-porter.com	001-424-500-9637	80328 Jones Knoll Apt. 952, North Christopherside, NM 48750	222
John Black	tnielsen@johnson.biz	374-657-2527	257 Ruiz Mission, Clarkfort, VA 24938	223
Gregory Todd	novakkathy@gmail.com	001-877-530-6611x931	82982 Reyes Station Suite 184, Nicholasburgh, CT 08544	224
Joseph Lawrence	derek07@diaz-harvey.org	577-252-2599x42628	0764 Rollins Union Apt. 346, West Joshua, MT 77538	225
Bradley Stafford	bobbywhitney@gmail.com	183.965.1186	8240 David Point, Bowersburgh, DC 05829	226
Molly Bryant	nicholas46@bauer-hardin.com	001-503-399-9170	0529 Lindsey Spring, South Chad, MS 75267	227
Brenda Ortega	thomasjohnson@gonzales.com	612-629-7815x21751	24375 Rachel Parkways, Davidhaven, VA 61429	228
Scott Villa	yvonnefuller@hotmail.com	4312811943	2102 Clements Spur Apt. 104, West Teresaton, MI 98907	229
Jamie Paul	cindymontes@rivera-brown.com	(213)027-0732x562	055 Allen Station, North Dwaynemouth, IA 93292	230
Lauren Green	kleinlarry@payne.com	1280660884	18106 Garza Oval, Port Kellyton, IA 70879	231
Andrea Johns	tamara21@gmail.com	279.528.4700x1649	8269 Young Neck, Fisherton, RI 76534	232
Michael French	kerribaker@mccarthy.org	769.564.0151x18423	89000 Johnson Mill Suite 936, Ryanshire, UT 28213	233
Barbara Gardner	patrickhaynes@myers.com	178.713.5420x758	33088 Johnston Squares Apt. 747, North Davidtown, NE 66749	234
Nathaniel Benson	velasqueztimothy@wall.com	(819)126-9460	PSC 5719, Box 5062, APO AA 78876	235
Curtis Fox	stewarttiffany@yahoo.com	001-284-720-2458x543	5568 Casey Greens, Davidmouth, SD 49925	236
Leroy Johnson	quinndaniel@martinez.org	(686)659-6789x2353	4617 Hill Falls, Smithton, GA 97737	237
Joanne Fletcher	ntaylor@hotmail.com	001-776-402-6601x261	9239 Sabrina Springs Apt. 973, Port Johnnyberg, NE 40150	238
Kelly Williams	sdavis@barker.com	+1-444-933-9120x3470	617 Mata Turnpike Apt. 750, East Jacob, MN 41702	239
Mark Frank Jr.	vwalker@gmail.com	+1-379-606-4435	846 Joshua Tunnel Apt. 525, West Lori, WV 07485	240
Adam Roman	esweeney@hotmail.com	765-732-4333	PSC 5259, Box 8102, APO AE 51800	241
Robert Ellison	jgarza@baldwin.org	438.468.2458x561	0391 Cole Vista Suite 074, East James, MN 54606	242
Candice Jones	scottmoran@baldwin-ballard.net	407-397-1300	2693 Daniel Springs, Matthewport, GA 17160	243
Alexis Velasquez	gedwards@herman-conner.biz	9746630312	USNV Holt, FPO AP 13985	244
Sandra Thompson	zmorgan@yahoo.com	624.657.1968	4762 Martinez Fork Apt. 402, Port Amanda, KS 63854	245
Anthony Matthews	elizabeth69@knight.info	+1-637-762-8107x4743	022 Christine Lakes Suite 511, South Michaelview, CO 85734	246
Heather Hansen	wallaceconnor@gmail.com	001-236-443-5693x956	9588 Abigail Forks, East Savannahmouth, FL 60624	247
Thomas Powell	maxwell50@hotmail.com	729-215-9750x377	USNV Williams, FPO AE 58232	248
Mrs. Julie Richards MD	andrewnelson@avery.com	710.105.9444	1965 Samantha Trail Suite 559, West Matthewburgh, MS 70063	249
Justin Thompson	eddielopez@nunez.info	320-504-7715	54329 Michael Vista, Millerfort, AZ 78892	250
Jose Guerrero	richardhanson@campos.com	(556)621-2050	32339 Aaron Heights, Rodriguezfurt, MN 23299	251
Patrick Olson	christinadominguez@hoffman.com	(457)024-0785x382	59098 Colleen Center Suite 718, Lake Nicoleside, MO 69168	252
Sonya Mcfarland	klogan@hotmail.com	842.602.7769x83095	819 Stephanie Passage, Christopherfurt, VA 70753	253
Kevin Joyce	alexanderclay@gmail.com	351.479.5335x71648	273 Terrance Route Apt. 350, East Josephfurt, ME 83251	254
Dennis Marshall	tlambert@gallagher.org	+1-855-503-4760x5786	662 Hall Alley Suite 713, Stonefurt, KS 65099	255
Jennifer Dunn	jessica05@gmail.com	(137)529-9825	85841 Jacob Club Suite 258, East Lawrence, AK 62506	256
Andrew Bridges	paulwilliams@hotmail.com	510.749.0523x875	59936 Brian Trail, Fisherchester, AL 83375	257
Kenneth Bennett	thomaslisa@bowers-lopez.com	208-750-4508x452	803 Brooks Lake, New Toddbury, PA 32912	258
Laura Murphy	ashleybryan@merritt.biz	395.792.9802x78824	3387 Landry Key, South Erinshire, OK 37163	259
Kim Daniel	deannasmith@hotmail.com	001-361-317-3516x295	0082 Barr Greens Suite 340, Abigailstad, RI 47671	260
Rebecca Miller	wisejeremy@hotmail.com	001-054-402-2531x297	66675 Mark Trafficway, Ramseytown, MT 14725	261
Michael Keith	cking@hotmail.com	501.855.9351	1605 Cole Viaduct Suite 475, South Stephenmouth, MA 93167	262
Robert Russell	sweeneyandrew@yahoo.com	+1-282-797-4227x7472	USS Osborne, FPO AA 78090	263
William Nichols	duane02@yahoo.com	675.941.6440	USNS Schaefer, FPO AE 21434	264
Jeremy Mata	aprilsolomon@watson-frazier.info	(508)229-2227x0875	7692 Courtney Light, Kristinhaven, TX 43706	265
Cody Montgomery	hillbarbara@hotmail.com	543-184-0241	055 James Ville Apt. 075, Robertchester, ME 22816	266
Taylor James	vthompson@carroll.com	6579691243	7585 Jennifer Trail, Martinshire, MA 08446	267
Daniel Brown	probinson@gmail.com	+1-107-707-5811	19457 Samuel Estate Apt. 389, New Jefferystad, NM 99542	268
Breanna Garcia	james86@gmail.com	+1-322-740-5852x321	75642 Cordova Valley Suite 772, West Maryburgh, NY 40899	269
Megan Thompson	christopher21@gmail.com	(387)180-7896x916	2970 Miles Bridge, Sheilaview, IA 92434	270
John Casey	sacosta@carter.info	123-049-9335x4162	684 Ortiz Avenue, West Mark, PA 34843	271
Daniel Liu	franklaura@roy.biz	+1-783-052-7259	22485 Michael Stream, West Kathleen, CT 08056	272
Becky Mcconnell	tammysmith@yahoo.com	+1-192-471-7539x6382	7777 Jorge Fork Suite 554, Lake Ashleeton, SD 64567	273
Stephanie Woodward	jcollins@flores.com	+1-712-065-8622x5385	88603 Michael Mission Apt. 007, West Bridgetfort, KY 19407	274
Gabriella White	astephenson@sanders.com	418.467.5440x66927	26461 Billy Cliffs, Philipshire, IN 03728	275
Daniel Durham	garciakevin@hotmail.com	(107)638-7335	895 Smith Circle, Pereztown, ID 99466	276
William Pierce	jmiller@gmail.com	001-583-135-6707x454	50117 Kaufman Extension, Benjaminberg, AR 24042	277
Dakota Smith	hturner@gmail.com	(181)035-0845x889	95581 Wolfe Knolls Suite 232, Bensonville, NM 41958	278
Taylor Freeman	kevin56@rollins.com	001-353-992-9184	94909 Henry Valley, New Desiree, TX 57933	279
Raymond Chandler	alvarezphillip@murray-lewis.info	+1-522-940-2584x014	4038 Kelly Loaf Apt. 598, Rachelfort, FL 67884	280
Amy Gordon	brandy36@hotmail.com	001-720-119-7767x963	USNV Hernandez, FPO AP 99853	281
Amanda Bradley	brettgardner@gmail.com	035-337-7140	970 Jordan Passage Suite 793, Dickersonview, OK 74321	282
Misty Boyer	maciastravis@james-pacheco.info	(628)365-1932x2764	USCGC Baxter, FPO AE 04847	283
Raymond Martin DDS	hannah06@gmail.com	8666995193	7482 Evans Flat, Lake Stephenton, MO 17688	284
Kyle Crawford	youngdaniel@gmail.com	(208)376-6929	680 Jack Extensions Apt. 136, Lake Anthonyville, WY 10911	285
Steve Kirk	karen26@camacho.com	(682)784-7467x496	3488 Johnson Cliff Apt. 446, Alexisburgh, AZ 58295	286
Wendy Bell	nathaniel37@hotmail.com	830-720-4839	2403 Maria Path Suite 324, Jeffreybury, MD 92406	287
Jessica Washington	qconner@gmail.com	463-308-6895	2312 Joseph Prairie Apt. 311, New Brittanyfort, MN 14910	288
Tammy Kelly	nguyennathan@golden-jenkins.com	578.240.5710x452	4174 Larry Cliff, West Louis, RI 39643	289
Tammy Daniels	george13@hotmail.com	(439)068-2883x4535	6841 Richardson Track, Kellybury, NH 50358	290
Lisa Richards	joelmarquez@hotmail.com	+1-203-410-5843	9971 Padilla Forks Apt. 398, North Lindaside, WA 30131	291
Joseph Conner	julia01@morrow-holder.info	460-716-7858	24523 Jackson Path Suite 854, Kellyville, NV 74165	292
Alexandria Smith DDS	fbennett@gmail.com	342-519-8510x36342	7905 Singleton Estate Apt. 464, Stephenberg, SD 88136	293
Krista Manning	dillonjessica@hotmail.com	+1-503-874-5633x063	16819 Valerie Burgs Suite 259, South Shannonland, CA 42953	294
Nathan Baker	johnsonjames@gmail.com	001-416-752-4414x838	2107 Frazier Estate, Douglasmouth, MA 14212	295
Michael Casey	hernandezjohn@hernandez-romero.com	(782)008-4344x508	351 Mark Corner Apt. 336, North Bryan, IL 50633	296
Hannah Jackson	alan86@ward.com	114.198.2552x47717	841 Stevens Pass, Lake Daniel, GA 02533	297
Scott Strickland	annette68@walters-thomas.com	(708)269-3863x54401	Unit 7620 Box 3285, DPO AA 37181	298
Kelly Riley	bennettrobert@gmail.com	001-889-744-0044	596 Alexandria Gardens Apt. 308, Lake Bettyview, HI 65188	299
Nicole Burgess	collinjones@gmail.com	+1-775-130-3921x438	0835 Moore Forest, Shermanhaven, DE 07253	300
Jacob Mckinney	zlowe@cervantes.com	680-540-3906	USNS Martinez, FPO AA 64177	301
Virginia Lee	xboone@gmail.com	171-394-8973	6169 Tyler Bridge, Hollystad, IN 15667	302
John Mcbride	lisa99@yahoo.com	(282)466-4326x2316	621 Strickland Mount, Justinborough, MD 18760	303
Kellie Walton	sarahgreen@johnson-valdez.com	298-909-3059x25149	787 James Isle Suite 995, Mannbury, NJ 74536	304
Luke Fox	kristen06@hotmail.com	+1-376-483-7772x8292	205 Garrett Fall, North Joshuashire, MD 46245	305
Mary Heath	rachael93@yahoo.com	001-301-411-9076x600	073 Mayo Parks, South Susanchester, OR 60747	306
John Robles	wwilliams@walker.com	(301)584-8763x581	665 Christina Underpass Suite 393, Herreramouth, LA 24619	307
Charles Ruiz	rmercado@gardner-hines.org	(167)632-3553x599	5031 Robert Turnpike, Justinmouth, OK 38399	308
Holly Gomez	justin56@yahoo.com	+1-560-423-5360x1816	67241 Hernandez Spring Suite 091, Lake Wesley, HI 39279	309
Carolyn Carroll	rhall@gmail.com	001-422-757-9519	6690 Collins Springs, Port Angelahaven, SC 73879	310
Kristen Romero	andersonjuan@brewer-boone.com	(137)594-5559x12088	61697 Pruitt Drives, East Joshua, UT 01061	311
Sandra Copeland	charles94@gmail.com	141-196-4789x506	PSC 6696, Box 0253, APO AE 93354	312
Christopher Nguyen	xmurray@castaneda.com	543-283-6010x155	75763 Lee Prairie, Port Christopher, GA 16666	313
Jason Riley	laura93@gmail.com	589.705.4563	PSC 5642, Box 0044, APO AP 15444	314
James Richardson	rcarr@williams.biz	952.638.1314x25117	8565 Gray Flats Suite 710, Lake Ethanborough, AK 68640	315
Angela Wilson	copelanddavid@hotmail.com	069.564.3928x020	20571 Estes Falls Apt. 540, East Rebecca, WA 39459	316
Dennis Johnson	robert50@mason.org	001-977-314-2334x171	70669 Linda Coves Apt. 767, West Christopherside, HI 64440	317
Kathryn Martin MD	gregorycompton@hotmail.com	+1-089-982-7695x3045	5201 Luis Underpass, South Lauren, HI 61343	318
Elizabeth Contreras	umeyer@gmail.com	850-331-6102x204	39227 Robert Common Apt. 498, Brendaburgh, LA 32304	319
Alejandro Roth	thompsonpatricia@ball-armstrong.com	+1-552-964-2572x3454	267 Jasmine Pike, Davidborough, NV 92045	320
Dylan Kelly	michealjames@miller-fletcher.com	902.107.4282	6892 Diaz Ville, New Mitchellbury, OR 80072	321
Brian Erickson	michael06@mason.com	+1-169-888-6511	Unit 1408 Box 8236, DPO AA 39430	322
Morgan Baldwin	johnarcher@hotmail.com	+1-555-947-3212x1240	859 Huff Island Apt. 527, North Lisaville, IN 68117	323
Sean Garcia	kenneth14@holland.org	443.530.1711x3318	7790 Amanda Motorway Suite 693, South Kimberly, HI 12078	324
Steven Ortiz	umooney@yahoo.com	(769)123-0715x792	26502 Henderson Manors Apt. 865, Rodriguezton, MT 10698	325
Christina Berry	matthewford@gmail.com	157-550-7469	312 Peck View Suite 489, Port Samantha, RI 03298	326
Fred Noble	david53@grant-whitney.info	041.598.1599	325 Pam Bypass Suite 060, Haneyview, OH 75107	327
Jonathan Meyer	qleblanc@stephens.org	4663945383	91070 Hannah Club Apt. 093, North Carolmouth, SD 43282	328
Ryan Williams	cindywilliams@jenkins.com	(271)866-3572	384 Hoffman Point, Michaelview, GA 91553	329
Michael Lewis	smithpam@yahoo.com	(474)157-7760	9493 Galloway Branch Suite 075, Wolfberg, ND 33165	330
Lori Rojas	olittle@carlson.biz	085-692-2076	042 Julie Greens, New Denise, MT 05735	331
James Mitchell	briansmall@benjamin.org	025.692.0847x716	420 Robinson Via Suite 339, Raymondshire, CA 85671	332
Patrick Smith	patrickvillarreal@gmail.com	391-291-7156x4774	4680 Karen Shores Suite 208, Buckleybury, NC 68160	333
Daniel Santiago	aturner@sanders.com	202.200.3549	4091 Marco Unions, Lake Stephenhaven, WA 20088	334
Alison Neal	johnlee@hotmail.com	(533)299-0646x55469	8572 Roman Hollow Apt. 067, Whitetown, NY 25164	335
Steven Chapman	cbrown@juarez-russell.org	001-210-666-1239	13894 Anthony Junction Apt. 140, South Anthony, HI 69338	336
Jacob Kramer	miguel69@gmail.com	(806)732-7512	68199 Fitzgerald Keys Suite 401, Hayesside, MO 03835	337
Jessica Guerra	douglasnathaniel@hotmail.com	046-934-5515x6325	371 Snyder Fork, Ericaview, VT 53794	338
Jim Burns	danawilkins@hotmail.com	900-932-7510	597 Martin Well Apt. 888, New Christopher, NE 57226	339
Stacy English	allenselena@gmail.com	391-681-4159x44374	743 Gamble River, Reneehaven, VA 78123	340
Derek Graham	dstanton@martinez-guzman.com	2339748072	385 Patricia Circle, Jayville, SD 20743	341
Priscilla Harrison	alexandercarroll@schwartz.com	311-625-2731	423 Valencia Crest Suite 418, Jamiemouth, LA 20534	342
John Howell	dclements@gmail.com	148.223.8125	91849 Oliver Extensions Apt. 125, Martinezmouth, NM 70218	343
Micheal Burke	carpenterwilliam@moore-kelley.com	753-028-0642x494	1397 Smith Mill, East Danielstad, AK 61729	344
Alexis Irwin	woodalyssa@gmail.com	(180)744-1997	18580 Davis Ports Suite 285, West Michellestad, IA 51952	345
Ellen Christian	kathrynbrown@yahoo.com	001-784-896-4656x212	225 Kevin Cape, South Tinachester, WY 91183	346
Nancy Irwin	christopherhall@hotmail.com	606.897.6984	USNV Campos, FPO AE 82683	347
Robert Bennett	whowe@flores-shelton.com	001-528-099-4411x311	979 Cheryl Street Apt. 327, Stephanieburgh, MA 75075	348
Karen Vang	wjimenez@hotmail.com	001-010-878-3814x875	0099 Humphrey Prairie Suite 886, New Linda, IA 28149	349
Alison Steele	ericclark@thompson.biz	+1-255-108-7740x525	57096 Mckee Way, New Eric, NH 96187	350
Heather Mcmahon	johnsonrachel@hotmail.com	(364)641-9926x525	88065 Lee Brooks Apt. 142, Lake Katie, CO 36708	351
Christine Nelson	jeffrey64@gmail.com	146-839-0519x763	3648 Cherry Rapid Suite 342, North Jordan, NV 10949	352
Kenneth Lee	daughertyjon@thomas.com	001-259-357-7814x132	29082 Diaz Mountains, Port Michael, WV 44937	353
Craig Barnes	zharrison@hamilton.biz	918-952-6266x52809	35924 Keller Road, Markmouth, KS 17881	354
Christopher Price	burtondavid@hotmail.com	275.216.5834x219	70909 David Locks Apt. 291, Carlborough, NY 20993	355
Zachary Flores	barberallison@gmail.com	498-282-3810x98651	83272 Bailey Squares, Westshire, IL 80990	356
Anna Johnson	sarah15@gmail.com	+1-281-555-2581x318	USCGC Bolton, FPO AE 28360	357
Latoya Ross	brooke28@davis-davis.com	+1-432-512-2279x2420	44559 Stephanie Keys Suite 084, Markberg, MS 40544	358
Kristine Adams	wesleymunoz@ramirez.com	5206106379	Unit 4150 Box 5680, DPO AA 78303	359
William Turner	canderson@gmail.com	490.261.6410x482	398 Daniel Lakes Apt. 115, Reesetown, MI 34071	360
Chad Heath	duncanjeremy@yahoo.com	+1-141-210-8876	87668 Stacy Passage Suite 152, Hawkinsfort, VT 63466	361
Jared Diaz	harrisamanda@jones.biz	688.015.4884x1683	1731 Derek Radial, Williamstad, MI 49874	362
Douglas Perry	hoffmandaniel@rowe.net	+1-318-740-0370x5003	USS Lee, FPO AP 68537	363
Brooke Mckinney	juan23@griffin.com	001-889-228-8708x182	7598 Todd Court Suite 756, East Kathleenton, SD 15553	364
Paul Gill	youngmichael@gmail.com	021.609.2093	5198 West Pike, South Kathryn, HI 03484	365
Daniel Hahn	lgray@yahoo.com	576.454.6130x78990	57582 Mary Station Suite 976, West Christian, MO 47813	366
Nathan Stein	singhchristine@hotmail.com	001-892-897-9076	13758 Phillips Pass Apt. 122, South Linda, AK 44342	367
Rebecca Bradley	wmyers@gmail.com	(014)221-7861x699	100 James Crossing, North Paulshire, MT 06957	368
James Young	phillipsmelissa@yahoo.com	+1-572-848-1034	Unit 7814 Box 2484, DPO AP 41471	369
Samantha Adams	tylermichael@gmail.com	001-106-388-8219	647 Farmer Causeway, Meaganland, KS 43001	370
Catherine Wiley	heatherrogers@gmail.com	001-725-208-1103x075	Unit 8656 Box 0699, DPO AA 64749	371
Eric Harrison	courtney30@hotmail.com	0426654230	987 Jessica Neck Apt. 971, North Vanessa, ID 64930	372
Erin Ramos	wpham@ramirez.com	195.115.4400x654	87280 Melissa Isle Apt. 468, Kellymouth, NE 56719	373
April Johnson	rogerszachary@yahoo.com	001-778-735-1025	84593 Tara Bypass Apt. 830, Brenthaven, IA 62296	374
Jennifer Jones	lmeadows@hotmail.com	853.294.8718	365 David Crescent Suite 568, West Cody, IL 97954	376
Brooke Miller	tracy32@yahoo.com	909.632.3909x492	USNV Stokes, FPO AE 32536	377
Meghan Peterson	kirkryan@griffith.com	+1-588-565-7891x6998	5917 Jason Summit Apt. 208, East Sandra, HI 51180	378
Felicia Lewis	eric17@hotmail.com	+1-707-218-6111	160 Chelsea Squares Suite 055, Barnesville, AR 52056	379
April Morris	andrea89@wiggins.org	(221)695-0531	PSC 5963, Box 6978, APO AE 41211	380
Ernest Lewis	spatel@yahoo.com	001-700-242-1724x470	86848 Massey Falls Suite 549, West Matthewton, AK 98948	381
Tyler Holmes	murrayadam@yahoo.com	327.354.9187	7946 Oliver Tunnel, Markfurt, FL 48393	382
Tara Nelson	cesar36@cantrell-burnett.com	8277070015	687 Boyd Springs, Jennifertown, MI 31761	383
Lisa Turner MD	berryjohn@tucker.info	094-548-6979x22846	59874 Nicole Valleys Apt. 084, Lynchborough, WV 31763	384
Michelle Mercado	stephensontammy@hotmail.com	493.990.3594	USCGC Lopez, FPO AP 26667	385
David Brooks	daniel72@yahoo.com	(359)041-7348	1305 Atkins Streets Suite 759, Garrettview, WI 67756	386
Daniel Williamson	deborah28@ryan.net	(735)486-6084x01964	440 Ryan Corners Apt. 777, Port Paula, CT 62642	387
Doris Coffey	obaker@yahoo.com	523-569-9773x65073	909 Christy Passage Apt. 675, Willisshire, PA 18137	388
Anthony Williams	stephanie08@richmond.biz	001-218-595-9355x792	4063 Martin Oval, North Eric, NM 80965	389
Nicole Boyer	melinda51@hamilton.com	273-540-4257	861 Philip Spurs Apt. 795, Knappview, SD 96471	390
Thomas Reynolds	paulmyers@yahoo.com	+1-215-548-8352x477	15650 Charles Pines Suite 273, Paulport, DE 91367	391
Brenda Parsons DDS	brianreese@yahoo.com	+1-748-405-6003x3404	06353 Antonio Summit Suite 385, Yorkland, AL 92211	392
Alexandra Kennedy MD	belldonald@schroeder.com	9338074342	05560 Evans Rapid, Gonzalezhaven, WI 13598	393
Thomas Owen	katherine09@gmail.com	412.950.0405	5722 Watson Cliffs Suite 251, Lake Jennifer, MO 60124	394
Melissa Lloyd	teresa62@gmail.com	149-524-4328x87625	7187 Benson Mountain Apt. 130, Nortonhaven, OK 95072	395
Beth Mitchell	bakerreginald@collins.net	001-765-657-4189	42802 Anne Locks, North Tracyfurt, AR 59387	396
Todd Hansen	amy69@gmail.com	8107689056	0958 Butler Green Apt. 383, South Tylerside, MA 74275	397
Lisa Simpson	tararivera@yahoo.com	005.489.6928x7382	4073 Frances Courts, Port Dominique, WI 12194	398
Mercedes White	jennifer89@owens-stanley.com	0556644725	05332 Reed Wall, Jenniferville, VA 56927	399
Anthony Stewart	austinmiller@gmail.com	174.683.4282	45647 Charles Rapids Apt. 374, Castroton, MA 92757	400
Sarah Chapman	followup@domain.com	001-661-790-6521x370	8707 Lane Burgs, Orrhaven, MT 10874	133
Carl Wright	followup@domain.com	389-496-6528x00536	712 Rachel Grove, North Patrickchester, NE 72589	375
\.


--
-- TOC entry 3414 (class 0 OID 24691)
-- Dependencies: 218
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.departments (department_id, department_name, information) FROM stdin;
1	Purpose Department	Agent every development.
2	Since Department	Quality throughout beautiful.
3	Knowledge Department	Ahead despite measure.
4	Agreement Department	Current practice nation determine operation speak.
5	According Department	Recently future choice whatever.
6	Great Department	Behavior benefit suggest.
7	Pm Department	Southern role movie win.
8	Human Department	Need stop peace.
9	Training Department	Officer relate animal direction eye.
10	Base Department	Term herself law street.
11	Commercial Department	Great prove reduce raise author.
12	Prove Department	Move each left establish.
13	Wish Department	Detail food shoulder argue start source.
14	Institution Department	At tree note responsibility.
15	Difference Department	How trip learn enter east no.
16	Everyone Department	Investment on gun young catch management.
17	Someone Department	Technology check civil.
18	Response Department	Others his other life edge.
19	On Department	Quite boy those.
20	Social Department	Shoulder future fall citizen.
21	About Department	Will seven medical blood.
22	Process Department	Success medical current hear.
23	Color Department	Well two truth out major born.
24	Him Department	Dream drive note bad.
25	Sign Department	Staff within mouth call process water.
26	Company Department	Month parent who up.
27	Someone Department	Require human public health.
28	We Department	Later easy ask again network open.
29	Account Department	Remain arrive attack.
30	Almost Department	Audience draw protect Democrat car.
31	Worry Department	Office drug list imagine behind probably.
32	Health Department	In tell approach president position.
33	Ask Department	Rock song body court movie.
35	Total Department	Better present music address behavior send.
36	Economic Department	Image loss ten total.
37	Community Department	Able hospital unit size expect.
38	Same Department	Product main couple design around save.
39	Ask Department	Arm once me system church.
40	Movie Department	Surface attention attack.
41	Training Department	Identify walk now often.
42	Among Department	Bank price north first end prove.
43	Former Department	Enter capital population lead.
44	Woman Department	Act perform none.
45	Black Department	Mrs media car.
46	Happy Department	These hard citizen.
47	These Department	Region particularly would pressure account stage.
48	Firm Department	Voice care break.
49	Both Department	Choice example decision garden reach table.
50	Mouth Department	Economy traditional anything plant stop analysis.
51	Goal Department	Pm energy scientist.
52	Ok Department	Night born war real chance.
53	Also Department	Old challenge camera final together.
54	Style Department	Together decide economic.
55	Board Department	Sister this image per choice.
56	Wonder Department	Ten wish specific thing.
57	Ago Department	Say forward us soon.
58	Treat Department	Environment skin blue the.
59	Town Department	Develop staff least figure somebody dinner.
60	Agent Department	Huge everything attorney significant.
61	Have Department	Hundred wonder movie voice boy wife.
62	Could Department	While enter board its rock finish.
63	Police Department	Break tonight couple and job mind.
64	Sure Department	Rather vote say culture issue we.
65	Wife Department	Perhaps professional by tonight medical.
66	Reflect Department	For recent never court professor.
67	Hundred Department	Past feeling nature a.
68	Few Department	Involve oil pressure let.
69	Letter Department	Memory soldier where save.
70	Reason Department	Exist professional people.
71	Better Department	Pull different current agency.
72	Election Department	Particularly shoulder lay though offer responsibil
73	If Department	Hundred challenge reach throughout team those.
74	Start Department	Despite sound receive let newspaper.
75	Whose Department	Lead soon property.
76	Operation Department	Fish sense kind spring throughout interview.
77	What Department	Knowledge city technology late seem style.
78	Factor Department	Machine dream key require doctor from.
79	Walk Department	Ball character him check degree increase.
80	Give Department	Letter artist strategy hope show watch.
81	Again Department	Herself accept goal send table well.
82	Kind Department	Section national owner determine detail job.
83	Air Department	From quickly identify close level.
84	Care Department	Move trade option production base investment.
85	Trial Department	Consider employee force lawyer front.
86	Until Department	Everything week instead strong like.
87	So Department	Appear weight difference attention whatever Americ
88	Allow Department	Current after charge call.
89	Relationship Department	Nor design record.
90	Speak Department	Cold parent security boy standard.
91	Foreign Department	Official up office.
92	Whatever Department	However resource away real physical.
93	Blue Department	Sure outside building worker.
94	Stay Department	Girl into have.
95	Move Department	Actually information majority item gun.
96	Vote Department	Religious itself safe whole establish.
97	System Department	Simple let stay or focus early.
98	Worry Department	Everything late seek.
99	Over Department	Property from management foot maintain great.
100	Evening Department	Evidence other they new might.
101	Cut Department	Drop image new.
102	Effect Department	Position make society behavior develop reality.
103	Follow Department	Hard network gas you nearly goal.
104	Long Department	Fill discover return firm.
105	Situation Department	Week real course school everybody operation.
106	Soon Department	Others wonder strategy fast guess few.
107	Section Department	Call animal approach factor want point.
108	Soldier Department	Bill activity expect long future whole.
109	Entire Department	Box assume man officer rather charge.
110	Talk Department	We be easy newspaper indicate other.
111	Present Department	Simply herself training father.
112	Per Department	Figure perform participant science way.
113	Despite Department	Decision produce church community avoid able late.
114	Phone Department	Fact discuss religious reflect law reach.
115	Window Department	Skin person product value.
116	Large Department	Name positive training.
117	The Department	Author coach film.
118	Smile Department	Tv keep light fight I evening.
119	Notice Department	Just our threat same page ago.
120	Drop Department	Onto again share start office several.
121	Continue Department	Million kind everything young job sport.
122	Benefit Department	Girl four prove tax form really.
123	Fight Department	Spend nearly lawyer fire follow.
124	Spring Department	Ten stay ability thank left.
125	Arm Department	Million performance material kind.
126	Approach Department	Environment capital explain thing.
127	Memory Department	Ahead picture son.
128	Security Department	Financial add impact different.
129	Thought Department	Left brother strategy.
130	Moment Department	Meeting event strong woman.
131	Either Department	Necessary himself two meet these.
132	Treat Department	Everybody so increase.
133	World Department	Environment able rise study oil process.
134	Tree Department	Land machine forward.
135	Source Department	Help usually thank wonder draw him.
136	Total Department	Analysis seat relate specific history.
137	Record Department	Manager already maybe.
138	Performance Department	Thank them key moment lead.
139	Seven Department	Improve pressure child.
140	Manager Department	Full realize power system.
141	Together Department	Here first responsibility service their along.
142	Authority Department	Piece TV young section.
143	Leader Department	Set region beyond.
144	Compare Department	Tough animal someone fall.
145	House Department	Certainly most not society color.
146	Bar Department	That people drive tree central leave.
147	Environmental Department	Effort act source top quality.
148	Coach Department	Kid generation onto.
149	Purpose Department	Real lead few yourself table.
150	Both Department	High grow fast recognize.
151	Age Department	Ever not rate seat any.
152	Police Department	Strategy total simply discover soon despite.
153	Customer Department	Economy sense should race carry best.
154	Product Department	Final kid often.
155	Sign Department	Bed far section.
156	Continue Department	Car much will most.
157	White Department	Store either station loss.
158	Sure Department	Second full boy while.
159	Chance Department	Team right woman whose.
160	Summer Department	Hand so add Mr lawyer pull.
161	Remember Department	Once state wait board.
162	East Department	Agent this no trip determine as.
163	Than Department	Travel few impact cause watch.
164	Fly Department	Break doctor Mr home he we.
165	Same Department	Industry score choice increase between majority.
166	Involve Department	Allow have kitchen wear.
167	Top Department	Between rate name within grow.
168	Information Department	Couple business summer lawyer.
169	Recognize Department	Politics others again skill.
170	Either Department	Skin day stop.
171	Once Department	Only spend do similar.
172	Story Department	Able teach certain candidate economy company.
173	Recent Department	Capital group small.
174	Per Department	Administration enter camera inside box.
175	Attack Department	Large gun order later develop past.
176	Short Department	Feeling poor all your suggest international.
177	Box Department	Republican kitchen tonight focus chance call.
178	Probably Department	Nature foot yes most law painting.
179	Bit Department	Table prepare shoulder.
180	Set Department	Involve thousand including still.
181	Inside Department	Role fine fine effort well.
182	Right Department	Attack story behavior benefit school speech.
183	Only Department	Only no form.
184	Can Department	Government program seek test return.
185	Field Department	Fine billion medical choice lot suggest.
186	Hard Department	Happen several off southern suddenly window.
187	Tell Department	Party poor ago upon stop environment.
188	Couple Department	Reflect finally fund accept.
189	True Department	Not husband center.
190	Property Department	Begin most heavy.
191	Long Department	Church find food walk other.
192	Use Department	Choose senior anyone.
193	Beat Department	Kitchen interest parent increase.
194	Dinner Department	Box involve exist question main project.
195	Answer Department	House out account feeling.
196	Development Department	Share face build.
197	Modern Department	Compare herself region matter street.
198	Sure Department	Author technology amount affect TV.
199	Training Department	Office of remember individual boy.
200	Against Department	Commercial way least ready gun.
201	Leave Department	During open model.
202	Individual Department	Second develop single baby.
203	Property Department	Most create simply.
204	Have Department	Door chair culture.
205	Play Department	Set pretty concern.
206	Spring Department	Management senior service large under north play.
207	Probably Department	Ten physical character attention kind.
208	Floor Department	Option goal avoid left.
209	Always Department	Hard expert popular.
210	Top Department	Past medical leg.
211	Once Department	Last special prepare.
212	Fund Department	Little character artist billion tonight gas.
213	Send Department	Mean common easy.
214	Left Department	Model particular hair truth hold.
215	Stage Department	Quickly appear piece free form.
216	Open Department	Exist rich prevent trade their.
217	Goal Department	Old center glass.
218	Reality Department	Can remember be next poor.
219	Get Department	Prove stock school.
220	Reveal Department	Behavior provide meet adult final week.
221	Growth Department	Court yourself choice fast small medical.
222	Notice Department	Also from short capital heavy class.
223	Theory Department	Speak close join improve put down.
224	Life Department	Expect security large move finally speak.
225	Manager Department	Happy water worker left.
226	Father Department	Me industry class current painting.
227	Turn Department	Appear lose he various.
228	Seek Department	Surface expect several evening town challenge.
229	Leave Department	Watch develop later.
230	Happy Department	Increase how hear.
231	Imagine Department	Heart agreement us.
232	Those Department	Social case expert stop receive.
233	Chair Department	Large accept bad eight strong nature.
234	Short Department	Month book explain feeling answer information.
235	Student Department	Lead book toward others administration middle.
236	Effort Department	Fact ability good.
237	Own Department	Cost property model guess well.
238	Off Department	Skill medical after them analysis hit.
239	Hour Department	Section ground attack drop.
240	Realize Department	Billion old series card good full poor.
241	Then Department	Wonder long consider care respond.
242	Yet Department	Already cut social though firm.
243	Force Department	Huge spring list already positive experience.
244	Training Department	Tend forward buy.
245	Hold Department	Threat sea thus hit wind.
246	Model Department	Happen something entire bar interesting issue.
247	Test Department	Nation fly bag produce.
248	Follow Department	Owner international ready goal amount.
249	True Department	Past itself police social arm.
250	Remain Department	Guy song quickly well central.
251	Political Department	Alone attack sing hand him.
252	Our Department	Painting quickly we.
253	Hot Department	Several off morning huge power.
254	Enjoy Department	Ago control military.
255	White Department	Brother simple region Democrat partner really.
256	Military Department	But table later together.
257	Light Department	Specific whose worry.
258	Region Department	Remember nearly face feel church.
259	Security Department	Soldier meeting building cut.
260	Chair Department	So ago network hard.
261	Suggest Department	Candidate this assume huge response long.
262	Item Department	Statement available win politics last.
263	Response Department	General there sister policy consider whom.
264	Lead Department	Treat area buy check clearly follow.
265	Security Department	Generation wait thus suffer.
266	Enough Department	Play nearly by field.
267	None Department	Maybe collection walk.
268	Class Department	Probably result painting successful.
269	Organization Department	Stay agreement animal.
270	Put Department	Enough decision occur peace air threat.
271	Offer Department	Politics few each southern.
272	Into Department	Law read citizen indeed.
273	Majority Department	Future century technology floor.
274	Traditional Department	Wish candidate have no five.
275	Man Department	Environment easy best.
276	Fill Department	Ten industry while total spend.
277	World Department	Return couple city you level these.
278	Modern Department	Bed hotel lead.
279	Effect Department	On any example our.
280	Threat Department	Experience account blue care enough hand.
281	Interesting Department	And anything no guy eye.
282	Imagine Department	Late near stay perhaps particularly campaign.
283	Bill Department	Health would newspaper hand certain.
284	Play Department	Husband American although require sound mind.
285	Church Department	Throw cause use five hotel pattern.
286	Thousand Department	Order medical meeting majority.
287	Order Department	Little admit former body.
288	Keep Department	Film together the picture others enter.
289	Reality Department	Officer return on color pick people.
290	Thought Department	Challenge quite all way body.
291	After Department	Finish charge real improve simple.
292	Wife Department	Their save artist catch debate foot.
293	Recognize Department	Moment finish community treatment garden great.
294	Sport Department	Particular court east newspaper.
295	Down Department	Side relate real major.
296	Media Department	Night various return explain of.
297	Of Department	Time house generation significant chair.
298	And Department	Western bad under pretty.
299	Small Department	Degree still even no even body.
300	Sit Department	Dream anything toward difficult do beyond.
301	Give Department	Beyond side accept nearly upon imagine.
302	Worry Department	Local current white fly position traditional.
303	Behind Department	Discussion school sure also TV individual.
304	Third Department	Value already structure small.
305	Cultural Department	Theory across nothing blue.
306	Government Department	Lawyer political modern threat.
307	Center Department	Life cover both class learn either.
308	Cultural Department	Say so nothing.
309	Sometimes Department	Compare task today still.
310	Myself Department	Beautiful protect continue cell food.
311	Energy Department	End dog send.
312	Girl Department	Old of end growth.
313	Eat Department	Property let civil.
314	Rich Department	Type thousand show real police wait.
315	Hold Department	Determine whatever long lawyer writer health.
316	Science Department	Tree serious soon stay seven quite.
317	Pick Department	Moment month gun.
318	Whose Department	Born stock total dark Mr clearly.
320	Around Department	Car indeed nor next pull.
321	Foot Department	How staff second.
322	Particular Department	And general as.
323	As Department	Worry line expert.
324	Couple Department	She within position.
325	Kitchen Department	Year him thank trade heart.
326	Result Department	Card team budget year hotel camera.
328	Serve Department	Interest here discover leave choice country.
329	Type Department	Allow produce past.
330	Would Department	Drive attack order.
331	Likely Department	Public the each analysis keep music.
332	Somebody Department	Cell year doctor.
333	Whom Department	Five our pull fly few century.
334	Recent Department	Determine feel article we they treatment.
335	Produce Department	New another general poor high.
336	Network Department	Recent impact feel contain Mrs.
337	Effect Department	Feeling remain south trip.
338	Or Department	Whose newspaper care drug data.
339	Radio Department	Two suggest begin.
340	Shake Department	Appear help painting always.
341	Baby Department	Source onto provide describe.
342	Detail Department	Field training deep couple scientist.
343	Skin Department	Trial receive region however dream focus.
344	Fear Department	Letter possible final growth third.
345	Man Department	Sort reveal seven.
346	Front Department	Have including none determine.
347	Child Department	End various often.
348	Key Department	Charge form here street.
349	Money Department	Pressure range either start whom politics.
350	Military Department	Collection some college result major.
351	Whom Department	Wrong whatever model stuff avoid stand.
352	Anything Department	Include successful discuss.
353	Second Department	Across media health.
354	Prepare Department	Tree process administration mother in admit.
355	Seven Department	Movie expert maybe recently.
356	Law Department	Blood benefit chance court.
357	New Department	Spring environment however health.
358	Into Department	North wrong difficult range summer.
359	Ready Department	Behavior here need.
360	Arrive Department	Reflect bar suddenly.
361	Quite Department	Not teach believe month amount.
362	Development Department	Little another avoid understand tonight nor.
363	Alone Department	Up fire which onto.
364	Soldier Department	Up federal nor note support.
365	Research Department	Forward sense cause write right may.
366	Half Department	Best discussion away.
367	Point Department	Western however similar ahead event yeah.
368	Military Department	Green wait it quickly.
369	Recent Department	Beat peace something require bank.
370	Class Department	Republican plant science first blood.
371	Accept Department	Know seven bill beautiful.
372	Lawyer Department	News mention billion bed never.
373	Picture Department	Six tell activity including single right.
374	Operation Department	Occur college herself catch.
375	Fish Department	Manage as itself inside.
376	Member Department	Guess want result.
377	Mission Department	Pattern leader career according how success.
378	Husband Department	Key issue statement prepare organization.
379	First Department	Owner receive look concern huge.
380	From Department	Same plan whose site.
319	Too Department	High Activity
381	Gas Department	Exactly skill half usually customer.
382	Offer Department	Race nearly well left.
383	Section Department	Just fact realize standard.
384	Stuff Department	Pull cause field education child.
385	Land Department	Available wrong look husband media.
386	Wife Department	Myself so growth time Mr.
387	Pull Department	Body eat professor.
388	Compare Department	And worker quality hundred sell whole.
389	Law Department	Action else member.
390	Natural Department	Oil offer knowledge hospital sign open.
391	Month Department	General agency bit.
392	Just Department	Break wait center.
393	Forget Department	Lay deal lot live just.
394	Same Department	Five feel special boy support.
395	Raise Department	Quality clearly worker.
396	Either Department	Company civil nice when discussion if.
397	Create Department	Policy it ahead pass.
398	Decade Department	Or home relate day sell.
399	Table Department	Officer son Mr.
400	History Department	Culture box provide majority whole.
\.


--
-- TOC entry 3415 (class 0 OID 24694)
-- Dependencies: 219
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.feedbacks (rating, feedback_id, feedback_date, comment_text, item_id, customer_id) FROM stdin;
3.6	1	2023-09-18	Dinner conference add move ever window network recently call than make.	143	268
7.1	2	2025-02-26	Off light key continue anything wait local.	84	42
9.6	3	2025-01-18	Husband available picture approach chance none fight yes.	288	292
3.8	4	2023-07-22	Share paper so difficult mission late kind team wrong figure perform participant science way debate.	226	91
1.5	5	2023-10-01	Produce church community avoid able late order fact discuss religious reflect.	122	164
6.4	6	2024-04-07	Reach under skin person product value interesting name.	239	380
1.5	7	2024-09-05	Training step author coach film see notice eye buy.	42	147
8.4	8	2024-10-06	Record wall matter management ball always it focus economy before while.	328	69
6.9	9	2025-01-29	Onto again share start office several compare million kind everything young job sport why like.	400	310
3.9	10	2024-03-03	Fly bit claim in many production hundred set already because education break.	234	218
5.6	11	2024-12-11	Ten stay ability thank left approach million performance material kind appear environment capital.	300	53
7.0	12	2023-11-30	Thing machine ahead picture son report financial add impact different success box water.	339	258
1.8	13	2024-09-05	Marriage respond meeting event strong woman during necessary himself.	253	259
3.0	14	2025-04-06	Meet these tell everybody so increase various meet star executive fear only your majority chance Mrs.	274	273
7.8	15	2024-01-14	Necessary myself lay focus country recently occur do simply analysis seat relate.	40	342
3.0	16	2025-01-10	History professional star wonder manager already maybe opportunity thank them key moment.	353	154
6.6	17	2024-04-09	Reveal improve pressure child light wide full.	180	192
7.6	18	2024-10-10	Power system system teacher here first responsibility service their along attention piece TV.	61	176
2.5	19	2023-10-14	Its better plant their kitchen really tough animal.	186	391
2.6	20	2024-12-29	Fall hear certainly most not society color bad.	206	317
1.9	21	2025-02-25	People drive tree central leave effect effort act source top quality citizen.	224	398
5.0	23	2024-10-15	Against stop how account ten sing wind treat seat strategy total.	178	218
2.2	24	2024-12-13	Parent good PM per question return process stuff pick tough.	101	163
8.1	25	2024-09-04	Final kid often run bed far section.	309	240
4.2	26	2023-09-04	Car much will most tree store either station loss southern.	318	187
6.3	27	2024-11-20	Sound life away senior difficult put purpose however suffer newspaper bed house.	392	396
8.9	28	2023-11-12	Buy happy see energy herself police he push likely people wall foreign particular positive play.	173	61
4.1	29	2024-04-15	Power bring animal also you break doctor Mr home he we.	241	256
4.1	30	2024-10-12	Industry score choice increase between majority impact week allow have kitchen wear talk between rate.	352	168
7.2	31	2024-06-16	Art every why we station begin deep police wife anything four writer.	7	335
4.0	32	2024-12-22	Day stop never only spend do similar small other everyone worker would music sometimes body.	48	284
1.9	34	2024-03-12	Box as large gun order later develop past road training probably feeling poor all your.	131	17
5.1	36	2023-12-06	Measure involve soldier boy pressure there necessary tend involve thousand including still human role.	240	44
5.6	37	2023-12-19	Fine effort well rather listen before be it season head candidate art what.	299	15
8.2	38	2024-06-30	Prove improve them wait institution trouble anything explain fine billion medical choice.	352	217
9.1	39	2024-04-29	Suggest glass news boy everything difficult investment night should perform.	392	342
4.2	40	2024-09-26	Ago upon stop environment Congress reflect finally fund accept thank not husband center plan air.	143	362
1.7	41	2024-11-20	Democrat information game have return since nothing be apply church pay purpose evening product magazine.	39	115
1.8	42	2024-03-29	Event sense box involve exist question main project animal house out account feeling.	22	41
4.9	43	2023-10-02	Share face build market issue can mouth discover next.	56	273
8.8	44	2024-09-20	Author technology amount affect TV television office of remember individual boy again.	386	240
5.2	45	2023-12-29	Soon peace story turn because such during open model.	104	93
2.9	46	2024-02-22	Second develop single baby plan most create simply go when population.	262	330
8.9	47	2023-08-13	Bill eight community check service away week physical less nor.	302	173
6.6	48	2024-07-14	Race think poor worry follow wife firm key light place someone option goal avoid.	123	44
6.1	49	2024-04-13	Also hard expert popular within bed order his oil west school American training occur.	297	250
8.4	51	2024-06-01	Particular hair truth hold simple quickly appear piece free form newspaper hit edge surface who.	291	145
3.7	52	2024-08-01	Four old center glass whose recognize hot organization visit.	286	386
5.4	53	2023-12-17	Heavy social spend prove stock school rate money position interest gun guy Congress degree way.	273	167
3.9	55	2024-12-06	Capital heavy class story side speak close join improve put down know expect security large move.	43	42
4.7	56	2023-12-17	Tough create question now key show sing me industry class current painting their appear.	93	370
4.8	57	2024-04-28	Never bill suffer surface expect several evening town challenge join watch develop.	180	74
9.8	58	2024-04-05	Us increase how hear history bank different five between research friend certainly.	172	5
7.3	59	2023-05-20	True line story serve light past town affect democratic change vote.	171	17
2.8	60	2024-08-05	Institution simply down business draw police performance artist student matter movie place offer responsibility fact.	377	233
6.3	61	2023-04-22	Good number cost property model guess well name skill medical after them analysis hit health section.	345	17
8.4	62	2024-01-23	General run pick sign same forward and national.	374	211
3.0	63	2025-01-11	Store range wonder long consider care respond want already.	319	134
2.6	64	2023-09-24	Social though firm financial huge spring list.	237	284
4.4	66	2024-01-09	Many marriage under mind song risk bad own state.	350	93
2.0	67	2024-06-17	Fly bag produce fill owner international ready goal amount thank good.	70	120
5.4	68	2024-03-23	Police social arm provide image message seek civil all support question.	9	214
6.6	69	2024-03-26	Call door population gun we allow check.	157	117
2.8	70	2024-04-04	Head several off morning huge power economic box save material hit no.	173	255
5.4	71	2023-11-10	Region Democrat partner really your customer career available common require young.	94	286
3.0	72	2025-01-09	Property remember nearly face feel church remember record company gun difference world.	229	172
8.0	73	2024-12-26	Door management guess occur level work candidate this assume.	312	12
4.3	74	2024-02-24	Moment shoulder statement available win politics last quite general there sister policy consider whom.	155	228
4.6	75	2024-03-22	Treat area buy check clearly follow remember generation wait thus suffer economy play nearly.	348	138
2.6	76	2023-07-27	Field move maybe collection walk child probably result painting successful nor stay agreement animal political officer.	104	309
8.6	77	2024-09-07	Short indicate police marriage phone face what lot source rate.	304	26
6.7	78	2023-12-08	Authority art keep machine daughter parent fine responsibility safe team wish candidate have no.	106	51
4.4	79	2023-12-24	Letter environment easy best face his past eat tend civil.	354	58
3.1	80	2023-12-31	Return couple city you level these market bed hotel lead drive on any example our.	378	163
3.8	82	2024-06-21	Stay perhaps particularly campaign benefit health would newspaper hand certain own.	147	358
3.1	83	2024-02-26	American although require sound mind chance throw cause use five hotel pattern successful order.	234	70
5.0	84	2024-05-19	Mother remember feel staff happy purpose woman on someone rise read ago listen whose situation.	328	18
6.8	85	2024-12-13	Officer return on color pick people subject challenge quite all way body affect finish charge real.	375	294
1.9	86	2024-03-04	Simple turn their save artist catch debate foot production moment finish community treatment garden.	381	192
6.1	87	2024-01-21	Particular court east newspaper different win father eye debate relate first.	20	33
8.5	88	2024-01-16	Value somebody event business quality here woman stand west source fact explain research get kind.	391	167
8.1	89	2023-11-06	Degree still even no even body scientist dream anything toward difficult do beyond form.	361	249
1.3	91	2024-09-07	Sense expert experience arrive shoulder present discussion school sure also.	37	330
6.5	92	2025-04-05	Individual study value already structure small control see the.	377	337
8.8	93	2023-12-01	Across nothing blue work expect writer myself.	359	394
6.1	94	2024-05-08	Surface life cover both class learn either control say.	369	261
4.1	95	2024-12-25	Nothing serious compare task today still middle beautiful protect continue cell.	80	372
4.4	96	2023-12-28	According himself land environment form old of end growth door.	32	105
4.8	97	2024-09-20	Let civil rather type thousand show real police wait.	291	381
4.5	98	2024-01-31	Determine whatever long lawyer writer health reduce tree serious soon stay seven quite other skin moment.	348	348
8.5	99	2024-06-04	Back nor article natural measure of change foreign minute break day on.	213	81
10.0	100	2023-06-30	Knowledge argue car indeed nor next pull final against effort able design authority interest red.	311	27
9.4	101	2024-06-14	Various attorney value all important shoulder she within.	158	66
9.8	102	2024-09-03	Hear through large true help bag who themselves card team budget year hotel.	375	284
2.5	103	2023-07-28	Strong series without leg rest interest here discover leave choice.	77	150
1.3	104	2023-09-14	Allow produce past view threat drive attack order.	366	387
8.6	105	2024-04-01	Public the each analysis keep music senior simply cell year doctor trouble office officer significant stand.	92	362
4.6	106	2023-10-22	Then worry miss including every news option same compare quickly new.	309	159
9.8	107	2023-05-27	Walk provide skill five indicate chance heavy senior list support feeling remain.	169	232
3.2	108	2025-01-05	Trip none whose newspaper care drug data position two suggest begin right couple environmental.	227	203
3.5	109	2024-09-25	Owner them could seven right next look thank four whatever address view while bring yourself look.	148	223
9.2	110	2023-10-26	Region however dream focus executive letter possible final growth third letter sort reveal seven floor data.	250	193
7.1	111	2023-12-20	Animal ten scientist administration network once result far cultural discover now early nearly.	82	139
9.2	112	2024-10-03	Either start whom politics make collection some college result major true my.	226	136
7.9	113	2024-08-31	Model stuff avoid stand any according case piece.	4	348
4.3	114	2023-06-12	Across media health pay project pattern low maintain according.	356	164
6.4	115	2024-06-22	Activity morning ever within admit spend purpose south travel blood benefit chance court.	324	182
9.4	116	2024-06-02	Spring environment however health image north wrong difficult range summer president.	71	278
5.4	118	2024-03-23	Not teach believe month amount deep test thought little another avoid understand.	332	227
9.2	119	2025-03-19	Nor allow up fire which onto sell require huge baby class drive strong home to.	320	137
6.8	120	2024-01-03	Sense cause write right may window approach join stuff future shoulder western however.	168	67
4.2	121	2024-12-11	Ahead event yeah make green wait it quickly produce beat peace something.	322	274
7.0	122	2024-10-25	Bank child Republican plant science first blood accept.	115	245
9.7	123	2023-12-16	Growth especially car cost large never impact ago government behavior our foot history.	359	68
1.6	124	2023-12-03	Hold be top toward within occur college herself catch feeling manage as itself.	377	232
7.8	125	2024-03-13	Machine baby edge east person order crime blood fight we forward.	254	207
2.1	126	2024-08-14	Sound forget friend spring teacher wind carry fly water cut fire who.	200	164
8.2	127	2023-12-24	Same plan whose site for exactly skill half usually customer young.	7	66
6.9	128	2023-09-07	Agree road wall decide something story attorney summer some pull cause field education child institution.	312	248
6.3	129	2024-02-07	Last our old move type thank industry already.	216	146
8.3	130	2024-01-25	Order trial body eat professor coach partner none population position whom former someone black better.	270	147
10.0	131	2023-10-10	Section newspaper reach determine hear leg quickly real character young lot far turn beat story.	47	88
4.7	132	2024-11-08	Give gas six miss give best reveal laugh attack.	125	137
4.6	133	2023-05-25	Against gas body son upon scientist might necessary.	400	320
4.5	134	2024-01-03	Interview left something picture control price how scene third last involve above Democrat everything region.	224	286
8.3	135	2024-12-29	Officer son Mr hand culture box provide majority.	279	23
8.3	136	2024-08-29	Others particularly only girl suddenly pay sport relationship father pass be care.	189	170
9.8	137	2023-07-21	Figure consumer really memory industry case himself control player really.	135	259
9.7	138	2024-09-03	Never majority cell fire late approach grow act carry.	18	174
5.1	140	2023-08-29	Not significant manager member of environmental myself yard my series service kid despite interesting.	242	378
10.0	141	2024-11-12	Fear yourself last give stage keep yes simply down specific.	190	211
8.6	143	2023-12-04	Of weight method too spring career seek in arrive everyone pretty.	317	398
1.1	144	2024-10-16	Economic represent stock seven put majority officer environmental increase.	228	369
6.6	145	2024-04-06	Plant they behavior middle everything view hard wear.	72	168
4.2	146	2023-12-31	Able similar run room learn professional group as move design involve deep environmental stock front official.	385	278
4.4	147	2024-07-03	Small thus several animal phone student administration upon citizen lead yeah into yet travel.	287	261
2.9	148	2025-03-06	City usually ever pressure economy head tough close how figure record.	316	316
4.9	149	2023-10-19	Pretty region ability live car difficult quite act receive stage write institution car.	79	171
6.4	150	2023-06-15	Him room bill finish thing case similar send card year.	58	41
7.4	151	2023-08-09	Most across practice key reveal physical character in.	9	351
9.8	152	2024-10-05	Team beautiful beyond sell operation himself white fire cause everybody base network outside.	55	275
1.4	153	2024-08-04	Single real summer probably feeling military meeting security far approach today.	252	379
6.2	154	2023-10-23	History drop point audience thousand activity guess first hit stuff inside national common likely.	155	352
6.1	155	2024-12-09	Admit attack energy always art smile media pick.	37	193
2.8	156	2024-05-14	Interest I policy Mrs check base bad TV window choice force only shake.	125	359
9.4	157	2024-09-06	Financial join well draw each under break partner.	54	223
7.1	158	2023-06-02	Program price compare actually case activity market get military state else.	139	253
9.3	159	2024-02-03	Seek them run brother tonight friend investment model enjoy.	209	76
7.9	160	2024-07-11	Baby lawyer growth matter note happy effort bill off reveal direction meeting analysis television each line.	187	233
4.6	161	2024-02-12	Condition whether along sort research pretty different eat trouble.	196	390
1.1	162	2023-12-25	Step number budget pull apply development middle animal husband theory tend.	171	283
7.9	164	2023-09-19	Set early according improve do get style theory week ability price support road billion morning.	339	253
5.1	165	2023-10-22	Man art young Republican behavior TV today mind red head window be believe.	231	236
5.9	166	2023-08-02	Avoid nothing itself who door end fire song red save fish evening avoid.	87	290
9.9	167	2023-09-25	Sister once choice clearly letter image movie who debate.	382	211
7.8	168	2023-12-16	Enter build citizen rather step recent American structure foreign before eat green message quality.	304	246
5.6	169	2023-11-09	All identify laugh security economic left sound cause activity.	343	179
8.0	170	2025-01-24	Candidate statement head piece popular old else spend against ask.	44	117
3.0	171	2025-03-21	Speak begin suggest speak business walk anything under item right many him interview.	122	123
6.8	172	2024-01-20	Traditional every land chance pass pay positive material third look.	250	9
4.6	173	2023-06-28	Him information poor something eat yes myself affect him require look.	398	22
8.3	174	2024-12-17	General not focus establish ago others ahead specific exactly speak line group once do.	338	338
5.5	175	2023-08-22	Easy drop move social say shake way offer.	43	184
6.0	176	2024-12-30	Great stuff suddenly compare or south recently trial agreement red way nor none.	395	195
9.9	177	2023-09-14	My compare also argue own after long forward pass southern future concern sort than.	66	375
5.9	178	2023-06-06	Challenge relate center book money half authority.	105	70
7.4	179	2024-10-19	Only from follow wish run join police maintain fish religious no threat party.	126	321
6.7	180	2024-01-23	Program sport her safe family concern ability reduce of surface.	35	30
6.1	181	2024-12-09	Allow own TV whose determine not view cell seat draw word collection those become remember.	272	223
4.9	182	2024-08-29	Land enter economic attack either blue ability history run why this manage.	126	204
9.5	183	2024-02-09	National big look tell prepare reach class available suffer far five weight.	385	180
9.4	184	2023-06-17	Color heart rule natural together behavior order party lot all wall close.	55	166
6.0	186	2023-08-18	Guess into far product outside current agent.	92	308
6.8	187	2023-08-31	With list break size likely thus enter politics hold he high.	259	18
4.3	188	2023-09-12	And keep enjoy student nor character recent benefit property space including series dinner article.	202	55
6.0	189	2024-02-15	Industry movement term little think live bad total research maybe too song quality per build.	352	236
9.4	190	2024-11-29	Common worker will speak call interest write itself young physical street election treat trial.	210	106
6.6	192	2024-05-30	Both change note old who beyond black single size test they there enough.	215	226
5.6	193	2024-09-10	Occur list common idea peace race I how these real any little environmental head.	387	18
2.9	194	2024-01-08	Financial successful teach range win direction feel season similar fly rock.	160	168
2.0	195	2024-08-02	Could deep station scientist service test start middle.	299	133
4.5	196	2023-08-22	Find medical career surface these ahead cover strategy.	114	214
5.8	197	2025-01-30	Economic lead truth relate ever statement measure play.	300	391
7.3	198	2023-07-26	Drop major land whether listen necessary general.	373	27
6.8	199	2025-01-30	See read expect hit clear occur who tax positive question especially.	102	151
5.4	200	2024-03-04	After sister should across treatment positive over across education source figure whom poor interest heavy.	329	21
2.1	201	2024-01-16	Edge level quality station however bill memory production successful hear positive participant fear blue.	314	45
6.2	202	2023-06-09	Write political technology end represent throughout federal change she tonight south sort.	53	239
9.4	203	2024-07-30	Produce race return pretty young else industry home along remain occur couple risk.	179	29
2.8	204	2023-10-10	Point little wait grow feel color price next family likely scientist rise next tree water.	239	58
5.6	205	2025-03-19	Pressure develop development the inside thought he one less brother approach plant.	400	194
2.7	206	2024-07-14	Author threat matter test high fear approach take case customer important notice trade leader first resource.	336	203
2.5	207	2024-12-16	Maintain piece computer play above event seven collection.	13	297
4.2	208	2024-12-04	Majority shake because pass plant idea whole himself also.	279	81
8.9	209	2023-09-22	Wear throughout series most adult above safe difficult theory fine bill me.	160	116
4.5	210	2023-12-14	Assume animal way lay minute model its rather card.	254	263
9.7	211	2025-03-21	Grow could way truth idea direction road capital safe operation college hand practice also.	325	93
2.4	212	2025-03-01	Side perhaps order answer blue structure answer break know buy education.	182	201
7.1	213	2024-10-17	Day rate act inside big minute performance red industry.	23	268
3.1	214	2025-03-18	Memory pay executive size marriage participant sing story.	221	379
1.5	215	2023-09-24	Region far always many debate value former able public trade structure protect.	152	15
1.1	217	2023-05-29	Spend them system growth quality international break surface.	109	62
4.5	218	2025-03-12	Act catch positive forget thus western environmental.	74	184
5.0	219	2024-11-10	Head garden box hundred lead structure ready long.	246	390
3.6	220	2024-03-13	Both receive around wall city indeed opportunity soon question.	228	197
9.6	221	2023-09-08	Here grow agreement range stuff wind candidate turn both in animal energy fire relate question should.	153	51
9.2	222	2024-07-11	Difference what their mind read peace item risk loss professional political chance step throughout party.	88	373
3.9	223	2023-04-30	Measure light many close seem fly former everything medical.	386	23
1.5	224	2024-06-21	Idea dog learn soon large task language budget market president bill include.	258	200
5.8	225	2024-06-26	A before page people fight meet deal public wear guy approach development lawyer nice people.	32	79
8.7	228	2024-12-10	Leader operation mean white above save network item one under sit travel reality community.	90	241
9.3	229	2025-01-13	Billion price paper focus thing industry participant realize eat.	247	190
3.9	230	2024-02-24	Wife laugh card include record security federal reduce team Republican very plan.	160	228
3.1	231	2023-09-24	Person fact generation public wonder practice when mean reason follow.	69	340
8.6	232	2023-07-19	No old wall report purpose throw move there institution actually blood herself.	161	129
7.9	233	2023-06-01	Customer seek claim expert economy style real far.	262	173
9.8	234	2024-11-26	Allow sport bill test science ten score night down six sometimes explain professor unit hold.	235	335
8.9	235	2024-12-23	Whole approach season data than team kitchen difficult plant remember happy open.	291	232
5.3	236	2024-11-14	Cultural right cover large work avoid while same budget American evidence enough claim suffer accept letter.	95	30
6.3	237	2025-04-18	Always up others similar personal successful feeling so nearly.	297	166
1.9	238	2023-06-16	Moment whatever minute skill city myself idea glass third professional former family.	102	190
4.9	240	2024-06-13	Agency might side method meet main fast prepare fly bank benefit.	65	393
6.6	241	2024-12-11	Mouth phone decision picture defense rate structure day stock these scientist itself stage authority rather.	163	117
1.4	242	2023-05-09	Response also available concern edge audience start treat imagine later identify first hope brother.	263	228
7.0	243	2023-04-25	As second animal summer group me face rate paper example unit high state air choose detail.	24	125
7.2	244	2024-11-21	Someone support far plant fear thought whole term possible whatever action themselves center.	106	92
2.4	245	2023-05-23	Of hour natural be decide scientist rise.	337	316
8.8	246	2023-10-02	Town surface central contain pattern education boy provide note approach seem wrong nature.	330	196
4.2	247	2024-09-02	Available public economy culture oil week ground provide doctor expect attorney cover magazine foreign process.	267	87
4.1	248	2024-10-10	Charge note space when collection finish size Republican political everybody growth quickly former lose knowledge simple.	220	357
6.2	249	2024-05-03	Board population bank exactly step through cultural safe phone road throughout support place spend often.	165	103
1.6	250	2024-12-08	Defense already end thus music president chance hotel through operation tax card may bed hair action.	234	133
7.7	251	2023-10-23	Range serious cell city not not the certainly rule voice American seven discussion enough doctor protect.	28	130
8.6	252	2024-05-27	Hold truth thing always possible billion why plant event score official now.	344	191
1.7	253	2024-02-07	Half president structure might heavy trade might good test main lot page.	234	25
9.6	254	2024-05-14	Key discover method exactly change church own stage produce.	244	84
6.8	255	2024-03-08	Result loss long decision claim street against amount of claim picture always.	102	109
7.6	256	2024-07-08	Argue election conference when out nor affect rest product.	235	13
4.5	257	2023-11-27	Describe paper likely loss detail improve central old.	19	63
1.2	258	2024-12-07	Perhaps member cold rate two others attention her car.	362	129
4.1	260	2024-11-25	Behavior process top much ability visit question issue inside.	260	50
8.6	261	2025-02-28	Recently investment voice lot shoulder go source.	68	233
4.6	262	2025-03-26	Best care local discussion teacher exist theory impact country remember smile official brother according pressure.	318	83
4.6	263	2024-10-06	Impact blood international one end movie north partner yeah however data need.	51	64
3.4	264	2024-06-27	Condition next low write officer similar huge catch tell budget discover situation we beyond.	60	37
3.6	265	2024-05-19	Skill song pass range appear home player source statement likely outside because enjoy.	42	265
6.7	266	2024-02-03	Participant right us husband prevent expert white arm.	17	269
2.7	267	2024-12-11	Policy keep cut prevent sound experience almost outside middle.	55	32
2.7	268	2023-10-17	College already dream a church you sister good house only military say attention bed expect stop.	258	98
5.8	269	2025-03-31	Give white everybody paper create upon offer end imagine blood authority family water sort what then.	272	227
5.1	270	2025-01-11	Economic kind help low during fund simply race to television loss election him small detail.	117	390
4.3	271	2024-10-16	Son include good movie red enjoy expert human see garden.	188	170
4.9	272	2024-06-24	Live government thus especially water raise travel material current.	296	293
6.8	273	2024-11-12	Their deal dark economic peace choose blood turn put professional.	396	66
8.1	274	2024-08-09	Share must amount lot per manage world.	227	310
9.3	275	2025-03-17	Than make worker trouble exactly develop office approach son long must maybe hour rather company.	120	27
6.2	276	2023-07-23	Least ready activity decision ok foot party employee nature down likely party hand material decision.	290	354
6.4	277	2024-10-16	Half hundred late number without rather sport result sound new task cultural.	256	29
7.7	278	2025-01-01	List act instead care throw piece move firm main.	216	56
2.5	279	2023-11-01	Teach answer between clear democratic effect stuff benefit seat employee growth newspaper special general in.	185	323
1.5	280	2024-01-18	Current office power company sister great pull maintain say threat high expert place certain cold space.	284	319
4.6	281	2024-01-08	Piece occur support author class direction first fact environment popular even know television.	140	236
4.8	282	2024-01-28	Minute late cold take by doctor edge season see decision however believe view list approach side.	17	99
3.5	283	2024-05-31	Billion peace base use hope director scene kitchen.	120	257
6.7	284	2023-07-28	Money color along ground trip ten level that various.	79	162
6.3	285	2024-06-20	Career way much opportunity lead see theory itself policy move training loss dinner.	54	237
6.1	287	2024-12-05	Something others someone nature country think join economic resource position stock determine bad.	240	282
2.1	288	2024-08-18	Might son party really even possible mother especially could attention.	87	23
5.6	290	2023-07-27	Road do character management game find son your less social form such weight.	270	384
6.0	291	2023-06-03	Simply author like court success stage stock business should eat side.	92	310
3.5	294	2024-09-19	Wind door its address some once how during why ok.	191	182
3.8	295	2024-10-08	Read choice side eat matter rather full wide service art green child movie blue.	32	214
8.7	297	2023-05-21	Religious next my majority note myself food life test out team civil most last.	31	399
6.2	298	2025-01-16	Must law simply media safe third people hair per fly as.	268	276
6.1	299	2024-06-12	Couple raise she child executive important focus benefit probably analysis visit condition all.	203	135
4.8	300	2023-07-13	Court all politics home majority perhaps opportunity any determine responsibility actually TV pretty up.	93	239
8.1	301	2025-01-26	Life police guess sea three state some around.	110	268
6.2	302	2024-08-12	More same strong back democratic mind big discuss history cover prevent.	224	315
7.8	303	2024-07-06	Way next newspaper second short office purpose reflect interview bit society nearly measure price move outside.	103	231
2.6	306	2023-10-04	Against state ready every network news unit choice also green catch happen.	113	151
9.5	307	2024-07-16	Do specific begin hundred truth safe rich society common stay.	13	73
2.8	308	2024-10-07	Standard believe politics also space high sister two free they its us building side section.	355	151
3.7	309	2025-02-08	Up plant place approach modern floor north force recently check purpose young wife send offer bed.	217	214
4.4	310	2024-03-21	Skill challenge from live seat nature energy huge its recently seven.	184	273
6.7	312	2024-01-13	Pretty show college glass start sort perhaps key under do rate choose rock beat science drug.	77	93
6.7	313	2024-08-15	Than star add really born late age decade Mrs.	303	120
3.1	314	2023-09-26	Model else low role center recognize adult on professional analysis color exist smile peace apply.	324	55
1.8	315	2024-09-10	At produce production tree growth blue fall.	63	375
5.3	316	2025-03-07	Discuss herself with between firm term mother cost may leader unit again easy.	359	391
6.0	317	2024-06-05	Four hotel church get goal personal door within may speech personal.	11	354
3.1	318	2025-03-03	Three spring ahead never exactly charge today prevent because him whether partner personal.	73	132
5.5	319	2023-10-14	Drive check wife travel forget my deal catch must son television finally relate.	99	71
7.6	320	2024-05-31	Involve training show prevent north citizen attack mouth rest.	368	241
9.2	321	2023-09-11	Style certainly ahead five win which field seat start PM scene charge.	195	223
4.3	322	2023-09-13	Capital ago worry pay paper partner others discuss.	261	187
2.9	324	2023-05-02	Wear development provide dark daughter computer western keep pay reach term.	146	4
3.4	325	2025-03-10	Into simply part station result hour voice occur movie political.	87	349
8.9	326	2024-10-18	Minute later still amount yet million how.	209	329
2.8	327	2024-11-12	Newspaper might piece any fact huge fight.	230	70
5.8	328	2025-01-22	Leave institution party approach might central stop later reveal both single.	373	383
7.2	330	2024-04-04	Be religious risk window partner civil nearly analysis color friend the television.	193	42
5.3	331	2023-08-24	Condition Republican information finally shoulder land phone brother capital.	236	274
6.0	332	2023-09-25	Performance education learn talk myself accept third.	376	42
1.3	333	2023-10-22	Open little improve bag outside each natural people newspaper stay.	252	21
5.2	334	2023-05-28	Challenge president already take project study fear turn any.	56	293
3.9	335	2024-03-09	Claim expect produce record occur no whom see growth.	20	220
8.1	336	2023-05-18	Shoulder follow today star serve successful assume likely.	233	168
4.7	337	2023-07-24	Forget including decide decade around number without more because right painting.	297	399
6.5	338	2024-12-23	Interview summer employee offer perhaps until pass market role marriage space.	193	318
2.9	339	2025-03-07	Discussion fact cover brother let someone scene debate past increase animal glass south defense political real.	116	145
5.0	340	2023-11-04	Film media food accept rate game right pattern.	15	68
7.7	341	2023-05-13	Create street two look listen along career choice leave.	319	272
8.5	342	2025-02-21	Time leg sport until argue minute north question new affect officer forward trouble somebody at.	340	77
4.4	343	2023-08-14	Subject fund heart move coach paper cost bring site final tax.	317	256
6.1	344	2024-10-23	Even beautiful theory he stop few modern.	115	85
3.0	345	2023-09-03	Hear also dark begin media sometimes toward child.	189	10
4.4	346	2024-01-10	Run model simply century the state visit quality car right least require mission about.	373	26
3.9	347	2025-04-14	Reach organization beautiful level animal minute probably.	309	143
3.2	348	2023-12-19	Officer fine throughout fly court everybody five.	207	87
1.7	349	2024-03-28	Evening church boy when nice bill my near even.	51	378
6.8	350	2024-10-19	Off commercial find throughout music anything ahead tough anyone himself beat.	218	125
4.6	351	2024-02-19	Relate through picture real knowledge green forward cup serve.	58	148
9.9	352	2025-01-08	Bad type share nothing behavior sort recognize best financial popular short like water century time.	273	32
7.9	353	2023-11-07	Hot record professor small think law air little goal leave color should.	379	396
1.0	354	2024-08-02	Camera bill stage someone for power society mouth husband including per nature wind himself future.	305	251
7.5	355	2025-01-12	Issue woman note garden reason community prove school Republican student boy other foot best knowledge final.	320	186
5.8	356	2024-03-01	Our rate others star force population article design.	277	247
9.0	357	2023-08-06	Tough player a chair chance most hope official crime race first now tree fight wall itself.	147	45
2.9	358	2025-03-31	Wrong old particularly member summer system artist too whose a nice without.	225	375
1.9	359	2023-07-15	Tend dog reduce hour fish him high nation production little could.	289	174
4.8	360	2024-02-13	Style child young prove care author administration return main join wrong be.	187	302
3.6	361	2024-08-31	Team throw receive us perhaps lawyer interest star his difficult interesting account marriage.	311	19
9.4	362	2024-11-08	Republican especially unit office almost also low happy oil which.	237	199
3.0	363	2023-06-22	Room money teacher seek evidence might model particular early.	198	46
4.3	364	2024-08-22	Range much often party tough movement action law.	303	366
5.7	365	2025-03-24	Off former good within far cold reason our fight size employee picture official of.	78	213
6.6	366	2024-09-11	Speak person expert bar measure surface everyone car exactly tax add.	263	56
9.6	367	2023-07-16	Company option character land space end red machine son television garden base certain value child many.	187	7
4.6	368	2024-03-06	Draw key point decision same generation politics sense break cold human feeling second.	168	320
3.1	369	2024-11-25	Do raise hope enjoy most itself eye something high firm morning what best most government.	65	106
9.4	370	2025-02-04	Particular present evening establish sort effort once leave push drop public side mind.	212	281
9.0	371	2024-09-28	Finish action across attack in moment rate goal rise.	320	397
9.1	372	2023-11-02	Alone people arm order thus describe outside business when beat.	152	120
2.2	373	2024-08-02	Heavy shake possible sort continue book contain far produce.	372	285
2.2	374	2023-06-18	Two everybody interview tough show food class available since him four art western enough.	368	208
1.6	375	2024-03-28	Man up particular condition man century shoulder despite.	339	339
3.8	376	2024-09-01	Tree resource billion authority number economy knowledge to.	247	96
2.4	377	2023-08-14	Usually professor entire record toward off middle.	344	177
4.0	378	2025-04-20	Long identify road speech audience difficult his ready sister building movement yard four field.	173	318
3.3	379	2023-06-02	Young positive half table future subject set face data never whose produce federal hope blood read.	54	181
6.3	380	2024-05-02	Those just country along agent you draw home.	176	269
5.9	381	2024-12-26	Poor matter who speech whom administration fund front return if deep president mission vote thank.	323	274
4.2	383	2024-09-05	Add plan toward star best particularly structure ask stage.	380	74
5.1	384	2023-07-18	Organization past as dark front structure scene I building range national focus who degree.	225	372
7.7	385	2023-05-26	Community as event serious collection have close during old card social place heavy citizen they ball.	135	177
4.9	386	2023-04-26	Unit religious order exist really society live camera central.	172	313
3.3	387	2023-11-17	Late dream company reality other response partner because step feeling industry newspaper court worry with.	379	300
7.2	388	2024-08-13	Television would medical less phone decade apply both chance such treatment marriage.	361	308
9.5	389	2023-08-23	Approach hair decide edge pattern three law.	213	368
7.3	390	2023-07-11	Understand compare size machine break time return.	211	250
8.4	391	2024-07-24	For cup quality for single for better scene thank heart determine likely machine three certain until.	278	50
8.1	392	2024-04-08	Hold carry rest place wish dark camera realize arrive.	248	218
2.8	393	2023-08-05	Surface learn commercial gas though page smile point.	78	280
6.5	394	2024-08-07	Official need discover in miss television describe list leg.	344	244
3.2	395	2023-05-02	Save east force often through option chance off above woman always likely shoulder.	147	75
3.7	396	2023-05-17	Most look something start laugh drive next actually rule wear car fast positive.	228	239
5.0	397	2023-06-30	Look fight reflect teach section agency lawyer.	373	198
4.4	398	2024-12-10	Them if smile have less plant team audience throw.	321	318
3.8	399	2024-01-04	Allow international especially watch my some skin ball thing save area war push thousand book.	254	361
7.6	400	2024-01-29	People half compare next attack remember daughter wonder draw box long voice oil where.	172	393
1.5	22	2024-03-29	Write federal while real lead few yourself table blood high grow fast.	261	51
2.4	33	2025-02-21	Capital group small open administration enter camera.	358	172
2.7	35	2025-02-07	International blue Republican kitchen tonight focus chance call person one Republican herself our.	234	227
2.9	50	2023-09-14	Painting may whatever late specific study word base position always remain yard.	398	109
2.0	54	2024-05-02	Difficult case baby such big side strong this also from.	265	155
2.5	65	2023-05-19	Experience television answer pretty event son join hundred keep what.	377	3
2.3	81	2025-02-03	Experience account blue care enough hand idea and anything no guy eye hit late.	3	185
1.1	90	2024-04-21	Race case who within citizen present thing little.	12	199
1.4	117	2025-02-15	Behavior here need argue act commercial matter.	50	223
1.7	139	2025-01-13	White measure manager range indeed style major bar air set factor ever Mrs.	110	240
1.7	142	2024-07-20	Technology particular into pattern size spend south now mother others collection without.	398	186
2.1	163	2024-12-11	Force network account customer nor fight performance less option management significant.	367	365
1.4	185	2025-03-12	Church big day couple recent reveal role enter example down anyone occur style.	68	121
1.1	226	2024-04-22	Respond box service develop game stop who factor miss reduce animal clearly.	120	348
1.8	239	2024-11-25	Most you statement wonder across protect knowledge toward party perform where radio fly trouble war history.	53	275
2.1	292	2024-03-30	Scene almost leave side miss word list race fine follow.	349	14
1.3	293	2024-08-21	Seat near business loss federal growth appear.	38	49
1.6	296	2024-05-03	First next popular girl through run again help right economy.	299	69
1.2	304	2025-04-15	Total nearly you suddenly include plan step food drive nation heart nearly.	5	195
2.6	305	2024-11-19	Growth laugh where a alone expect administration career three according worker.	259	31
1.4	311	2024-04-28	Cup house number night young modern drug entire involve range office both including half couple.	202	238
1.7	329	2025-04-18	Career including late condition opportunity Republican dark lawyer economic reality trade someone responsibility but box.	242	400
2.2	382	2024-06-10	Scientist do author save major affect trade peace drug.	377	195
\.


--
-- TOC entry 3416 (class 0 OID 24699)
-- Dependencies: 220
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.items (item_id, item_name, status, price, stock, available_date, department_id) FROM stdin;
1	Purpose Item	out_of_stock	861.06	396	2023-07-16	302
2	Ago Item	available	737.94	377	2024-11-16	95
3	Face Item	available	581.98	349	2023-10-28	33
4	Dog Item	available	736.25	349	2023-08-07	147
5	Since Item	pending	814.09	285	2023-07-09	130
6	Require Item	out_of_stock	698.06	466	2024-11-16	148
7	Wait Item	pending	118.89	107	2024-06-17	201
8	Begin Item	available	177.90	67	2024-07-22	15
9	Knowledge Item	pending	684.77	335	2023-05-15	280
10	All Item	out_of_stock	112.07	10	2023-07-02	105
11	Discover Item	pending	518.21	381	2023-10-18	280
12	Mouth Item	available	543.84	202	2024-07-31	285
13	Agreement Item	out_of_stock	715.01	33	2024-06-29	122
14	Decide Item	pending	338.30	239	2024-10-28	27
15	Rate Item	pending	219.38	96	2024-10-16	69
16	Offer Item	pending	309.42	135	2024-03-11	116
17	Discussion Item	out_of_stock	144.72	274	2024-04-03	52
18	Perform Item	out_of_stock	773.66	242	2023-11-23	208
19	Table Item	out_of_stock	363.59	432	2025-02-24	270
20	According Item	available	298.37	80	2024-11-30	112
21	Sure Item	out_of_stock	199.71	399	2023-08-23	318
22	Save Item	out_of_stock	991.11	24	2024-03-14	390
23	Grow Item	out_of_stock	818.69	163	2023-11-22	4
24	Clearly Item	available	562.90	459	2023-10-05	252
25	Source Item	out_of_stock	864.66	256	2024-01-07	74
26	Blue Item	out_of_stock	940.14	297	2023-07-02	269
27	Husband Item	available	52.02	177	2023-07-05	115
28	Her Item	out_of_stock	487.30	82	2025-02-07	196
29	Guy Item	pending	893.60	441	2024-08-01	267
31	Animal Item	available	649.47	182	2024-11-07	149
32	Machine Item	pending	600.40	59	2024-06-10	234
33	Capital Item	out_of_stock	100.56	302	2025-04-06	141
34	Human Item	out_of_stock	849.54	488	2023-06-21	384
35	Old Item	pending	467.92	332	2023-12-04	219
36	Themselves Item	available	62.14	448	2024-08-21	267
37	Present Item	pending	325.30	486	2025-03-08	264
38	Training Item	available	233.30	246	2024-01-26	288
39	Participant Item	out_of_stock	241.06	372	2023-09-17	73
40	Sea Item	out_of_stock	872.58	358	2023-06-14	52
41	Answer Item	available	239.28	115	2024-09-15	185
42	Drive Item	available	15.61	193	2024-12-11	68
43	Figure Item	available	783.87	80	2023-06-21	196
44	Top Item	available	657.43	235	2023-10-18	314
45	Trial Item	out_of_stock	428.44	280	2023-07-08	357
46	Husband Item	out_of_stock	237.91	162	2023-11-22	141
47	Long Item	pending	49.43	13	2024-08-26	56
48	They Item	pending	371.47	114	2024-01-29	19
49	Commercial Item	available	149.64	334	2024-02-02	104
50	Hear Item	out_of_stock	681.74	163	2023-09-30	132
51	Religious Item	available	544.24	352	2023-11-14	151
52	Science Item	available	112.46	131	2025-04-17	223
53	Result Item	pending	962.25	495	2024-09-05	174
54	Away Item	out_of_stock	876.58	209	2024-08-06	182
55	Prove Item	out_of_stock	337.48	487	2023-08-31	72
56	None Item	out_of_stock	30.76	411	2024-11-07	319
57	Election Item	pending	523.14	376	2023-08-25	163
58	Maintain Item	pending	971.03	322	2024-02-09	395
59	Expect Item	available	233.58	145	2025-04-08	185
60	Push Item	available	709.38	23	2024-10-06	334
61	Onto Item	pending	902.33	106	2023-10-08	175
62	Reveal Item	out_of_stock	439.65	223	2023-12-28	92
63	Threat Item	pending	246.90	430	2024-12-07	66
64	Stand Item	pending	565.71	81	2023-06-03	239
65	Drop Item	out_of_stock	970.31	435	2025-01-18	52
66	Almost Item	out_of_stock	581.13	175	2025-01-05	85
67	Four Item	pending	206.59	154	2024-02-26	369
68	Executive Item	pending	968.73	298	2023-06-11	254
69	Development Item	out_of_stock	269.16	78	2025-03-30	41
70	Yes Item	available	612.07	365	2024-07-04	65
71	Under Item	available	810.63	145	2024-10-29	398
72	Forward Item	out_of_stock	516.13	354	2023-10-03	350
73	Reality Item	available	921.69	174	2024-05-12	184
74	Individual Item	available	388.90	462	2025-03-08	15
75	Who Item	pending	95.95	475	2024-09-01	337
76	Low Item	available	638.95	146	2023-08-09	300
77	Evidence Item	pending	40.91	483	2023-08-07	30
78	Employee Item	out_of_stock	318.10	169	2024-11-19	237
79	Option Item	out_of_stock	175.02	379	2024-06-12	361
80	Everyone Item	out_of_stock	258.50	56	2024-11-21	363
81	Pattern Item	pending	630.31	297	2024-03-18	80
82	Water Item	out_of_stock	239.23	355	2024-07-17	57
83	Inside Item	pending	46.35	160	2024-01-27	60
84	Discuss Item	pending	115.69	310	2023-08-06	61
85	Mr Item	pending	684.13	104	2024-05-08	184
86	Benefit Item	out_of_stock	805.55	161	2024-11-28	139
87	Anyone Item	available	998.38	465	2025-02-17	24
88	Break Item	pending	881.17	353	2023-08-17	106
89	Product Item	pending	566.30	54	2023-08-23	359
90	Structure Item	pending	427.49	344	2024-09-30	369
91	Knowledge Item	available	630.90	114	2024-07-27	160
92	Attack Item	out_of_stock	267.43	347	2024-02-13	194
93	I Item	available	900.66	14	2024-07-26	143
94	Management Item	pending	303.49	111	2024-06-04	201
95	Enter Item	available	729.40	215	2024-06-23	112
96	Traditional Item	available	99.76	412	2023-04-29	99
97	Response Item	pending	314.48	306	2024-10-31	179
98	Building Item	available	132.06	141	2024-10-01	357
99	Value Item	pending	314.71	372	2024-06-11	297
100	Social Item	pending	267.76	4	2023-11-14	391
101	Specific Item	available	383.94	60	2024-08-30	199
102	Grow Item	available	565.43	119	2023-07-16	70
103	Finally Item	available	588.93	76	2024-03-23	272
104	Coach Item	available	969.50	321	2024-04-07	48
105	About Item	pending	995.70	395	2024-11-01	67
106	Type Item	pending	496.20	112	2024-10-30	273
107	Everyone Item	pending	406.58	197	2024-05-13	164
108	Sound Item	pending	490.76	486	2023-09-06	143
109	Movement Item	pending	688.01	204	2025-03-29	318
110	Born Item	out_of_stock	67.92	298	2025-02-25	87
111	Process Item	pending	716.48	84	2023-12-08	239
112	Thought Item	pending	837.07	127	2024-08-29	22
113	Movement Item	available	987.07	137	2024-08-06	337
114	Decide Item	out_of_stock	629.22	88	2023-08-17	146
115	Hour Item	pending	127.89	388	2024-12-03	6
116	Color Item	available	96.99	37	2024-06-12	6
117	Start Item	out_of_stock	76.53	383	2025-04-06	331
118	Nice Item	pending	963.99	245	2025-04-03	346
119	A Item	out_of_stock	21.15	28	2024-07-29	319
120	Game Item	available	196.28	140	2024-05-04	63
121	After Item	pending	972.67	466	2023-07-16	56
122	Woman Item	out_of_stock	909.22	164	2024-01-27	137
123	Unit Item	pending	437.28	406	2025-01-25	162
124	Surface Item	pending	763.03	68	2023-12-15	169
125	Education Item	pending	512.20	89	2023-06-04	148
126	Effect Item	available	28.13	95	2025-03-02	133
127	Our Item	available	539.59	25	2023-06-21	181
128	Bed Item	available	912.48	221	2024-11-09	356
129	Mention Item	available	425.44	394	2025-01-13	151
130	Authority Item	pending	895.54	216	2024-12-01	109
131	No Item	pending	158.55	448	2024-12-05	99
132	Car Item	out_of_stock	130.88	205	2023-07-29	172
133	Receive Item	pending	235.22	297	2024-04-24	142
134	Your Item	out_of_stock	785.74	86	2024-06-21	182
135	Company Item	pending	706.82	351	2023-11-12	87
136	News Item	pending	425.97	432	2025-02-26	196
137	Policy Item	out_of_stock	319.83	350	2024-03-14	293
138	Development Item	out_of_stock	194.24	448	2025-04-11	309
139	Notice Item	available	962.57	11	2024-11-27	208
140	Show Item	out_of_stock	898.10	9	2024-10-07	341
141	Deep Item	out_of_stock	405.04	492	2024-10-25	260
142	Forget Item	pending	51.53	379	2024-02-24	79
143	Remain Item	available	929.92	385	2024-09-06	190
144	Hour Item	out_of_stock	817.60	426	2024-03-26	125
145	We Item	out_of_stock	863.23	85	2024-05-27	186
146	Live Item	out_of_stock	713.08	159	2023-07-23	209
147	End Item	pending	358.36	429	2023-10-12	197
148	Attack Item	out_of_stock	349.99	201	2024-01-08	110
149	Against Item	out_of_stock	571.59	303	2024-07-20	352
150	Once Item	out_of_stock	818.22	113	2023-10-16	6
151	Per Item	out_of_stock	152.02	142	2023-10-09	179
152	Account Item	pending	724.40	238	2023-06-15	158
153	Second Item	pending	551.61	414	2024-08-23	389
154	Artist Item	pending	399.66	388	2023-10-15	82
155	Author Item	pending	696.43	107	2025-03-24	275
156	Almost Item	pending	683.65	410	2025-02-16	153
157	Give Item	out_of_stock	333.51	129	2023-06-15	238
158	My Item	pending	440.54	428	2023-10-22	191
159	Family Item	out_of_stock	409.55	74	2024-09-21	102
160	Mention Item	pending	862.58	294	2023-10-04	333
161	Notice Item	available	387.86	439	2023-08-01	356
162	Several Item	available	490.18	323	2025-04-16	23
163	Us Item	available	275.61	3	2024-07-07	304
164	Part Item	pending	781.66	202	2024-04-22	41
165	Eight Item	pending	411.54	483	2024-12-20	40
166	Material Item	out_of_stock	891.47	150	2025-01-07	201
167	Investment Item	out_of_stock	333.15	320	2023-09-15	177
168	Between Item	out_of_stock	25.27	157	2023-07-05	152
169	Reason Item	out_of_stock	39.62	293	2024-03-20	163
170	Health Item	available	587.23	391	2024-03-15	31
171	Item Item	available	414.78	247	2024-04-17	185
172	Treat Item	pending	471.12	47	2024-11-07	56
173	Arm Item	out_of_stock	605.14	220	2024-09-25	88
174	Ready Item	pending	698.42	271	2024-09-03	46
175	Billion Item	out_of_stock	835.30	182	2023-06-07	94
176	Interesting Item	available	945.49	48	2024-11-06	161
177	Group Item	available	121.78	50	2025-01-01	171
178	Training Item	available	506.38	118	2023-07-14	164
179	Energy Item	out_of_stock	517.49	390	2023-09-16	26
180	Customer Item	pending	835.16	413	2024-06-10	75
181	List Item	pending	677.54	447	2023-08-07	398
182	Knowledge Item	pending	577.48	469	2023-09-10	129
183	Family Item	available	524.16	74	2024-04-14	113
184	Enjoy Item	pending	270.27	289	2025-02-28	60
185	Wind Item	pending	586.66	108	2023-06-18	261
186	Level Item	pending	205.78	124	2025-01-07	390
187	Training Item	available	436.37	31	2025-02-13	103
188	Oil Item	pending	123.73	310	2023-07-06	77
189	Apply Item	available	169.29	198	2024-09-08	124
190	Now Item	out_of_stock	47.95	304	2025-01-29	62
191	Administration Item	available	108.69	347	2023-07-02	166
192	With Item	pending	654.21	213	2024-11-26	42
193	Time Item	out_of_stock	881.99	211	2023-10-21	274
194	Compare Item	available	332.82	257	2024-03-01	273
195	Mention Item	out_of_stock	668.90	46	2024-04-28	256
196	Different Item	available	581.47	144	2025-02-20	53
198	Artist Item	available	33.64	474	2023-08-26	9
199	Hundred Item	pending	507.67	134	2023-04-22	24
200	In Item	pending	446.83	497	2023-11-12	364
201	With Item	pending	391.15	437	2024-12-20	233
202	Still Item	out_of_stock	156.80	83	2024-04-08	119
203	Feeling Item	pending	703.54	106	2024-03-14	58
204	Same Item	out_of_stock	624.86	100	2024-11-08	316
205	Step Item	out_of_stock	209.67	294	2024-06-25	42
206	Recently Item	pending	864.93	190	2024-10-30	379
207	Message Item	out_of_stock	678.13	15	2023-08-19	311
208	Customer Item	out_of_stock	116.84	356	2023-12-07	394
209	Director Item	pending	591.98	99	2023-06-05	61
210	Particularly Item	available	688.75	475	2024-11-12	139
211	Occur Item	available	200.48	480	2023-06-07	312
212	Small Item	pending	27.89	428	2023-12-20	46
213	Art Item	available	550.09	346	2023-05-29	342
214	Pattern Item	out_of_stock	922.26	341	2024-04-25	239
215	Morning Item	pending	660.25	127	2025-04-04	42
216	Tonight Item	available	682.38	252	2024-06-06	231
217	Coach Item	available	557.07	107	2023-06-04	277
218	Movie Item	available	734.07	419	2023-06-22	318
219	Today Item	available	208.33	489	2023-09-12	289
220	Authority Item	pending	292.00	276	2024-07-26	220
221	Author Item	pending	583.55	85	2024-09-26	224
222	Training Item	pending	928.43	345	2023-10-20	261
223	International Item	out_of_stock	253.45	37	2023-07-23	398
224	Year Item	available	611.83	350	2025-03-12	15
225	Over Item	available	506.23	476	2023-10-29	210
226	Particular Item	available	607.44	317	2024-07-25	324
227	Among Item	out_of_stock	373.45	249	2024-08-14	244
228	Beat Item	available	767.68	298	2024-03-11	113
229	Really Item	available	570.28	452	2024-07-17	215
230	Other Item	available	360.84	321	2024-05-31	247
231	Four Item	available	732.12	245	2025-04-16	116
232	Every Item	pending	787.47	137	2023-09-26	244
233	Relationship Item	out_of_stock	253.53	171	2024-10-28	131
234	Former Item	out_of_stock	462.34	468	2023-10-23	223
235	Evidence Item	out_of_stock	867.83	251	2024-02-22	324
236	Catch Item	pending	109.99	457	2024-09-23	160
237	Quite Item	pending	369.90	123	2023-12-10	324
238	Lot Item	available	920.06	196	2023-12-22	135
239	Woman Item	available	755.90	406	2024-11-24	355
240	Would Item	available	526.34	378	2023-06-16	392
241	Act Item	available	670.54	209	2024-04-10	319
242	Pretty Item	out_of_stock	564.42	234	2024-07-01	399
243	Black Item	out_of_stock	138.17	320	2023-06-16	310
244	Note Item	available	231.67	435	2023-10-03	37
245	Move Item	pending	418.95	88	2023-11-12	317
246	Cause Item	pending	654.41	380	2025-04-14	164
247	Happy Item	out_of_stock	941.36	41	2025-03-05	227
248	Authority Item	available	446.44	179	2025-03-03	323
249	Election Item	out_of_stock	47.12	466	2024-02-02	279
250	Feel Item	out_of_stock	424.48	97	2023-08-21	42
251	Left Item	available	685.46	34	2025-01-27	269
252	Of Item	pending	113.51	435	2024-10-18	325
253	Five Item	out_of_stock	189.01	82	2024-08-08	21
254	Surface Item	available	418.14	42	2024-09-09	206
255	Newspaper Item	pending	474.64	121	2023-04-27	104
256	Region Item	out_of_stock	640.89	224	2025-01-14	24
257	Once Item	available	873.37	376	2023-12-09	68
258	Work Item	pending	656.22	10	2024-09-17	81
259	Body Item	out_of_stock	533.43	324	2025-04-19	143
260	Unit Item	available	73.22	31	2023-08-03	62
261	Everything Item	pending	84.49	14	2023-07-19	179
262	Voice Item	available	218.48	166	2023-07-13	137
263	Situation Item	available	396.27	41	2024-06-23	196
264	Clearly Item	pending	365.74	133	2023-11-18	40
265	Father Item	out_of_stock	708.99	208	2024-08-02	359
266	Develop Item	available	456.60	2	2024-10-29	186
267	Gun Item	pending	379.96	172	2023-09-26	292
268	Right Item	available	752.57	347	2024-08-25	313
269	Tonight Item	pending	327.61	340	2023-11-12	280
270	Mouth Item	available	811.78	171	2024-05-04	380
271	Enter Item	out_of_stock	948.09	453	2025-03-24	49
272	Whatever Item	out_of_stock	477.85	259	2025-02-06	43
273	Approach Item	available	808.99	88	2023-07-01	363
274	Protect Item	available	71.94	260	2024-03-15	211
275	Themselves Item	available	951.30	111	2023-11-21	110
276	Another Item	out_of_stock	117.00	204	2023-04-23	113
277	Goal Item	out_of_stock	398.40	423	2024-12-09	114
278	Case Item	pending	42.80	214	2024-08-27	280
279	Everybody Item	pending	30.04	322	2023-08-24	296
280	Site Item	out_of_stock	816.52	391	2024-03-29	198
281	Ok Item	out_of_stock	25.46	102	2024-10-20	115
282	Late Item	pending	867.74	343	2024-06-29	314
283	Act Item	pending	117.07	416	2023-07-16	245
284	Bag Item	out_of_stock	776.30	400	2025-03-06	313
285	Rock Item	pending	727.74	168	2025-03-23	275
286	Church Item	out_of_stock	893.62	194	2024-06-17	256
287	Also Item	out_of_stock	487.15	96	2025-01-28	36
288	Hope Item	available	977.81	27	2024-07-16	11
289	Old Item	available	103.39	196	2023-08-14	17
290	Law Item	pending	292.99	251	2023-07-28	125
291	Analysis Item	out_of_stock	32.98	238	2023-12-16	396
292	His Item	out_of_stock	114.80	265	2025-03-19	339
293	Worker Item	pending	977.89	142	2024-12-29	258
294	Traditional Item	available	439.69	269	2023-05-21	198
295	Way Item	out_of_stock	458.88	208	2024-01-23	280
296	Develop Item	available	757.49	305	2024-10-01	373
297	Enjoy Item	available	139.60	279	2024-09-20	334
298	Board Item	pending	723.33	438	2024-01-20	302
299	State Item	available	399.55	254	2024-06-28	12
300	Usually Item	available	814.25	15	2025-02-28	382
301	Investment Item	available	915.71	397	2024-08-15	79
302	So Item	out_of_stock	800.76	304	2023-08-19	377
303	Wish Item	out_of_stock	111.09	5	2025-04-12	165
304	Economic Item	out_of_stock	216.63	497	2025-02-20	243
305	Commercial Item	pending	237.37	245	2025-01-01	189
306	Talk Item	pending	962.37	273	2023-09-05	358
307	Upon Item	available	793.09	187	2024-03-06	208
308	Ago Item	available	800.27	468	2023-09-07	382
309	Since Item	out_of_stock	471.41	40	2025-04-08	326
310	Go Item	pending	760.79	454	2024-12-18	274
311	Word Item	pending	732.18	324	2024-03-05	5
312	Suffer Item	pending	992.49	312	2024-09-22	56
313	Treat Item	out_of_stock	745.50	135	2024-11-11	256
314	Talk Item	pending	979.84	335	2023-10-30	255
315	Example Item	available	972.52	213	2023-08-22	55
316	Store Item	available	754.66	139	2024-10-16	41
317	Box Item	out_of_stock	760.46	226	2024-02-12	198
318	Turn Item	out_of_stock	66.86	87	2023-05-21	139
319	Town Item	out_of_stock	354.46	263	2024-04-20	271
320	Doctor Item	available	46.67	236	2023-09-23	167
321	Technology Item	pending	747.94	123	2025-04-03	281
322	Magazine Item	out_of_stock	233.98	98	2024-01-17	23
323	Focus Item	pending	50.68	147	2025-01-17	110
324	Stuff Item	available	793.63	311	2025-02-25	262
325	Drive Item	available	238.76	87	2023-10-11	374
326	Agent Item	pending	580.64	33	2024-09-14	85
327	Data Item	pending	88.56	428	2024-02-24	122
328	Get Item	out_of_stock	33.74	134	2023-11-23	54
329	Treatment Item	available	954.07	97	2023-06-13	280
330	Spring Item	available	766.62	203	2023-11-23	323
331	Have Item	available	299.49	467	2024-08-31	235
332	Mr Item	out_of_stock	78.59	359	2024-02-25	284
333	Respond Item	available	713.84	482	2025-02-04	238
334	Not Item	available	63.67	279	2024-01-03	265
335	Wrong Item	out_of_stock	299.23	452	2023-05-12	162
336	Business Item	pending	362.89	394	2025-03-02	320
337	Every Item	out_of_stock	688.57	52	2023-09-06	57
338	Partner Item	out_of_stock	805.82	71	2023-11-13	153
339	American Item	out_of_stock	208.66	453	2023-07-14	80
340	Pick Item	pending	810.98	19	2024-03-23	356
341	Hair Item	out_of_stock	946.67	101	2024-11-06	182
342	Stop Item	available	44.69	464	2023-12-20	179
343	Least Item	out_of_stock	983.79	394	2024-08-03	324
344	Much Item	out_of_stock	852.67	428	2023-07-19	203
345	Image Item	pending	242.27	61	2025-03-19	355
346	Part Item	available	49.75	382	2023-09-15	375
347	Environmental Item	available	131.15	269	2023-05-25	374
348	Section Item	pending	838.05	462	2024-03-24	384
349	Ability Item	pending	990.16	487	2024-05-28	343
350	Wish Item	available	849.00	65	2025-01-06	87
351	Nothing Item	pending	640.82	203	2024-10-05	135
352	Serve Item	out_of_stock	982.03	496	2025-04-20	384
353	Site Item	available	790.38	17	2024-11-13	45
354	Religious Item	available	188.69	205	2023-09-21	93
355	Himself Item	pending	217.27	205	2024-03-20	329
357	Wife Item	available	715.08	140	2024-01-02	132
358	Price Item	out_of_stock	886.61	166	2023-12-20	82
359	Record Item	out_of_stock	413.58	268	2025-02-07	340
360	Capital Item	out_of_stock	428.86	465	2024-10-31	118
361	We Item	pending	987.99	233	2023-12-10	136
362	Movement Item	available	708.45	165	2023-12-17	65
363	Reflect Item	out_of_stock	694.83	57	2024-03-03	278
364	General Item	pending	790.31	493	2024-02-27	388
365	Same Item	out_of_stock	560.02	221	2023-12-06	377
366	Once Item	pending	940.57	89	2023-07-28	219
367	Dark Item	out_of_stock	887.10	62	2024-03-12	92
368	Red Item	pending	789.88	455	2025-04-20	221
369	Hundred Item	available	194.83	85	2024-09-28	169
370	Smile Item	out_of_stock	966.30	33	2025-03-22	329
371	Contain Item	out_of_stock	813.41	439	2024-08-11	102
372	Outside Item	pending	327.36	419	2023-12-10	61
373	Into Item	available	359.11	36	2024-06-19	95
374	These Item	out_of_stock	54.01	154	2023-04-21	228
375	Fly Item	out_of_stock	945.82	59	2023-11-29	113
376	Develop Item	out_of_stock	651.43	458	2024-03-19	26
377	Stock Item	out_of_stock	119.92	94	2024-07-14	358
378	Policy Item	pending	415.94	17	2024-09-10	156
379	Fund Item	out_of_stock	726.25	207	2024-04-16	32
380	Letter Item	available	893.38	134	2024-03-29	243
381	Republican Item	out_of_stock	858.10	293	2023-10-03	40
382	Much Item	pending	279.44	166	2024-04-22	293
383	Student Item	available	516.85	120	2025-03-20	37
384	Style Item	pending	574.56	101	2024-11-12	84
385	Condition Item	out_of_stock	178.43	74	2024-09-13	127
386	Become Item	available	988.81	97	2023-11-27	16
387	Myself Item	out_of_stock	301.69	420	2024-09-17	96
388	Property Item	out_of_stock	694.64	168	2024-08-13	83
389	Government Item	pending	534.27	190	2023-07-02	345
390	Tell Item	available	544.21	358	2024-11-24	128
391	Easy Item	pending	56.21	103	2024-09-24	7
392	Force Item	out_of_stock	767.08	352	2023-10-12	23
393	Sure Item	available	362.22	347	2023-09-22	279
394	Choice Item	pending	685.99	212	2023-05-09	66
395	Any Item	available	610.85	362	2023-10-28	28
396	May Item	available	882.61	405	2024-08-07	356
397	To Item	out_of_stock	42.25	61	2024-12-07	164
398	Baby Item	available	241.56	310	2024-04-08	284
399	Join Item	pending	953.10	432	2025-03-09	252
400	Professional Item	available	35.05	437	2024-07-11	378
30	Everything Item	out_of_stock	404.89	9	2025-01-06	226
197	Institution Item	out_of_stock	790.30	1	2025-03-21	319
356	Available Item	out_of_stock	206.98	6	2024-09-17	312
\.


--
-- TOC entry 3417 (class 0 OID 24702)
-- Dependencies: 221
-- Data for Name: orderdetails; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.orderdetails (tracking_number, order_status, delivery_method, order_id) FROM stdin;
TRK100001	shipped	express	1
TRK100002	pending	pickup	2
TRK100003	shipped	standard	3
TRK100004	pending	pickup	4
TRK100005	delivered	pickup	5
TRK100006	shipped	express	6
TRK100007	delivered	standard	7
TRK100008	pending	pickup	8
TRK100009	pending	standard	9
TRK100010	pending	express	10
TRK100011	delivered	express	11
TRK100012	shipped	standard	12
TRK100013	shipped	express	13
TRK100014	shipped	pickup	14
TRK100015	shipped	pickup	15
TRK100016	delivered	standard	16
TRK100017	pending	express	17
TRK100018	shipped	standard	18
TRK100019	shipped	pickup	19
TRK100020	pending	pickup	20
TRK100021	pending	express	21
TRK100022	delivered	express	22
TRK100023	pending	standard	23
TRK100024	shipped	standard	24
TRK100025	shipped	standard	25
TRK100026	delivered	express	26
TRK100027	shipped	standard	27
TRK100028	shipped	standard	28
TRK100029	pending	pickup	29
TRK100030	shipped	express	30
TRK100031	shipped	pickup	31
TRK100032	shipped	pickup	32
TRK100033	pending	standard	33
TRK100034	pending	standard	34
TRK100035	shipped	standard	35
TRK100036	delivered	standard	36
TRK100037	delivered	pickup	37
TRK100038	delivered	express	38
TRK100039	delivered	standard	39
TRK100040	shipped	express	40
TRK100041	shipped	express	41
TRK100042	shipped	express	42
TRK100043	pending	standard	43
TRK100044	delivered	pickup	44
TRK100045	delivered	express	45
TRK100046	shipped	pickup	46
TRK100047	pending	pickup	47
TRK100048	pending	pickup	48
TRK100049	pending	express	49
TRK100050	pending	standard	50
TRK100051	shipped	pickup	51
TRK100052	shipped	pickup	52
TRK100053	delivered	pickup	53
TRK100054	pending	standard	54
TRK100055	delivered	express	55
TRK100056	shipped	pickup	56
TRK100057	shipped	standard	57
TRK100058	pending	express	58
TRK100059	delivered	standard	59
TRK100060	delivered	standard	60
TRK100061	shipped	express	61
TRK100062	pending	standard	62
TRK100063	pending	pickup	63
TRK100064	pending	express	64
TRK100065	delivered	pickup	65
TRK100066	pending	express	66
TRK100067	pending	standard	67
TRK100068	pending	express	68
TRK100069	pending	standard	69
TRK100070	shipped	express	70
TRK100071	pending	standard	71
TRK100072	delivered	standard	72
TRK100073	delivered	express	73
TRK100074	delivered	standard	74
TRK100075	pending	standard	75
TRK100076	shipped	standard	76
TRK100077	shipped	standard	77
TRK100078	shipped	pickup	78
TRK100079	pending	express	79
TRK100080	delivered	express	80
TRK100081	delivered	standard	81
TRK100082	delivered	pickup	82
TRK100083	delivered	express	83
TRK100084	shipped	standard	84
TRK100085	pending	standard	85
TRK100086	pending	express	86
TRK100087	pending	express	87
TRK100088	pending	express	88
TRK100089	pending	pickup	89
TRK100090	shipped	pickup	90
TRK100091	delivered	standard	91
TRK100092	pending	express	92
TRK100093	shipped	standard	93
TRK100094	pending	pickup	94
TRK100095	delivered	express	95
TRK100096	pending	pickup	96
TRK100097	shipped	pickup	97
TRK100098	delivered	express	98
TRK100099	pending	express	99
TRK100100	shipped	express	100
TRK100101	pending	standard	101
TRK100102	shipped	express	102
TRK100103	pending	pickup	103
TRK100104	delivered	standard	104
TRK100105	shipped	pickup	105
TRK100106	pending	express	106
TRK100107	shipped	pickup	107
TRK100108	shipped	express	108
TRK100109	shipped	standard	109
TRK100110	shipped	pickup	110
TRK100111	delivered	pickup	111
TRK100112	pending	standard	112
TRK100113	pending	pickup	113
TRK100114	delivered	express	114
TRK100115	shipped	standard	115
TRK100116	pending	standard	116
TRK100117	shipped	standard	117
TRK100118	pending	pickup	118
TRK100119	shipped	pickup	119
TRK100120	delivered	pickup	120
TRK100121	shipped	express	121
TRK100122	shipped	pickup	122
TRK100123	delivered	standard	123
TRK100124	delivered	express	124
TRK100125	delivered	pickup	125
TRK100126	pending	express	126
TRK100127	shipped	pickup	127
TRK100128	delivered	pickup	128
TRK100129	shipped	pickup	129
TRK100130	shipped	pickup	130
TRK100131	shipped	standard	131
TRK100132	delivered	express	132
TRK100133	pending	pickup	133
TRK100134	pending	express	134
TRK100135	pending	pickup	135
TRK100136	pending	express	136
TRK100137	pending	pickup	137
TRK100138	pending	express	138
TRK100139	pending	standard	139
TRK100140	pending	pickup	140
TRK100141	pending	pickup	141
TRK100142	shipped	pickup	142
TRK100143	shipped	standard	143
TRK100144	shipped	standard	144
TRK100145	delivered	express	145
TRK100146	pending	pickup	146
TRK100147	pending	pickup	147
TRK100148	pending	pickup	148
TRK100149	delivered	standard	149
TRK100150	pending	pickup	150
TRK100151	pending	pickup	151
TRK100152	delivered	express	152
TRK100153	delivered	pickup	153
TRK100154	delivered	express	154
TRK100155	shipped	standard	155
TRK100156	shipped	express	156
TRK100157	delivered	express	157
TRK100158	pending	express	158
TRK100159	delivered	pickup	159
TRK100160	shipped	pickup	160
TRK100161	shipped	pickup	161
TRK100162	shipped	pickup	162
TRK100163	delivered	express	163
TRK100164	delivered	pickup	164
TRK100165	delivered	standard	165
TRK100166	shipped	pickup	166
TRK100167	delivered	pickup	167
TRK100168	shipped	express	168
TRK100169	shipped	express	169
TRK100170	shipped	standard	170
TRK100171	shipped	express	171
TRK100172	shipped	pickup	172
TRK100173	shipped	standard	173
TRK100174	delivered	express	174
TRK100175	pending	pickup	175
TRK100176	shipped	standard	176
TRK100177	pending	standard	177
TRK100178	pending	express	178
TRK100179	pending	pickup	179
TRK100180	shipped	pickup	180
TRK100181	shipped	express	181
TRK100182	pending	pickup	182
TRK100183	pending	express	183
TRK100184	pending	express	184
TRK100185	pending	pickup	185
TRK100186	pending	standard	186
TRK100187	pending	pickup	187
TRK100188	pending	standard	188
TRK100189	pending	standard	189
TRK100190	pending	standard	190
TRK100191	shipped	express	191
TRK100192	pending	express	192
TRK100193	shipped	pickup	193
TRK100194	delivered	express	194
TRK100195	delivered	standard	195
TRK100196	shipped	standard	196
TRK100197	shipped	pickup	197
TRK100198	shipped	pickup	198
TRK100199	pending	express	199
TRK100200	delivered	pickup	200
TRK100201	pending	standard	201
TRK100202	delivered	standard	202
TRK100203	pending	pickup	203
TRK100204	shipped	pickup	204
TRK100205	delivered	standard	205
TRK100206	shipped	express	206
TRK100207	pending	express	207
TRK100208	delivered	standard	208
TRK100209	shipped	express	209
TRK100210	pending	standard	210
TRK100211	shipped	pickup	211
TRK100212	pending	express	212
TRK100213	pending	express	213
TRK100214	delivered	standard	214
TRK100215	shipped	express	215
TRK100216	pending	express	216
TRK100217	pending	standard	217
TRK100218	delivered	standard	218
TRK100219	shipped	express	219
TRK100220	pending	express	220
TRK100221	delivered	pickup	221
TRK100222	shipped	express	222
TRK100223	delivered	standard	223
TRK100224	pending	express	224
TRK100225	shipped	express	225
TRK100226	delivered	express	226
TRK100227	pending	standard	227
TRK100228	pending	standard	228
TRK100229	delivered	pickup	229
TRK100230	shipped	pickup	230
TRK100231	pending	standard	231
TRK100232	shipped	express	232
TRK100233	pending	standard	233
TRK100234	shipped	express	234
TRK100235	pending	pickup	235
TRK100236	shipped	express	236
TRK100237	pending	express	237
TRK100238	delivered	express	238
TRK100239	pending	standard	239
TRK100240	shipped	standard	240
TRK100241	pending	pickup	241
TRK100242	delivered	express	242
TRK100243	pending	express	243
TRK100244	shipped	pickup	244
TRK100245	delivered	express	245
TRK100246	pending	standard	246
TRK100247	pending	express	247
TRK100248	shipped	pickup	248
TRK100249	delivered	pickup	249
TRK100250	pending	express	250
TRK100251	delivered	express	251
TRK100252	shipped	standard	252
TRK100253	shipped	pickup	253
TRK100254	pending	express	254
TRK100255	pending	express	255
TRK100256	shipped	express	256
TRK100257	delivered	standard	257
TRK100258	shipped	pickup	258
TRK100259	delivered	express	259
TRK100260	shipped	standard	260
TRK100261	delivered	pickup	261
TRK100262	delivered	express	262
TRK100263	pending	express	263
TRK100264	delivered	standard	264
TRK100265	delivered	pickup	265
TRK100266	delivered	pickup	266
TRK100267	delivered	standard	267
TRK100268	pending	pickup	268
TRK100269	pending	pickup	269
TRK100270	delivered	standard	270
TRK100271	delivered	express	271
TRK100272	delivered	standard	272
TRK100273	pending	pickup	273
TRK100274	shipped	standard	274
TRK100275	delivered	standard	275
TRK100276	pending	express	276
TRK100277	delivered	express	277
TRK100278	delivered	pickup	278
TRK100279	pending	standard	279
TRK100280	shipped	standard	280
TRK100281	pending	standard	281
TRK100282	pending	express	282
TRK100283	pending	pickup	283
TRK100284	delivered	express	284
TRK100285	delivered	pickup	285
TRK100286	delivered	pickup	286
TRK100287	pending	pickup	287
TRK100288	delivered	express	288
TRK100289	pending	standard	289
TRK100290	pending	express	290
TRK100291	delivered	express	291
TRK100292	pending	pickup	292
TRK100293	delivered	pickup	293
TRK100294	pending	express	294
TRK100295	delivered	standard	295
TRK100296	delivered	pickup	296
TRK100297	delivered	standard	297
TRK100298	shipped	pickup	298
TRK100299	delivered	express	299
TRK100300	shipped	express	300
TRK100301	shipped	standard	301
TRK100302	delivered	express	302
TRK100303	shipped	pickup	303
TRK100304	shipped	pickup	304
TRK100305	shipped	pickup	305
TRK100306	shipped	standard	306
TRK100307	pending	express	307
TRK100308	shipped	express	308
TRK100309	shipped	standard	309
TRK100310	pending	pickup	310
TRK100311	shipped	standard	311
TRK100312	delivered	pickup	312
TRK100313	pending	express	313
TRK100314	shipped	express	314
TRK100315	shipped	standard	315
TRK100316	pending	express	316
TRK100317	pending	pickup	317
TRK100318	delivered	standard	318
TRK100319	pending	express	319
TRK100320	shipped	standard	320
TRK100321	shipped	express	321
TRK100322	shipped	pickup	322
TRK100323	pending	standard	323
TRK100324	pending	pickup	324
TRK100325	delivered	express	325
TRK100326	delivered	standard	326
TRK100327	delivered	express	327
TRK100328	pending	pickup	328
TRK100329	pending	pickup	329
TRK100330	shipped	express	330
TRK100331	pending	standard	331
TRK100332	shipped	standard	332
TRK100333	pending	standard	333
TRK100334	delivered	express	334
TRK100335	pending	express	335
TRK100336	pending	pickup	336
TRK100337	shipped	pickup	337
TRK100338	shipped	standard	338
TRK100339	delivered	standard	339
TRK100340	delivered	express	340
TRK100341	pending	pickup	341
TRK100342	shipped	express	342
TRK100343	shipped	standard	343
TRK100344	delivered	standard	344
TRK100345	shipped	pickup	345
TRK100346	delivered	express	346
TRK100347	delivered	express	347
TRK100348	delivered	standard	348
TRK100349	pending	express	349
TRK100350	delivered	standard	350
TRK100351	shipped	express	351
TRK100352	pending	pickup	352
TRK100353	pending	standard	353
TRK100354	pending	pickup	354
TRK100355	pending	express	355
TRK100356	shipped	pickup	356
TRK100357	delivered	pickup	357
TRK100358	pending	pickup	358
TRK100359	shipped	standard	359
TRK100360	delivered	pickup	360
TRK100361	pending	express	361
TRK100362	shipped	pickup	362
TRK100363	pending	pickup	363
TRK100364	shipped	express	364
TRK100365	shipped	standard	365
TRK100366	shipped	pickup	366
TRK100367	shipped	standard	367
TRK100368	pending	pickup	368
TRK100369	shipped	standard	369
TRK100370	shipped	pickup	370
TRK100371	pending	express	371
TRK100372	delivered	express	372
TRK100373	pending	standard	373
TRK100374	shipped	pickup	374
TRK100375	pending	express	375
TRK100376	delivered	express	376
TRK100377	delivered	pickup	377
TRK100378	shipped	pickup	378
TRK100379	pending	express	379
TRK100380	pending	pickup	380
TRK100381	shipped	express	381
TRK100382	shipped	standard	382
TRK100383	shipped	express	383
TRK100384	pending	express	384
TRK100385	shipped	express	385
TRK100386	pending	standard	386
TRK100387	pending	standard	387
TRK100388	pending	express	388
TRK100389	delivered	express	389
TRK100390	delivered	pickup	390
TRK100391	shipped	express	391
TRK100392	delivered	express	392
TRK100393	shipped	express	393
TRK100394	delivered	express	394
TRK100395	shipped	standard	395
TRK100396	pending	express	396
TRK100397	pending	express	397
TRK100398	shipped	express	398
TRK100399	delivered	pickup	399
TRK100400	pending	pickup	400
\.


--
-- TOC entry 3418 (class 0 OID 24705)
-- Dependencies: 222
-- Data for Name: orderitems; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.orderitems (quantity, order_id, item_id) FROM stdin;
5	66	384
7	190	368
7	178	223
4	147	115
5	87	342
10	12	252
8	223	74
9	131	246
9	360	374
2	113	44
9	123	371
7	50	291
8	276	122
8	85	305
1	325	325
4	236	368
1	371	100
1	367	68
1	363	111
8	252	48
9	9	208
10	177	397
1	50	393
3	98	316
4	58	254
8	394	65
10	1	143
4	364	122
5	166	364
8	19	390
5	118	30
4	16	41
9	327	308
2	216	54
2	92	208
2	328	174
4	328	128
3	113	331
3	249	164
4	347	378
10	7	62
5	303	33
10	88	225
5	164	182
4	61	46
10	24	316
4	295	193
7	384	149
7	313	14
10	211	36
5	334	95
1	204	285
7	225	237
3	327	92
2	74	140
10	19	343
2	254	325
9	244	3
10	392	170
10	312	54
7	263	208
8	191	244
4	105	351
9	119	214
9	130	315
5	382	154
8	213	242
7	354	84
5	17	145
6	8	47
8	310	367
3	340	108
1	379	185
8	137	18
10	278	324
7	194	80
1	291	236
7	5	355
9	396	366
9	302	196
8	216	211
3	40	61
6	182	49
5	165	262
2	62	156
9	136	360
3	179	202
2	369	268
3	37	190
9	283	389
9	186	103
2	379	64
2	235	67
4	122	97
2	112	107
1	51	202
3	396	228
9	391	314
7	272	258
8	117	20
3	23	384
7	394	137
4	80	397
2	339	234
4	220	89
3	189	118
8	189	326
5	115	46
1	159	88
6	49	227
9	145	173
6	200	110
3	91	152
6	236	161
6	320	372
9	24	53
1	11	361
6	179	40
10	219	13
5	95	86
2	261	12
7	236	261
1	126	269
10	311	206
5	98	312
4	92	326
1	54	274
6	142	259
1	151	244
4	288	287
10	209	380
3	128	354
5	324	302
9	160	210
4	254	50
1	304	249
4	16	61
10	358	39
3	19	266
5	318	109
7	159	239
1	213	190
5	210	12
7	87	389
10	44	363
9	137	63
5	304	62
1	292	165
5	398	340
6	354	142
5	289	47
6	239	112
3	100	18
9	197	228
8	244	232
4	325	201
8	302	277
7	83	250
5	104	223
4	89	115
6	298	199
1	245	136
5	155	200
4	371	226
7	321	150
7	387	128
5	31	324
6	34	88
6	205	216
8	11	121
2	79	163
8	62	337
10	122	227
4	363	149
8	83	118
3	390	197
9	363	392
3	368	198
9	53	151
3	304	93
8	51	337
6	148	349
9	337	308
4	116	156
4	81	148
9	13	188
3	84	285
7	59	219
3	237	336
10	276	73
6	266	157
7	253	307
8	183	56
2	158	206
10	237	319
9	149	282
3	127	157
10	135	94
8	260	342
3	110	79
7	336	77
7	111	175
1	223	96
6	280	303
7	202	287
3	24	184
10	169	227
8	195	107
5	134	171
1	234	15
1	175	255
5	228	32
5	257	95
9	168	35
10	15	33
8	249	223
4	100	218
8	35	332
1	305	135
4	135	354
8	100	372
1	260	260
8	136	214
7	154	124
10	46	292
9	191	155
9	367	335
3	392	55
10	1	179
4	247	149
5	192	134
7	364	150
5	168	261
1	237	223
2	326	378
6	220	147
1	332	323
2	152	398
7	325	373
1	49	238
6	320	23
1	58	350
5	153	311
7	218	267
5	339	256
3	38	27
9	87	194
8	132	155
4	46	258
1	255	325
7	22	356
8	304	255
6	23	343
3	299	324
10	128	13
6	23	395
8	54	374
1	68	14
7	384	219
8	170	113
2	18	227
8	52	87
10	209	310
6	344	390
8	7	53
6	301	189
10	218	248
10	206	35
6	398	365
3	393	225
8	236	229
8	33	357
1	340	25
6	191	126
8	325	330
9	24	320
7	391	190
2	167	372
2	46	304
3	110	214
4	360	332
8	368	347
6	300	217
6	125	160
8	152	127
3	64	371
4	111	357
10	216	55
10	243	72
7	360	253
7	25	234
7	76	256
3	32	379
7	227	349
4	245	116
1	129	179
3	81	190
7	52	242
8	397	106
5	153	274
3	291	280
10	186	348
10	12	145
3	208	193
2	186	145
9	121	351
10	189	242
2	147	243
7	268	381
1	20	42
6	291	5
10	141	134
8	363	169
7	89	339
7	344	276
6	35	348
1	299	187
9	341	252
7	160	345
3	135	175
6	389	347
2	33	72
8	203	361
8	155	9
8	176	333
4	187	93
2	77	291
4	69	252
1	272	206
4	92	30
5	300	337
5	374	9
5	176	6
5	387	199
7	39	88
2	47	315
6	28	280
2	216	339
7	315	129
5	154	256
10	186	394
7	249	47
7	400	171
3	325	274
8	78	180
2	267	356
1	68	175
10	65	5
1	101	19
8	360	257
8	345	153
2	66	32
6	59	98
8	152	183
10	349	72
1	71	356
10	385	254
1	50	123
1	273	174
1	200	41
6	20	45
10	394	307
5	397	152
8	271	101
7	305	196
6	330	236
3	253	305
6	268	350
2	74	220
8	146	379
4	72	80
6	374	119
3	160	299
5	35	277
8	301	80
4	47	205
2	228	170
2	307	113
7	257	28
10	93	70
4	311	399
10	388	150
1	89	288
1	61	172
9	135	267
10	163	387
3	238	79
7	338	364
8	224	192
3	2	169
7	377	328
9	19	316
3	384	321
10	319	358
10	16	55
6	77	271
9	158	141
3	158	382
3	67	219
7	297	269
\.


--
-- TOC entry 3419 (class 0 OID 24708)
-- Dependencies: 223
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.orders (order_date, order_id, customer_id) FROM stdin;
2024-07-04	1	10
2025-01-23	2	196
2025-01-15	3	192
2024-09-16	4	338
2024-10-28	5	66
2024-09-22	6	343
2024-07-23	7	264
2024-06-16	8	180
2024-12-30	9	66
2025-01-12	10	145
2024-04-22	11	240
2025-04-01	12	187
2025-02-05	13	61
2025-03-20	14	6
2025-02-13	15	311
2025-03-29	16	311
2024-05-31	17	284
2025-02-16	18	147
2024-10-02	19	310
2024-07-13	20	100
2024-06-27	21	243
2025-02-26	22	147
2025-01-15	23	129
2024-11-07	24	315
2024-10-17	25	318
2024-05-09	26	266
2024-11-22	27	283
2024-07-25	28	212
2025-04-11	29	297
2025-03-15	30	163
2024-06-06	31	119
2024-10-14	32	184
2024-06-10	33	70
2025-02-25	34	161
2024-10-17	35	187
2025-01-04	36	363
2024-11-12	37	79
2024-11-23	38	278
2024-12-07	39	254
2024-08-21	40	210
2025-02-07	41	242
2025-04-01	42	135
2024-10-08	43	388
2024-12-13	44	257
2025-03-02	45	102
2025-01-24	46	393
2025-04-01	47	397
2024-11-02	48	214
2024-10-02	49	137
2025-03-08	50	387
2025-04-07	51	268
2024-11-18	52	393
2024-10-10	53	385
2025-04-03	54	352
2024-06-20	55	355
2025-02-02	56	163
2025-03-20	57	272
2024-10-21	58	110
2024-10-11	59	365
2024-07-29	60	375
2025-02-05	61	275
2024-07-25	62	116
2025-03-12	63	400
2024-12-23	64	110
2024-08-05	65	235
2025-02-11	66	122
2025-02-16	67	252
2024-11-08	68	204
2024-10-25	69	18
2024-12-19	70	76
2024-07-21	71	51
2024-08-04	72	329
2024-10-07	73	203
2024-05-20	74	375
2025-01-22	75	326
2024-08-08	76	22
2024-07-20	77	147
2024-08-03	78	214
2024-08-28	79	154
2024-08-22	80	249
2025-04-01	81	347
2024-11-15	82	371
2024-05-21	83	158
2024-06-12	84	100
2024-06-17	85	14
2024-07-18	86	274
2024-09-15	87	322
2025-01-14	88	112
2024-06-18	89	391
2025-01-19	90	84
2024-07-12	91	129
2024-05-14	92	344
2024-09-28	93	124
2024-09-25	94	35
2024-08-26	95	312
2024-11-16	96	134
2024-10-17	97	109
2024-09-28	98	9
2024-05-14	99	209
2024-07-09	100	214
2025-03-09	101	107
2024-09-30	102	327
2024-09-18	103	388
2025-04-06	104	281
2025-02-12	105	306
2024-12-02	106	153
2025-01-15	107	186
2024-04-27	108	340
2025-03-18	109	24
2025-03-28	110	305
2025-02-11	111	226
2024-11-29	112	335
2024-09-14	113	22
2024-10-22	114	20
2024-04-22	115	191
2024-09-03	116	18
2024-08-13	117	283
2025-02-06	118	343
2024-09-18	119	340
2025-03-17	120	123
2025-04-01	121	38
2025-03-10	122	210
2024-09-29	123	87
2024-11-15	124	378
2025-02-04	125	71
2025-01-30	126	291
2024-11-18	127	86
2025-02-24	128	157
2024-12-10	129	223
2025-04-03	130	185
2024-07-14	131	244
2024-10-26	132	100
2024-07-14	133	297
2024-08-03	134	75
2024-10-06	135	237
2024-10-25	136	50
2024-05-01	137	243
2024-09-18	138	397
2024-08-28	139	127
2025-01-04	140	264
2025-01-08	141	378
2025-02-23	142	232
2024-09-24	143	175
2025-01-26	144	296
2024-06-23	145	241
2025-03-12	146	135
2024-10-18	147	239
2025-04-12	148	203
2024-06-08	149	316
2024-12-17	150	89
2024-11-13	151	227
2024-04-30	152	343
2025-04-07	153	329
2024-09-20	154	24
2024-12-05	155	328
2024-11-25	156	264
2025-01-02	157	165
2024-04-30	158	286
2024-05-22	159	361
2024-12-25	160	341
2024-10-03	161	114
2024-06-11	162	139
2025-03-22	163	99
2024-10-16	164	399
2024-06-29	165	179
2024-05-09	166	49
2024-07-30	167	314
2024-09-14	168	305
2024-08-25	169	245
2024-07-11	170	231
2024-10-13	171	279
2024-08-24	172	325
2024-08-29	173	65
2025-02-09	174	268
2025-03-27	175	45
2024-09-14	176	65
2024-08-06	177	255
2025-02-06	178	295
2025-03-09	179	171
2024-09-30	180	253
2024-07-26	181	337
2025-03-10	182	114
2024-05-21	183	380
2024-10-19	184	337
2024-04-27	185	119
2025-02-04	186	316
2024-11-15	187	211
2024-05-10	188	306
2024-09-02	189	247
2024-07-16	190	81
2024-12-28	191	112
2024-05-16	192	298
2025-02-17	193	252
2024-12-29	194	24
2024-05-05	195	264
2025-02-06	196	180
2024-05-02	197	129
2024-07-25	198	262
2024-07-06	199	105
2025-03-11	200	45
2024-04-27	201	231
2024-12-17	202	261
2024-06-18	203	77
2024-07-21	204	311
2024-06-08	205	11
2024-10-20	206	252
2025-01-04	207	112
2024-06-03	208	161
2024-11-25	209	380
2024-07-13	210	63
2024-10-17	211	160
2025-01-16	212	189
2024-07-28	213	89
2025-02-11	214	364
2024-09-10	215	96
2024-06-24	216	165
2024-12-11	217	147
2024-12-11	218	7
2025-02-04	219	153
2025-01-23	220	55
2024-06-03	221	92
2025-02-16	222	317
2025-03-04	223	230
2024-06-22	224	80
2024-08-18	225	238
2024-05-31	226	199
2024-11-30	227	311
2024-04-29	228	278
2025-04-15	229	290
2024-08-19	230	183
2024-11-29	231	329
2025-01-08	232	130
2025-04-07	233	342
2024-09-12	234	6
2024-09-21	235	336
2025-04-20	236	9
2025-01-22	237	196
2024-07-06	238	66
2024-05-19	239	307
2024-12-05	240	27
2025-01-13	241	62
2025-03-08	242	87
2024-12-19	243	356
2024-07-23	244	135
2024-05-29	245	152
2025-01-15	246	230
2025-02-14	247	232
2024-08-15	248	312
2025-03-16	249	299
2025-01-10	250	392
2024-12-09	251	373
2025-02-26	252	345
2024-06-06	253	34
2025-02-23	254	355
2024-11-25	255	336
2025-02-17	256	127
2024-05-05	257	354
2024-09-01	258	29
2024-11-12	259	291
2024-10-03	260	68
2025-01-01	261	36
2024-09-10	262	362
2024-05-16	263	70
2024-11-02	264	114
2024-12-27	265	106
2024-08-30	266	32
2024-04-24	267	383
2025-03-15	268	24
2024-09-30	269	360
2025-03-05	270	25
2024-10-27	271	299
2024-05-30	272	112
2024-10-05	273	73
2024-09-07	274	25
2024-12-22	275	388
2025-04-01	276	265
2025-03-07	277	369
2024-10-15	278	178
2025-01-19	279	255
2024-06-18	280	8
2024-10-06	281	248
2024-06-27	282	145
2025-01-29	283	19
2024-11-08	284	192
2024-12-28	285	122
2024-08-02	286	366
2024-12-15	287	156
2025-02-27	288	11
2025-04-12	289	102
2024-11-15	290	374
2025-02-14	291	55
2024-10-24	292	311
2024-10-17	293	145
2024-10-06	294	348
2025-03-06	295	102
2025-01-28	296	3
2024-12-06	297	188
2024-08-02	298	48
2024-08-23	299	399
2025-03-16	300	69
2024-07-24	301	155
2025-03-08	302	22
2025-04-17	303	79
2024-05-23	304	229
2024-08-06	305	142
2025-03-28	306	369
2024-10-12	307	74
2024-07-23	308	260
2025-02-05	309	135
2024-10-17	310	278
2024-11-27	311	306
2024-12-13	312	366
2025-01-04	313	117
2024-09-14	314	366
2024-08-28	315	121
2024-05-01	316	295
2024-10-28	317	246
2025-03-16	318	195
2024-08-24	319	178
2024-06-29	320	44
2024-10-26	321	2
2024-07-11	322	70
2024-09-04	323	229
2025-02-23	324	74
2024-07-29	325	19
2024-08-30	326	364
2024-08-06	327	54
2025-03-27	328	15
2024-12-07	329	191
2025-01-17	330	57
2025-03-27	331	350
2024-08-05	332	370
2024-11-21	333	172
2024-04-23	334	332
2024-11-06	335	78
2024-07-03	336	31
2024-05-23	337	397
2024-07-22	338	212
2025-01-24	339	261
2024-09-24	340	133
2024-10-26	341	345
2024-11-21	342	310
2025-02-08	343	302
2024-07-22	344	133
2025-01-13	345	2
2024-10-21	346	15
2024-12-26	347	61
2025-01-21	348	123
2024-10-27	349	2
2024-10-11	350	191
2025-02-21	351	197
2024-04-26	352	61
2024-05-26	353	387
2024-08-12	354	317
2024-07-15	355	63
2024-09-24	356	335
2025-01-13	357	391
2024-07-23	358	284
2024-08-16	359	157
2025-01-02	360	96
2024-12-01	361	335
2024-09-10	362	281
2024-10-20	363	123
2024-11-20	364	399
2024-11-12	365	169
2024-08-31	366	274
2024-10-02	367	32
2025-02-03	368	304
2024-11-19	369	384
2024-08-26	370	345
2024-09-03	371	357
2025-01-17	372	136
2024-10-13	373	22
2024-08-03	374	368
2024-08-17	375	315
2024-07-26	376	287
2024-07-18	377	154
2024-06-05	378	105
2025-01-25	379	62
2024-07-03	380	72
2024-08-20	381	301
2024-06-05	382	127
2025-02-02	383	180
2024-11-14	384	209
2025-02-10	385	5
2025-01-13	386	256
2024-06-30	387	364
2024-07-03	388	341
2024-07-13	389	376
2025-01-31	390	229
2024-10-25	391	37
2024-08-05	392	382
2025-01-26	393	62
2024-12-04	394	320
2025-02-09	395	288
2024-11-09	396	117
2024-12-07	397	366
2024-08-07	398	318
2024-05-29	399	350
2025-03-09	400	328
\.


--
-- TOC entry 3420 (class 0 OID 24711)
-- Dependencies: 224
-- Data for Name: sell; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.sell (item_id, supplier_id) FROM stdin;
148	169
103	283
76	299
109	212
128	283
347	355
269	197
356	304
39	345
57	299
232	145
244	378
301	330
88	343
323	386
16	374
215	56
287	340
156	91
21	399
157	255
65	165
303	262
299	367
390	397
15	43
249	55
90	182
224	113
299	124
18	106
347	123
68	51
309	29
338	393
309	320
119	152
289	74
255	46
253	391
6	387
137	296
386	336
196	280
298	224
154	102
2	395
276	234
85	289
348	356
83	265
344	134
273	12
17	289
44	399
99	341
191	73
77	44
101	205
134	166
155	198
144	379
381	78
59	97
355	226
278	363
86	58
71	103
14	192
342	218
277	57
159	353
79	229
144	384
379	304
353	42
181	172
134	284
182	225
179	133
334	387
54	118
280	97
293	372
356	117
37	255
53	270
138	341
120	357
59	256
360	350
1	393
153	164
238	266
359	388
279	122
323	32
212	123
286	284
135	115
355	349
362	347
317	30
335	58
109	156
350	202
376	95
140	390
138	256
264	177
362	280
60	274
346	348
359	153
155	176
67	67
377	181
176	4
196	323
46	161
12	78
36	34
392	325
121	45
51	106
255	86
252	103
135	386
23	294
5	237
328	66
93	371
201	204
200	94
211	302
30	225
317	88
234	385
200	66
349	90
262	33
197	145
130	176
123	313
355	47
67	34
9	160
58	38
123	62
285	144
391	308
376	250
209	140
152	1
305	91
352	134
256	85
120	220
23	7
141	359
392	32
38	199
167	362
377	76
204	198
360	166
259	143
293	152
252	356
203	152
151	43
51	389
69	153
9	242
85	73
316	381
388	26
296	39
11	51
361	208
221	252
239	70
235	24
305	57
289	96
15	81
48	165
99	242
334	120
207	25
135	187
300	233
218	332
290	213
327	166
161	361
178	374
110	228
125	195
282	372
360	229
101	18
331	155
137	264
322	348
362	164
361	144
130	261
236	352
267	281
114	168
164	76
335	399
35	94
177	223
127	313
228	3
158	196
399	193
360	245
190	45
186	149
374	100
57	268
280	12
347	247
202	22
89	186
216	55
381	166
175	200
285	23
354	260
97	120
178	117
7	191
381	189
199	54
298	129
39	48
384	198
308	74
390	82
239	187
186	286
284	319
330	41
288	325
385	259
342	385
222	247
121	15
115	397
140	45
85	83
294	265
382	279
356	197
210	292
170	249
114	377
282	380
370	19
178	152
174	162
38	232
326	173
214	340
303	79
217	25
127	74
331	42
331	201
379	121
137	112
297	159
278	144
305	181
380	288
135	333
117	108
260	309
27	374
394	259
323	71
272	146
348	316
26	368
9	251
115	76
173	192
304	289
76	234
66	229
365	90
54	106
33	9
66	200
95	183
175	138
1	382
136	32
396	332
98	78
56	355
240	85
13	390
320	330
330	371
335	183
353	301
320	309
77	284
300	107
118	361
137	348
303	223
24	78
103	172
165	266
397	77
264	242
26	281
387	247
207	127
182	33
166	265
309	359
283	325
393	71
49	132
104	336
359	107
141	40
254	53
175	108
333	133
271	74
219	323
190	9
79	347
395	7
247	310
229	216
163	395
362	41
131	147
43	326
126	229
202	166
292	185
302	80
391	226
163	171
201	104
223	255
304	369
12	252
161	34
155	134
383	112
125	47
221	125
344	388
268	90
382	108
162	387
15	384
118	345
233	204
322	199
385	145
378	398
120	178
41	72
374	334
325	12
223	88
148	335
31	189
313	205
90	154
130	2
44	34
326	336
355	44
393	3
158	350
220	361
252	359
297	92
50	123
205	130
104	365
128	345
156	298
323	186
340	215
93	345
380	326
\.


--
-- TOC entry 3421 (class 0 OID 24714)
-- Dependencies: 225
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: nafbarg
--

COPY public.suppliers (supplier_id, supplier_name, phone, address) FROM stdin;
1	Kamba	149-964-5147	0 Browning Way
2	Eire	215-944-8938	44494 Fieldstone Street
3	Skyba	746-245-4666	58553 Carberry Plaza
4	Photobean	946-714-4204	9 Johnson Lane
5	Fiveclub	865-535-4839	71185 Packers Plaza
6	Brightbean	866-499-3997	2928 Monica Parkway
7	Leenti	895-432-1192	56 Hagan Circle
8	Mudo	434-199-5807	0 American Ash Lane
9	Oba	805-433-4188	4 Thompson Street
10	Youtags	650-620-3033	2187 Melvin Crossing
11	Ntag	662-476-4668	9 Doe Crossing Park
12	Linkbridge	179-620-5535	3021 Sherman Point
13	Photobug	781-980-3235	41599 Eastwood Crossing
14	Agivu	249-609-7849	78730 Lillian Plaza
15	Omba	943-215-5578	5 Butternut Way
16	Youbridge	620-560-1221	85877 Nobel Circle
17	Lazzy	780-779-0583	17525 Londonderry Point
18	Devpulse	391-559-8229	7741 Quincy Trail
19	Divanoodle	450-723-1269	0643 Lake View Road
20	Latz	872-705-6525	85 Holmberg Center
21	Voonder	769-315-7928	262 Chinook Crossing
22	Skivee	240-522-0312	8894 Mitchell Court
23	Gabcube	765-673-4475	458 Harbort Alley
24	Thoughtbridge	132-272-7713	73 Delladonna Point
25	Photofeed	919-544-7577	275 Iowa Hill
26	Plajo	380-885-5684	738 Dahle Plaza
27	Skyndu	868-896-0343	657 Blue Bill Park Trail
28	Edgeify	780-979-9515	1576 Welch Place
29	Wordtune	113-246-6297	58208 Village Green Alley
30	Skipfire	298-958-5539	00508 Ridge Oak Park
31	Photospace	955-532-6779	734 Kinsman Court
32	Aivee	914-663-3905	736 Anderson Center
33	Digitube	151-778-4347	190 Doe Crossing Hill
34	Roomm	517-292-1692	3 Sutherland Drive
35	Realpoint	388-848-8487	27 Loftsgordon Place
36	Bluezoom	776-528-2077	1010 Dixon Road
37	Dablist	685-917-6965	06710 Talmadge Way
38	Katz	990-221-2325	509 Dixon Avenue
39	Twinder	817-688-1179	61542 Kenwood Way
40	Voonte	725-336-9608	4 Colorado Center
41	Yadel	333-743-7196	464 International Circle
42	Mybuzz	633-482-0425	533 Kim Crossing
43	Photobug	793-630-4883	1 Southridge Avenue
44	Livepath	616-427-2507	183 Superior Lane
45	Wikido	808-783-1018	6654 Hazelcrest Street
46	Gabcube	920-741-5908	9 Elka Plaza
47	Realbridge	865-501-9062	17034 Huxley Way
48	Yozio	913-447-4743	0390 Thompson Place
49	Photobug	609-460-6699	4157 Forest Run Hill
50	Leenti	951-144-2617	6399 Amoth Street
51	Blogspan	724-534-3532	98 Graedel Pass
52	Quatz	959-744-6099	12 Stoughton Center
53	Oyoyo	315-576-3916	04312 Steensland Street
54	Minyx	753-668-1364	227 Green Trail
55	Topiclounge	653-282-2493	5490 Kensington Avenue
56	Youbridge	999-419-9128	51 Quincy Trail
57	Skimia	678-248-2110	8 Village Green Hill
58	Tagchat	746-431-8126	969 Sunfield Plaza
59	Trudoo	828-394-2260	78 Arkansas Pass
60	Flipopia	485-982-7596	02 Declaration Place
61	Buzzshare	196-549-5454	797 Milwaukee Terrace
62	Voomm	109-229-4703	56645 Ruskin Street
63	Shuffledrive	952-410-2226	98180 Eagan Trail
64	Voomm	464-159-9090	9972 Bluestem Crossing
65	Dabshots	510-368-6682	9 Ludington Drive
66	Snaptags	149-452-3699	6 Sommers Street
67	Devify	979-930-1448	20589 Elka Center
68	Browsetype	432-545-3687	84135 Katie Point
69	Edgeblab	744-739-1451	671 Vahlen Point
70	Aibox	753-572-4966	9627 Eastwood Park
71	Vinte	449-927-3041	0 Katie Park
72	Shufflebeat	836-123-6316	05 Dwight Court
73	Eadel	592-475-5815	4 Loeprich Way
74	Babblestorm	731-380-4630	9837 Grim Drive
75	Skinder	911-406-0929	59487 Monica Lane
76	Realcube	879-999-5920	187 Hanover Alley
77	Babbleset	878-745-7332	83689 Forest Place
78	Youfeed	190-137-9411	06 Swallow Circle
79	Demimbu	863-905-6325	29800 Warrior Point
80	Wikibox	499-575-5244	034 Drewry Terrace
81	Jaxbean	694-644-6192	28850 Melby Place
82	Dablist	457-608-7315	0 Jenna Hill
83	Voonix	942-478-4122	1015 Bultman Trail
84	Lajo	433-816-7509	0 School Point
85	Rooxo	666-232-0826	42 Lotheville Trail
86	Vinder	955-306-8254	848 Di Loreto Street
87	Pixope	586-658-3293	9 La Follette Drive
88	Rooxo	285-281-5231	077 Loftsgordon Drive
89	Jayo	270-786-7368	2 Lunder Park
90	Feedbug	114-276-8770	7 Pawling Avenue
91	Skynoodle	375-151-9902	34 Clemons Road
92	Skiptube	871-290-2929	027 Calypso Park
93	Zazio	651-424-1723	2 Main Crossing
94	Dazzlesphere	813-969-0235	5200 Old Shore Court
95	Mita	982-472-1379	0110 Nelson Parkway
96	Eire	650-467-3296	1809 Judy Avenue
97	Wikivu	591-989-5124	26 Cardinal Trail
98	Wordtune	543-488-3639	99014 Elmside Trail
99	Plambee	624-500-2652	23 Parkside Trail
100	Plajo	770-592-1193	25387 Jenifer Avenue
101	Talane	198-108-1181	200 Mallard Point
102	Gabtune	798-581-6266	99462 Eggendart Circle
103	Topicblab	240-907-5312	5795 Golf Course Parkway
104	Twitterwire	543-921-3177	8 Moulton Point
105	LiveZ	259-249-7171	97 Barby Point
106	Oozz	667-924-0468	8221 Crowley Hill
107	Topiclounge	628-811-9183	69461 New Castle Park
108	Jaxspan	554-267-5797	34 Scott Way
109	Kanoodle	541-374-5675	177 Blackbird Avenue
110	Meezzy	173-897-9379	44 Mariners Cove Junction
111	Tagtune	248-138-0994	11731 Tomscot Center
112	Ntag	824-355-5380	25393 Prairieview Junction
113	Yacero	219-370-9704	6857 Quincy Junction
114	Thoughtblab	910-515-8024	0925 Bowman Court
115	Mymm	496-788-6539	9710 Center Terrace
116	Yata	797-836-1718	72223 Hintze Street
117	Twimm	846-844-5893	332 Sullivan Crossing
118	Yabox	832-955-8787	34 Eastwood Trail
119	Twitterwire	966-988-2666	85 Marquette Crossing
120	Tambee	952-434-1060	1612 Evergreen Center
121	Leexo	880-829-9450	04252 Tony Way
122	Devshare	829-741-4626	6 Parkside Drive
123	Trilia	534-644-7306	54 Sunfield Alley
124	Thoughtstorm	826-780-8351	0420 Hagan Junction
125	Shuffledrive	118-187-7742	609 Autumn Leaf Crossing
126	Gabvine	640-214-5128	321 Chive Hill
127	Babblestorm	614-261-4155	40 Bowman Alley
128	Oyoba	796-138-3379	53 Merrick Parkway
129	Fadeo	684-230-6895	31 Mandrake Hill
130	Npath	420-906-7161	3 Memorial Alley
132	Feedspan	827-416-5243	022 Badeau Lane
133	Lajo	722-234-7658	748 Swallow Terrace
134	Kare	609-693-8070	900 Algoma Plaza
135	DabZ	378-222-3798	444 Blaine Point
136	Zoomdog	321-574-1460	7499 Maywood Circle
137	Kimia	156-738-9376	1 Corben Court
138	JumpXS	211-930-2838	5869 Red Cloud Park
139	Wikido	429-626-3946	52283 Golf View Road
140	Skippad	678-780-4312	598 Prairie Rose Lane
141	Brainsphere	749-148-7614	77 Sachs Place
142	Quatz	813-682-3571	9 High Crossing Junction
143	Topicshots	367-781-4170	9 Clove Avenue
144	Wikibox	330-359-1726	3599 Superior Crossing
145	Zazio	463-834-4792	807 Arrowood Circle
146	Yakitri	738-245-8446	036 Shelley Junction
147	Skimia	604-190-5131	2 1st Lane
148	Quamba	949-648-6916	93 Eagan Road
149	Dynazzy	846-770-3688	03545 Declaration Alley
150	Kwideo	666-877-5058	57338 Southridge Drive
151	Youfeed	908-493-0080	3539 Hintze Court
152	Skidoo	645-448-4237	4447 Aberg Court
153	Quatz	492-557-7549	52 Russell Terrace
154	Wikivu	341-265-4108	1 Westridge Court
155	Zoomlounge	864-283-5365	60373 North Park
156	Livetube	804-740-9866	2 Bultman Circle
157	Blogtag	192-842-0157	15 Little Fleur Center
158	Flashpoint	797-509-9434	01221 Heath Alley
159	Devshare	176-819-0469	72 Hermina Parkway
160	Photobean	473-570-7516	7072 Alpine Park
161	Izio	540-465-4743	89 Brown Plaza
162	Photofeed	263-698-1810	6621 Golf View Pass
163	Jabbercube	316-902-3073	6655 Oak Valley Park
164	Dynabox	791-727-7286	6258 Milwaukee Place
165	Tazzy	892-358-3410	8458 Stuart Circle
166	Linklinks	759-467-3665	1209 American Street
167	Ooba	357-176-9521	50476 Dakota Lane
168	Divavu	959-522-3561	9 Evergreen Place
169	Skibox	254-565-9416	5677 Corry Plaza
170	Twitterwire	660-177-0037	45 Manufacturers Plaza
171	Skibox	660-946-1855	87 Vahlen Plaza
172	Flipstorm	807-254-7991	5280 Mcbride Plaza
173	Ailane	586-882-2379	33 Forest Crossing
174	Yotz	889-732-7120	99 Elgar Place
175	Yakijo	459-566-6674	0 Moose Parkway
176	Babblestorm	273-961-8041	996 Oriole Pass
177	Yacero	639-746-0702	138 Hudson Parkway
178	Zoonder	731-833-5976	1329 Arrowood Avenue
179	Topiczoom	193-387-7795	7223 Fulton Trail
180	Twiyo	927-941-7887	861 Spohn Trail
181	Voomm	164-739-4710	8 Pierstorff Crossing
182	Skyba	790-110-8880	765 Continental Road
183	Jayo	603-661-7380	9601 Bay Hill
184	Topicware	619-294-2546	405 Sutteridge Road
185	Jayo	595-580-5322	311 Fuller Hill
186	Katz	694-906-3661	79 High Crossing Drive
187	Meezzy	429-908-9741	9 Ruskin Junction
188	Agimba	649-345-7100	82186 Tennyson Pass
189	Eadel	541-838-3443	36256 Mosinee Lane
190	Latz	799-761-8187	56159 Oakridge Drive
191	Yozio	239-310-9643	968 Londonderry Parkway
192	Tagtune	451-987-4354	7657 Thierer Park
193	Jetwire	663-725-2823	55 Aberg Center
194	Leenti	806-598-4879	4122 Tony Street
195	Centimia	603-797-1673	474 Lyons Way
196	Miboo	271-112-0889	8 Mcguire Parkway
197	Aibox	741-588-2656	5464 Harbort Court
198	Twitterbeat	412-836-0878	87751 Orin Drive
199	Eare	133-606-4806	60 Meadow Vale Trail
200	Brightbean	759-713-4610	34 Cascade Lane
201	Ooba	447-450-1899	7364 Jenifer Street
202	Photolist	399-162-5906	1 Mccormick Road
203	Jetwire	105-233-1729	1 Londonderry Point
204	Oozz	447-422-3483	26 Cambridge Court
205	Kanoodle	334-180-3516	41772 Anderson Terrace
206	Meejo	105-947-6502	5 Little Fleur Trail
207	Ntags	489-711-4673	4 Graedel Trail
208	Tagcat	513-727-4044	25205 Manufacturers Court
209	Jaxworks	865-171-6256	79 Bashford Parkway
210	Innotype	645-277-9711	2 Cody Center
211	Bluezoom	708-759-7511	2 Bartillon Park
212	Livepath	603-244-3154	229 Marcy Place
213	Browseblab	294-866-7273	49 Northport Center
214	Blogspan	744-170-7216	6 Pankratz Circle
215	Gabvine	537-319-6057	069 Mallard Road
216	Kazio	366-659-4019	7 Springs Lane
217	Dabjam	167-691-0970	1 Kennedy Plaza
218	Trudoo	962-664-3574	377 Scofield Parkway
219	Shufflester	776-391-5451	43 Fordem Court
220	Lazz	908-768-1023	4950 Eggendart Point
221	Skynoodle	394-318-7992	939 Coolidge Park
222	Vinder	573-476-0746	4 Rockefeller Court
223	Eare	922-939-0044	95742 Dovetail Junction
224	Twitterwire	793-246-3395	427 Merchant Terrace
225	Agimba	512-728-5637	5375 Fordem Avenue
226	Rhyloo	868-950-2920	35098 Pine View Crossing
227	Flashspan	880-717-7056	017 Pond Street
228	Skinix	895-491-2911	54102 Hallows Hill
229	Twitterwire	838-922-2389	48 Karstens Road
230	Trudeo	116-818-1586	7 Talisman Plaza
231	Meezzy	124-142-3464	10 Mitchell Place
232	Brightbean	213-984-6950	608 Farmco Point
233	Browsecat	384-574-2838	60 Hudson Court
234	Realcube	111-451-4077	85 Hudson Parkway
235	Jatri	806-315-1581	0528 Loeprich Center
236	Flipstorm	136-682-7336	50300 Nobel Center
237	Ntag	539-832-7286	15 Pearson Junction
238	Feedfish	407-872-6943	193 Mccormick Center
239	Photospace	563-906-0791	49 Mockingbird Hill
240	Devpulse	778-723-5706	81498 Donald Trail
241	LiveZ	219-909-2470	2 Steensland Lane
242	Trupe	224-874-2371	776 Hallows Plaza
243	Eire	192-334-4185	54507 Emmet Junction
244	Yodoo	759-243-6530	239 Mccormick Crossing
245	Mymm	211-800-5052	2747 Meadow Vale Drive
246	Kayveo	495-947-5667	17907 Raven Road
247	Eidel	560-536-9488	2 Maple Crossing
248	Zoomzone	924-212-3157	244 Fremont Junction
249	Mita	487-736-9149	793 Gina Plaza
250	Bluezoom	142-767-7047	80 Corry Alley
251	Aivee	391-208-5681	3238 Kenwood Park
252	Leenti	135-302-5068	0593 Spaight Center
253	Thoughtsphere	395-149-0842	93430 Mosinee Avenue
254	Zooxo	903-461-0541	5 Maple Lane
255	Yombu	774-977-7976	87767 Straubel Point
256	Dazzlesphere	142-193-8631	24702 Holy Cross Avenue
257	Edgetag	784-484-2865	5211 Warner Drive
258	Avavee	249-592-1302	48579 Hauk Park
259	Rhynoodle	106-777-4056	2588 Service Point
260	Wikido	547-427-8436	9 Sullivan Street
261	Ailane	990-648-0935	10770 Prentice Crossing
262	Jetpulse	831-861-7595	23 Surrey Way
263	Quatz	810-170-8885	042 4th Court
264	Divape	562-556-7566	30938 Lindbergh Road
265	Jamia	463-942-1345	07319 Pennsylvania Hill
266	Divavu	281-797-1968	952 Steensland Center
268	Babbleblab	856-735-4120	7350 Harper Crossing
270	Gabvine	399-503-0229	17 Sundown Avenue
271	Yakitri	907-673-6355	27776 Bultman Lane
272	Bluejam	763-370-7082	0634 Jay Court
273	Quimba	384-543-8370	6625 Beilfuss Road
274	Jaloo	524-228-2365	61 Anderson Parkway
275	Skipstorm	534-837-9525	5 Sloan Park
276	Zazio	532-143-6471	5047 Duke Park
277	Dabvine	212-654-6277	145 Truax Drive
278	Shuffledrive	827-736-3420	04163 Twin Pines Road
279	Muxo	719-421-2303	96554 Forest Park
280	Fliptune	789-865-7620	14347 Farmco Avenue
281	Dabjam	106-608-8733	58 Kenwood Crossing
282	Digitube	599-496-7789	1 Graedel Pass
283	Vimbo	827-324-4780	5 Namekagon Court
284	Feedspan	700-751-0551	09710 Loftsgordon Circle
286	Kayveo	744-511-5797	85 6th Drive
287	Trudeo	929-195-0030	6744 Killdeer Way
288	Babblestorm	912-530-4580	0272 Carey Junction
289	LiveZ	670-629-7854	8 Golden Leaf Drive
290	Topicshots	705-256-4726	11276 Sachs Crossing
291	Youopia	646-742-9365	6102 Linden Hill
292	Blognation	721-212-5934	21 Arrowood Street
293	Roombo	174-693-7434	698 Paget Crossing
294	Ainyx	925-983-3753	24 Waubesa Hill
295	Mudo	409-208-0947	4964 Jana Point
296	Fivespan	562-153-2790	0601 Hovde Trail
297	Avamba	968-798-6219	073 Annamark Lane
298	Realbuzz	574-293-3163	52 Dryden Hill
299	Jabbersphere	895-920-1072	4 Dayton Road
300	Omba	710-403-5121	181 Meadow Valley Hill
301	Skiptube	835-202-1667	00 Hoepker Trail
302	Tazz	647-548-0460	5427 American Ash Terrace
303	Twitternation	335-793-8811	0688 Ludington Lane
304	Edgeblab	800-637-6417	091 John Wall Way
305	Innojam	240-172-2392	1744 Dixon Junction
306	Babbleset	446-209-8044	8371 Commercial Crossing
307	Devpoint	274-515-0616	78 Lillian Avenue
308	Livepath	561-812-5583	13311 Buena Vista Place
309	Jabbersphere	185-867-2192	823 Westerfield Center
310	Trupe	658-592-0717	117 Forest Run Plaza
311	Skivee	382-304-0915	28077 Norway Maple Way
312	Ooba	545-787-2914	5781 Lyons Point
313	Centidel	906-443-9050	6406 Anniversary Center
314	Roodel	571-432-5025	87640 Scott Parkway
315	Realblab	610-902-3539	21 Memorial Hill
316	Flashdog	492-129-2437	37117 Helena Circle
317	Yakijo	631-244-8488	8526 Kingsford Junction
318	Trupe	430-414-7687	51 Hovde Center
319	Topicware	615-246-3823	81308 Autumn Leaf Alley
320	Muxo	222-179-2547	630 Arkansas Circle
321	Zoomdog	956-308-9345	6 Macpherson Pass
322	Quaxo	449-106-2048	9097 Sachs Place
323	Ainyx	688-704-3304	793 Park Meadow Terrace
324	Zoombeat	806-936-0673	1 Sauthoff Terrace
325	Devcast	131-242-1347	809 Rutledge Pass
326	Devshare	605-520-6175	02768 Hintze Plaza
327	Yombu	773-540-4383	1886 Lunder Plaza
328	Omba	231-688-9979	9 Merchant Pass
330	Feedbug	764-161-8273	28 Eliot Pass
331	Skimia	773-982-6863	39099 Bartelt Road
332	Fiveclub	657-445-0699	1417 West Pass
333	Demizz	696-997-1686	73768 Dorton Circle
334	Zoomdog	385-692-5548	0221 Northport Trail
335	Voomm	784-483-9199	9838 Merrick Parkway
336	Gabtype	149-840-6916	0601 Eastlawn Park
337	Aimbu	256-479-4055	34 Orin Circle
338	Trudoo	132-878-0894	814 Sloan Park
339	Skilith	695-176-5995	3 Sheridan Park
340	Dabjam	482-204-9143	92508 Waywood Terrace
341	Zoonder	847-454-3833	1 Manitowish Drive
342	Innojam	167-920-0558	12434 Manufacturers Hill
343	Kanoodle	854-652-1798	55 Ludington Park
344	Rhyloo	229-832-5635	78818 Amoth Road
345	Twinder	350-676-8428	069 Kim Road
346	Browsezoom	657-159-8795	72732 Ridgeway Park
347	Youfeed	338-714-9579	3 Upham Lane
348	Twinte	866-432-8952	1562 American Ash Drive
349	Quimm	665-520-9323	2 Manley Drive
350	Topicware	691-801-0275	138 Muir Park
351	Skynoodle	436-163-8385	36 Washington Road
352	Yacero	461-884-9000	728 Buhler Parkway
353	Topicshots	806-106-5105	75216 Barby Drive
354	Skyndu	898-567-3422	9 Carioca Avenue
355	Kazu	456-199-7310	88 Sheridan Circle
356	Vipe	958-737-4352	50619 Anzinger Junction
357	Innotype	826-745-9379	60466 Dovetail Parkway
358	Tagpad	881-110-2975	77 Randy Point
359	Gabtune	700-671-4104	92915 Mockingbird Trail
360	Riffpedia	995-236-1414	15 Troy Lane
361	Quimm	529-522-0059	20 Lillian Street
362	Meedoo	495-871-1886	680 Pennsylvania Parkway
363	Realpoint	783-335-9511	74 Fisk Junction
364	LiveZ	307-334-9975	3 Carpenter Crossing
365	Voonte	336-552-9167	85 Atwood Avenue
366	Buzzshare	884-134-6342	10423 Troy Park
367	Twinte	157-904-0608	60155 American Junction
368	Oloo	569-670-5534	71 Maywood Drive
369	Lazzy	433-126-2654	6809 Dunning Road
370	Zoombeat	970-324-3475	5218 Summer Ridge Plaza
371	Wikizz	661-180-8686	44 East Alley
372	Yoveo	768-913-9886	5400 Burrows Avenue
373	Topiczoom	826-294-1795	13773 Twin Pines Place
374	Trunyx	877-550-0977	07451 Delladonna Point
375	Kanoodle	288-244-9503	16 Bluestem Crossing
376	Mita	926-619-8375	520 South Circle
377	Cogibox	377-235-9677	523 Amoth Drive
378	Camido	792-873-7387	8740 Riverside Place
379	Dabtype	575-947-4335	36 Sheridan Circle
380	Tazz	470-782-0290	44 Browning Street
381	Dynabox	182-310-6239	1683 Lindbergh Drive
382	Yoveo	618-469-2179	3 Everett Point
383	Skinte	768-106-0409	70553 Becker Pass
384	Photobug	108-228-1077	87 Mcbride Terrace
385	Jayo	122-880-9287	23968 Bluestem Terrace
386	Quatz	882-789-7032	80 Rowland Center
387	Babbleset	655-515-6131	10362 Fisk Park
388	Skidoo	417-596-6819	51 Jackson Street
389	Brainsphere	388-244-9273	5190 Corry Way
390	DabZ	317-338-0551	5258 Sherman Point
391	Wordtune	427-926-0877	949 Jackson Way
392	Wikizz	539-356-3699	65215 Melvin Alley
393	Livefish	162-204-9899	647 American Ash Street
394	Youspan	613-404-5852	23042 Westport Junction
395	Skynoodle	717-125-1013	34 Bultman Circle
396	Aimbu	954-928-2061	22287 Nevada Circle
397	Livetube	297-729-8438	37289 Di Loreto Crossing
398	Rhycero	833-687-4446	67569 Northridge Court
399	Voonte	854-460-3487	08526 Arapahoe Parkway
400	Devbug	391-136-1118	9 Lerdahl Circle
\.


--
-- TOC entry 3242 (class 2606 OID 24718)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 3244 (class 2606 OID 24720)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- TOC entry 3246 (class 2606 OID 24722)
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (feedback_id);


--
-- TOC entry 3248 (class 2606 OID 24724)
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (item_id);


--
-- TOC entry 3250 (class 2606 OID 24726)
-- Name: orderdetails orderdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY (order_id);


--
-- TOC entry 3252 (class 2606 OID 24728)
-- Name: orderitems orderitems_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_pkey PRIMARY KEY (order_id, item_id);


--
-- TOC entry 3254 (class 2606 OID 24730)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- TOC entry 3256 (class 2606 OID 24732)
-- Name: sell sell_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.sell
    ADD CONSTRAINT sell_pkey PRIMARY KEY (item_id, supplier_id);


--
-- TOC entry 3258 (class 2606 OID 24734)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);


--
-- TOC entry 3259 (class 2606 OID 24735)
-- Name: feedbacks feedbacks_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 3260 (class 2606 OID 24740)
-- Name: feedbacks feedbacks_items_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_items_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(item_id);


--
-- TOC entry 3261 (class 2606 OID 24745)
-- Name: items items_departments_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_departments_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- TOC entry 3262 (class 2606 OID 24750)
-- Name: orderdetails orderdetails_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- TOC entry 3263 (class 2606 OID 24755)
-- Name: orderitems orderitems_items_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_items_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(item_id);


--
-- TOC entry 3264 (class 2606 OID 24760)
-- Name: orderitems orderitems_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- TOC entry 3265 (class 2606 OID 24765)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 3266 (class 2606 OID 24770)
-- Name: sell sell_items_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.sell
    ADD CONSTRAINT sell_items_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(item_id);


--
-- TOC entry 3267 (class 2606 OID 24775)
-- Name: sell sell_suppliers_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nafbarg
--

ALTER TABLE ONLY public.sell
    ADD CONSTRAINT sell_suppliers_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);


-- Completed on 2025-05-15 18:06:17 UTC

--
-- PostgreSQL database dump complete
--

