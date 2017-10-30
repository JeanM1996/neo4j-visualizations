// Delete all
MATCH (n)
OPTIONAL MATCH (n)-[r]-()
DELETE n,r

time,latitude,longitude,depth,mag,magType,nst,gap,dmin,rms,net,id,updated,place,type
2015-09-02T23:55:36.000Z,61.8242,-146.5172,19.8,1.5,ml,,,,0.67,ak,ak11690690,2015-09-03T00:13:35.618Z,"60km WSW of Glennallen, Alaska",earthquake
2015-09-02T23:52:24.280Z,36.9311,-98.0232,9.94,3,mb_lg,,88,0.054,0.43,us,us20003fwl,2015-09-03T05:08:23.647Z,"24km S of Anthony, Kansas",earthquake

USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM 'file:c:/Users/Xigma/Desktop/earthquakes.csv' AS line
CREATE (:Event { time:line.time, latitude:line.latitude, longitude:line.longitude,mag:line.mag, id:line.id, place: line.place})


///////////////////////////////////////////////////////////////////////
// Root
CREATE (root:TimeRoot{name:"Root"})

///////////////////////////////////////////////////////////////////////
// Year
CREATE (root)-[:`2012`]->(year2012:Year {value:2012})
CREATE (root)-[:`2013`]->(year2013:Year {value:2013})
CREATE (root)-[:`2014`]->(year2014:Year {value:2014})
CREATE (root)-[:`2015`]->(year2015:Year {value:2015})

// Year next
CREATE
    (year2012)-[:NEXT]->(year2013),
    (year2013)-[:NEXT]->(year2014),
    (year2014)-[:NEXT]->(year2015),

    (year2012)<-[:PREV]-(year2013),
    (year2013)<-[:PREV]-(year2014),
    (year2014)<-[:PREV]-(year2015)


///////////////////////////////////////////////////////////////////////
// Month
CREATE (month2012_1:Month {value:1, name:"January", days:"31"})-[:YEAR]->(year2012)
CREATE (month2012_2:Month {value:2, name:"February", days:"29"})-[:YEAR]->(year2012)
CREATE (month2012_3:Month {value:3, name:"March", days:"31"})-[:YEAR]->(year2012)
CREATE (month2012_4:Month {value:4, name:"April", days:"30"})-[:YEAR]->(year2012)
CREATE (month2012_5:Month {value:5, name:"May", days:"31"})-[:YEAR]->(year2012)
CREATE (month2012_6:Month {value:6, name:"June", days:"30"})-[:YEAR]->(year2012)
CREATE (month2012_7:Month {value:7, name:"July", days:"31"})-[:YEAR]->(year2012)
CREATE (month2012_8:Month {value:8, name:"August", days:"31"})-[:YEAR]->(year2012)
CREATE (month2012_9:Month {value:9, name:"September", days:"30"})-[:YEAR]->(year2012)
CREATE (month2012_10:Month {value:10, name:"October", days:"31"})-[:YEAR]->(year2012)
CREATE (month2012_11:Month {value:11, name:"November", days:"30"})-[:YEAR]->(year2012)
CREATE (month2012_12:Month {value:12, name:"December", days:"31"})-[:YEAR]->(year2012)

CREATE
    (month2012_1)-[:NEXT]->(month2012_2),
    (month2012_2)-[:NEXT]->(month2012_3),
    (month2012_3)-[:NEXT]->(month2012_4),
    (month2012_4)-[:NEXT]->(month2012_5),
    (month2012_5)-[:NEXT]->(month2012_6),
    (month2012_6)-[:NEXT]->(month2012_7),
    (month2012_7)-[:NEXT]->(month2012_8),
    (month2012_8)-[:NEXT]->(month2012_9),
    (month2012_9)-[:NEXT]->(month2012_10),
    (month2012_10)-[:NEXT]->(month2012_11),
    (month2012_11)-[:NEXT]->(month2012_12)

CREATE (month2013_1:Month {value:1, name:"January", days:"31"})-[:YEAR]->(year2013)
CREATE (month2013_2:Month {value:2, name:"February", days:"28"})-[:YEAR]->(year2013)
CREATE (month2013_3:Month {value:3, name:"March", days:"31"})-[:YEAR]->(year2013)
CREATE (month2013_4:Month {value:4, name:"April", days:"30"})-[:YEAR]->(year2013)
CREATE (month2013_5:Month {value:5, name:"May", days:"31"})-[:YEAR]->(year2013)
CREATE (month2013_6:Month {value:6, name:"June", days:"30"})-[:YEAR]->(year2013)
CREATE (month2013_7:Month {value:7, name:"July", days:"31"})-[:YEAR]->(year2013)
CREATE (month2013_8:Month {value:8, name:"August", days:"31"})-[:YEAR]->(year2013)
CREATE (month2013_9:Month {value:9, name:"September", days:"30"})-[:YEAR]->(year2013)
CREATE (month2013_10:Month {value:10, name:"October", days:"31"})-[:YEAR]->(year2013)
CREATE (month2013_11:Month {value:11, name:"November", days:"30"})-[:YEAR]->(year2013)
CREATE (month2013_12:Month {value:12, name:"December", days:"31"})-[:YEAR]->(year2013)

CREATE
    (month2013_1)-[:NEXT]->(month2013_2),
    (month2013_2)-[:NEXT]->(month2013_3),
    (month2013_3)-[:NEXT]->(month2013_4),
    (month2013_4)-[:NEXT]->(month2013_5),
    (month2013_5)-[:NEXT]->(month2013_6),
    (month2013_6)-[:NEXT]->(month2013_7),
    (month2013_7)-[:NEXT]->(month2013_8),
    (month2013_8)-[:NEXT]->(month2013_9),
    (month2013_9)-[:NEXT]->(month2013_10),
    (month2013_10)-[:NEXT]->(month2013_11),
    (month2013_11)-[:NEXT]->(month2013_12)

CREATE (month2014_1:Month {value:1, name:"January", days:"31"})-[:YEAR]->(year2014)
CREATE (month2014_2:Month {value:2, name:"February", days:"28"})-[:YEAR]->(year2014)
CREATE (month2014_3:Month {value:3, name:"March", days:"31"})-[:YEAR]->(year2014)
CREATE (month2014_4:Month {value:4, name:"April", days:"30"})-[:YEAR]->(year2014)
CREATE (month2014_5:Month {value:5, name:"May", days:"31"})-[:YEAR]->(year2014)
CREATE (month2014_6:Month {value:6, name:"June", days:"30"})-[:YEAR]->(year2014)
CREATE (month2014_7:Month {value:7, name:"July", days:"31"})-[:YEAR]->(year2014)
CREATE (month2014_8:Month {value:8, name:"August", days:"31"})-[:YEAR]->(year2014)
CREATE (month2014_9:Month {value:9, name:"September", days:"30"})-[:YEAR]->(year2014)
CREATE (month2014_10:Month {value:10, name:"October", days:"31"})-[:YEAR]->(year2014)
CREATE (month2014_11:Month {value:11, name:"November", days:"30"})-[:YEAR]->(year2014)
CREATE (month2014_12:Month {value:12, name:"December", days:"31"})-[:YEAR]->(year2014)

CREATE
    (month2014_1)-[:NEXT]->(month2014_2),
    (month2014_2)-[:NEXT]->(month2014_3),
    (month2014_3)-[:NEXT]->(month2014_4),
    (month2014_4)-[:NEXT]->(month2014_5),
    (month2014_5)-[:NEXT]->(month2014_6),
    (month2014_6)-[:NEXT]->(month2014_7),
    (month2014_7)-[:NEXT]->(month2014_8),
    (month2014_8)-[:NEXT]->(month2014_9),
    (month2014_9)-[:NEXT]->(month2014_10),
    (month2014_10)-[:NEXT]->(month2014_11),
    (month2014_11)-[:NEXT]->(month2014_12)

CREATE (month2015_1:Month {value:1, name:"January", days:"31"})-[:YEAR]->(year2015)
CREATE (month2015_2:Month {value:2, name:"February", days:"28"})-[:YEAR]->(year2015)
CREATE (month2015_3:Month {value:3, name:"March", days:"31"})-[:YEAR]->(year2015)
CREATE (month2015_4:Month {value:4, name:"April", days:"30"})-[:YEAR]->(year2015)
CREATE (month2015_5:Month {value:5, name:"May", days:"31"})-[:YEAR]->(year2015)
CREATE (month2015_6:Month {value:6, name:"June", days:"30"})-[:YEAR]->(year2015)
CREATE (month2015_7:Month {value:7, name:"July", days:"31"})-[:YEAR]->(year2015)
CREATE (month2015_8:Month {value:8, name:"August", days:"31"})-[:YEAR]->(year2015)
CREATE (month2015_9:Month {value:9, name:"September", days:"30"})-[:YEAR]->(year2015)
CREATE (month2015_10:Month {value:10, name:"October", days:"31"})-[:YEAR]->(year2015)
CREATE (month2015_11:Month {value:11, name:"November", days:"30"})-[:YEAR]->(year2015)
CREATE (month2015_12:Month {value:12, name:"December", days:"31"})-[:YEAR]->(year2015)

CREATE
    (month2015_1)-[:NEXT]->(month2015_2),
    (month2015_2)-[:NEXT]->(month2015_3),
    (month2015_3)-[:NEXT]->(month2015_4),
    (month2015_4)-[:NEXT]->(month2015_5),
    (month2015_5)-[:NEXT]->(month2015_6),
    (month2015_6)-[:NEXT]->(month2015_7),
    (month2015_7)-[:NEXT]->(month2015_8),
    (month2015_8)-[:NEXT]->(month2015_9),
    (month2015_9)-[:NEXT]->(month2015_10),
    (month2015_10)-[:NEXT]->(month2015_11),
    (month2015_11)-[:NEXT]->(month2015_12)

// Year children
CREATE
    (year2012)-[:`1`]->(month2012_1),
    (year2012)-[:`2`]->(month2012_2),
    (year2012)-[:`3`]->(month2012_3),
    (year2012)-[:`4`]->(month2012_4),
    (year2012)-[:`5`]->(month2012_5),
    (year2012)-[:`6`]->(month2012_6),
    (year2012)-[:`7`]->(month2012_7),
    (year2012)-[:`8`]->(month2012_8),
    (year2012)-[:`9`]->(month2012_9),
    (year2012)-[:`10`]->(month2012_10),
    (year2012)-[:`11`]->(month2012_11),
    (year2012)-[:`12`]->(month2012_12)

CREATE
    (year2013)-[:`1`]->(month2013_1),
    (year2013)-[:`2`]->(month2013_2),
    (year2013)-[:`3`]->(month2013_3),
    (year2013)-[:`4`]->(month2013_4),
    (year2013)-[:`5`]->(month2013_5),
    (year2013)-[:`6`]->(month2013_6),
    (year2013)-[:`7`]->(month2013_7),
    (year2013)-[:`8`]->(month2013_8),
    (year2013)-[:`9`]->(month2013_9),
    (year2013)-[:`10`]->(month2013_10),
    (year2013)-[:`11`]->(month2013_11),
    (year2013)-[:`12`]->(month2013_12)

CREATE
    (year2014)-[:`1`]->(month2014_1),
    (year2014)-[:`2`]->(month2014_2),
    (year2014)-[:`3`]->(month2014_3),
    (year2014)-[:`4`]->(month2014_4),
    (year2014)-[:`5`]->(month2014_5),
    (year2014)-[:`6`]->(month2014_6),
    (year2014)-[:`7`]->(month2014_7),
    (year2014)-[:`8`]->(month2014_8),
    (year2014)-[:`9`]->(month2014_9),
    (year2014)-[:`10`]->(month2014_10),
    (year2014)-[:`11`]->(month2014_11),
    (year2014)-[:`12`]->(month2014_12)

CREATE
    (year2015)-[:`1`]->(month2015_1),
    (year2015)-[:`2`]->(month2015_2),
    (year2015)-[:`3`]->(month2015_3),
    (year2015)-[:`4`]->(month2015_4),
    (year2015)-[:`5`]->(month2015_5),
    (year2015)-[:`6`]->(month2015_6),
    (year2015)-[:`7`]->(month2015_7),
    (year2015)-[:`8`]->(month2015_8),
    (year2015)-[:`9`]->(month2015_9),
    (year2015)-[:`10`]->(month2015_10),
    (year2015)-[:`11`]->(month2015_11),
    (year2015)-[:`12`]->(month2015_12)


///////////////////////////////////////////////////////////////////////
// Day
CREATE
    (month2015_1)-[:`1`]->(day2015_1_1:Day {value:1})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`2`]->(day2015_1_2:Day {value:2})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`3`]->(day2015_1_3:Day {value:3})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`4`]->(day2015_1_4:Day {value:4})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`5`]->(day2015_1_5:Day {value:5})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`6`]->(day2015_1_6:Day {value:6})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`7`]->(day2015_1_7:Day {value:7})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`8`]->(day2015_1_8:Day {value:8})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`9`]->(day2015_1_9:Day {value:9})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`10`]->(day2015_1_10:Day {value:10})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`11`]->(day2015_1_11:Day {value:11})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`12`]->(day2015_1_12:Day {value:12})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`13`]->(day2015_1_13:Day {value:13})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`14`]->(day2015_1_14:Day {value:14})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`15`]->(day2015_1_15:Day {value:15})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`16`]->(day2015_1_16:Day {value:16})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`17`]->(day2015_1_17:Day {value:17})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`18`]->(day2015_1_18:Day {value:18})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`19`]->(day2015_1_19:Day {value:19})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`20`]->(day2015_1_20:Day {value:20})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`21`]->(day2015_1_21:Day {value:21})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`22`]->(day2015_1_22:Day {value:22})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`23`]->(day2015_1_23:Day {value:23})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`24`]->(day2015_1_24:Day {value:24})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`25`]->(day2015_1_25:Day {value:25})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`26`]->(day2015_1_26:Day {value:26})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`27`]->(day2015_1_27:Day {value:27})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`28`]->(day2015_1_28:Day {value:28})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`29`]->(day2015_1_29:Day {value:29})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`30`]->(day2015_1_30:Day {value:30})-[:MONTH]->(month2015_1),
    (month2015_1)-[:`31`]->(day2015_1_31:Day {value:31})-[:MONTH]->(month2015_1)

CREATE
    (month2015_2)-[:`1`]->(day2015_2_1:Day {value:1})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`2`]->(day2015_2_2:Day {value:2})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`3`]->(day2015_2_3:Day {value:3})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`4`]->(day2015_2_4:Day {value:4})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`5`]->(day2015_2_5:Day {value:5})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`6`]->(day2015_2_6:Day {value:6})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`7`]->(day2015_2_7:Day {value:7})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`8`]->(day2015_2_8:Day {value:8})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`9`]->(day2015_2_9:Day {value:9})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`10`]->(day2015_2_10:Day {value:10})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`11`]->(day2015_2_11:Day {value:11})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`12`]->(day2015_2_12:Day {value:12})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`13`]->(day2015_2_13:Day {value:13})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`14`]->(day2015_2_14:Day {value:14})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`15`]->(day2015_2_15:Day {value:15})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`16`]->(day2015_2_16:Day {value:16})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`17`]->(day2015_2_17:Day {value:17})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`18`]->(day2015_2_18:Day {value:18})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`19`]->(day2015_2_19:Day {value:19})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`20`]->(day2015_2_20:Day {value:20})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`21`]->(day2015_2_21:Day {value:21})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`22`]->(day2015_2_22:Day {value:22})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`23`]->(day2015_2_23:Day {value:23})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`24`]->(day2015_2_24:Day {value:24})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`25`]->(day2015_2_25:Day {value:25})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`26`]->(day2015_2_26:Day {value:26})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`27`]->(day2015_2_27:Day {value:27})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`28`]->(day2015_2_28:Day {value:28})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`29`]->(day2015_2_29:Day {value:29})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`30`]->(day2015_2_30:Day {value:30})-[:MONTH]->(month2015_2),
    (month2015_2)-[:`31`]->(day2015_2_31:Day {value:31})-[:MONTH]->(month2015_2)

CREATE
    (month2015_3)-[:`1`]->(day2015_3_1:Day {value:1})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`2`]->(day2015_3_2:Day {value:2})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`3`]->(day2015_3_3:Day {value:3})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`4`]->(day2015_3_4:Day {value:4})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`5`]->(day2015_3_5:Day {value:5})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`6`]->(day2015_3_6:Day {value:6})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`7`]->(day2015_3_7:Day {value:7})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`8`]->(day2015_3_8:Day {value:8})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`9`]->(day2015_3_9:Day {value:9})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`10`]->(day2015_3_10:Day {value:10})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`11`]->(day2015_3_11:Day {value:11})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`12`]->(day2015_3_12:Day {value:12})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`13`]->(day2015_3_13:Day {value:13})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`14`]->(day2015_3_14:Day {value:14})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`15`]->(day2015_3_15:Day {value:15})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`16`]->(day2015_3_16:Day {value:16})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`17`]->(day2015_3_17:Day {value:17})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`18`]->(day2015_3_18:Day {value:18})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`19`]->(day2015_3_19:Day {value:19})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`20`]->(day2015_3_20:Day {value:20})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`21`]->(day2015_3_21:Day {value:21})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`22`]->(day2015_3_22:Day {value:22})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`23`]->(day2015_3_23:Day {value:23})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`24`]->(day2015_3_24:Day {value:24})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`25`]->(day2015_3_25:Day {value:25})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`26`]->(day2015_3_26:Day {value:26})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`27`]->(day2015_3_27:Day {value:27})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`28`]->(day2015_3_28:Day {value:28})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`29`]->(day2015_3_29:Day {value:29})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`30`]->(day2015_3_30:Day {value:30})-[:MONTH]->(month2015_3),
    (month2015_3)-[:`31`]->(day2015_3_31:Day {value:31})-[:MONTH]->(month2015_3)

CREATE
    (month2015_4)-[:`1`]->(day2015_4_1:Day {value:1})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`2`]->(day2015_4_2:Day {value:2})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`3`]->(day2015_4_3:Day {value:3})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`4`]->(day2015_4_4:Day {value:4})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`5`]->(day2015_4_5:Day {value:5})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`6`]->(day2015_4_6:Day {value:6})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`7`]->(day2015_4_7:Day {value:7})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`8`]->(day2015_4_8:Day {value:8})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`9`]->(day2015_4_9:Day {value:9})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`10`]->(day2015_4_10:Day {value:10})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`11`]->(day2015_4_11:Day {value:11})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`12`]->(day2015_4_12:Day {value:12})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`13`]->(day2015_4_13:Day {value:13})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`14`]->(day2015_4_14:Day {value:14})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`15`]->(day2015_4_15:Day {value:15})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`16`]->(day2015_4_16:Day {value:16})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`17`]->(day2015_4_17:Day {value:17})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`18`]->(day2015_4_18:Day {value:18})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`19`]->(day2015_4_19:Day {value:19})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`20`]->(day2015_4_20:Day {value:20})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`21`]->(day2015_4_21:Day {value:21})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`22`]->(day2015_4_22:Day {value:22})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`23`]->(day2015_4_23:Day {value:23})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`24`]->(day2015_4_24:Day {value:24})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`25`]->(day2015_4_25:Day {value:25})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`26`]->(day2015_4_26:Day {value:26})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`27`]->(day2015_4_27:Day {value:27})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`28`]->(day2015_4_28:Day {value:28})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`29`]->(day2015_4_29:Day {value:29})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`30`]->(day2015_4_30:Day {value:30})-[:MONTH]->(month2015_4),
    (month2015_4)-[:`31`]->(day2015_4_31:Day {value:31})-[:MONTH]->(month2015_4)

CREATE
    (month2015_5)-[:`1`]->(day2015_5_1:Day {value:1})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`2`]->(day2015_5_2:Day {value:2})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`3`]->(day2015_5_3:Day {value:3})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`4`]->(day2015_5_4:Day {value:4})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`5`]->(day2015_5_5:Day {value:5})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`6`]->(day2015_5_6:Day {value:6})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`7`]->(day2015_5_7:Day {value:7})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`8`]->(day2015_5_8:Day {value:8})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`9`]->(day2015_5_9:Day {value:9})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`10`]->(day2015_5_10:Day {value:10})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`11`]->(day2015_5_11:Day {value:11})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`12`]->(day2015_5_12:Day {value:12})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`13`]->(day2015_5_13:Day {value:13})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`14`]->(day2015_5_14:Day {value:14})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`15`]->(day2015_5_15:Day {value:15})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`16`]->(day2015_5_16:Day {value:16})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`17`]->(day2015_5_17:Day {value:17})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`18`]->(day2015_5_18:Day {value:18})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`19`]->(day2015_5_19:Day {value:19})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`20`]->(day2015_5_20:Day {value:20})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`21`]->(day2015_5_21:Day {value:21})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`22`]->(day2015_5_22:Day {value:22})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`23`]->(day2015_5_23:Day {value:23})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`24`]->(day2015_5_24:Day {value:24})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`25`]->(day2015_5_25:Day {value:25})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`26`]->(day2015_5_26:Day {value:26})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`27`]->(day2015_5_27:Day {value:27})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`28`]->(day2015_5_28:Day {value:28})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`29`]->(day2015_5_29:Day {value:29})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`30`]->(day2015_5_30:Day {value:30})-[:MONTH]->(month2015_5),
    (month2015_5)-[:`31`]->(day2015_5_31:Day {value:31})-[:MONTH]->(month2015_5)

CREATE
    (month2015_6)-[:`1`]->(day2015_6_1:Day {value:1})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`2`]->(day2015_6_2:Day {value:2})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`3`]->(day2015_6_3:Day {value:3})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`4`]->(day2015_6_4:Day {value:4})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`5`]->(day2015_6_5:Day {value:5})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`6`]->(day2015_6_6:Day {value:6})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`7`]->(day2015_6_7:Day {value:7})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`8`]->(day2015_6_8:Day {value:8})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`9`]->(day2015_6_9:Day {value:9})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`10`]->(day2015_6_10:Day {value:10})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`11`]->(day2015_6_11:Day {value:11})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`12`]->(day2015_6_12:Day {value:12})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`13`]->(day2015_6_13:Day {value:13})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`14`]->(day2015_6_14:Day {value:14})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`15`]->(day2015_6_15:Day {value:15})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`16`]->(day2015_6_16:Day {value:16})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`17`]->(day2015_6_17:Day {value:17})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`18`]->(day2015_6_18:Day {value:18})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`19`]->(day2015_6_19:Day {value:19})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`20`]->(day2015_6_20:Day {value:20})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`21`]->(day2015_6_21:Day {value:21})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`22`]->(day2015_6_22:Day {value:22})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`23`]->(day2015_6_23:Day {value:23})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`24`]->(day2015_6_24:Day {value:24})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`25`]->(day2015_6_25:Day {value:25})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`26`]->(day2015_6_26:Day {value:26})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`27`]->(day2015_6_27:Day {value:27})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`28`]->(day2015_6_28:Day {value:28})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`29`]->(day2015_6_29:Day {value:29})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`30`]->(day2015_6_30:Day {value:30})-[:MONTH]->(month2015_6),
    (month2015_6)-[:`31`]->(day2015_6_31:Day {value:31})-[:MONTH]->(month2015_6)

CREATE
    (month2015_7)-[:`1`]->(day2015_7_1:Day {value:1})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`2`]->(day2015_7_2:Day {value:2})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`3`]->(day2015_7_3:Day {value:3})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`4`]->(day2015_7_4:Day {value:4})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`5`]->(day2015_7_5:Day {value:5})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`6`]->(day2015_7_6:Day {value:6})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`7`]->(day2015_7_7:Day {value:7})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`8`]->(day2015_7_8:Day {value:8})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`9`]->(day2015_7_9:Day {value:9})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`10`]->(day2015_7_10:Day {value:10})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`11`]->(day2015_7_11:Day {value:11})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`12`]->(day2015_7_12:Day {value:12})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`13`]->(day2015_7_13:Day {value:13})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`14`]->(day2015_7_14:Day {value:14})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`15`]->(day2015_7_15:Day {value:15})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`16`]->(day2015_7_16:Day {value:16})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`17`]->(day2015_7_17:Day {value:17})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`18`]->(day2015_7_18:Day {value:18})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`19`]->(day2015_7_19:Day {value:19})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`20`]->(day2015_7_20:Day {value:20})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`21`]->(day2015_7_21:Day {value:21})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`22`]->(day2015_7_22:Day {value:22})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`23`]->(day2015_7_23:Day {value:23})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`24`]->(day2015_7_24:Day {value:24})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`25`]->(day2015_7_25:Day {value:25})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`26`]->(day2015_7_26:Day {value:26})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`27`]->(day2015_7_27:Day {value:27})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`28`]->(day2015_7_28:Day {value:28})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`29`]->(day2015_7_29:Day {value:29})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`30`]->(day2015_7_30:Day {value:30})-[:MONTH]->(month2015_7),
    (month2015_7)-[:`31`]->(day2015_7_31:Day {value:31})-[:MONTH]->(month2015_7)

CREATE
    (month2015_8)-[:`1`]->(day2015_8_1:Day {value:1})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`2`]->(day2015_8_2:Day {value:2})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`3`]->(day2015_8_3:Day {value:3})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`4`]->(day2015_8_4:Day {value:4})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`5`]->(day2015_8_5:Day {value:5})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`6`]->(day2015_8_6:Day {value:6})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`7`]->(day2015_8_7:Day {value:7})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`8`]->(day2015_8_8:Day {value:8})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`9`]->(day2015_8_9:Day {value:9})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`10`]->(day2015_8_10:Day {value:10})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`11`]->(day2015_8_11:Day {value:11})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`12`]->(day2015_8_12:Day {value:12})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`13`]->(day2015_8_13:Day {value:13})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`14`]->(day2015_8_14:Day {value:14})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`15`]->(day2015_8_15:Day {value:15})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`16`]->(day2015_8_16:Day {value:16})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`17`]->(day2015_8_17:Day {value:17})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`18`]->(day2015_8_18:Day {value:18})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`19`]->(day2015_8_19:Day {value:19})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`20`]->(day2015_8_20:Day {value:20})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`21`]->(day2015_8_21:Day {value:21})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`22`]->(day2015_8_22:Day {value:22})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`23`]->(day2015_8_23:Day {value:23})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`24`]->(day2015_8_24:Day {value:24})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`25`]->(day2015_8_25:Day {value:25})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`26`]->(day2015_8_26:Day {value:26})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`27`]->(day2015_8_27:Day {value:27})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`28`]->(day2015_8_28:Day {value:28})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`29`]->(day2015_8_29:Day {value:29})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`30`]->(day2015_8_30:Day {value:30})-[:MONTH]->(month2015_8),
    (month2015_8)-[:`31`]->(day2015_8_31:Day {value:31})-[:MONTH]->(month2015_8)

CREATE
    (month2015_9)-[:`1`]->(day2015_9_1:Day {value:1})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`2`]->(day2015_9_2:Day {value:2})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`3`]->(day2015_9_3:Day {value:3})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`4`]->(day2015_9_4:Day {value:4})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`5`]->(day2015_9_5:Day {value:5})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`6`]->(day2015_9_6:Day {value:6})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`7`]->(day2015_9_7:Day {value:7})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`8`]->(day2015_9_8:Day {value:8})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`9`]->(day2015_9_9:Day {value:9})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`10`]->(day2015_9_10:Day {value:10})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`11`]->(day2015_9_11:Day {value:11})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`12`]->(day2015_9_12:Day {value:12})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`13`]->(day2015_9_13:Day {value:13})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`14`]->(day2015_9_14:Day {value:14})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`15`]->(day2015_9_15:Day {value:15})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`16`]->(day2015_9_16:Day {value:16})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`17`]->(day2015_9_17:Day {value:17})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`18`]->(day2015_9_18:Day {value:18})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`19`]->(day2015_9_19:Day {value:19})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`20`]->(day2015_9_20:Day {value:20})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`21`]->(day2015_9_21:Day {value:21})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`22`]->(day2015_9_22:Day {value:22})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`23`]->(day2015_9_23:Day {value:23})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`24`]->(day2015_9_24:Day {value:24})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`25`]->(day2015_9_25:Day {value:25})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`26`]->(day2015_9_26:Day {value:26})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`27`]->(day2015_9_27:Day {value:27})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`28`]->(day2015_9_28:Day {value:28})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`29`]->(day2015_9_29:Day {value:29})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`30`]->(day2015_9_30:Day {value:30})-[:MONTH]->(month2015_9),
    (month2015_9)-[:`31`]->(day2015_9_31:Day {value:31})-[:MONTH]->(month2015_9)

CREATE
    (month2015_10)-[:`1`]->(day2015_10_1:Day {value:1})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`2`]->(day2015_10_2:Day {value:2})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`3`]->(day2015_10_3:Day {value:3})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`4`]->(day2015_10_4:Day {value:4})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`5`]->(day2015_10_5:Day {value:5})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`6`]->(day2015_10_6:Day {value:6})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`7`]->(day2015_10_7:Day {value:7})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`8`]->(day2015_10_8:Day {value:8})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`9`]->(day2015_10_9:Day {value:9})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`10`]->(day2015_10_10:Day {value:10})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`11`]->(day2015_10_11:Day {value:11})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`12`]->(day2015_10_12:Day {value:12})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`13`]->(day2015_10_13:Day {value:13})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`14`]->(day2015_10_14:Day {value:14})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`15`]->(day2015_10_15:Day {value:15})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`16`]->(day2015_10_16:Day {value:16})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`17`]->(day2015_10_17:Day {value:17})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`18`]->(day2015_10_18:Day {value:18})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`19`]->(day2015_10_19:Day {value:19})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`20`]->(day2015_10_20:Day {value:20})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`21`]->(day2015_10_21:Day {value:21})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`22`]->(day2015_10_22:Day {value:22})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`23`]->(day2015_10_23:Day {value:23})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`24`]->(day2015_10_24:Day {value:24})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`25`]->(day2015_10_25:Day {value:25})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`26`]->(day2015_10_26:Day {value:26})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`27`]->(day2015_10_27:Day {value:27})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`28`]->(day2015_10_28:Day {value:28})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`29`]->(day2015_10_29:Day {value:29})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`30`]->(day2015_10_30:Day {value:30})-[:MONTH]->(month2015_10),
    (month2015_10)-[:`31`]->(day2015_10_31:Day {value:31})-[:MONTH]->(month2015_10)

CREATE
    (month2015_11)-[:`1`]->(day2015_11_1:Day {value:1})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`2`]->(day2015_11_2:Day {value:2})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`3`]->(day2015_11_3:Day {value:3})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`4`]->(day2015_11_4:Day {value:4})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`5`]->(day2015_11_5:Day {value:5})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`6`]->(day2015_11_6:Day {value:6})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`7`]->(day2015_11_7:Day {value:7})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`8`]->(day2015_11_8:Day {value:8})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`9`]->(day2015_11_9:Day {value:9})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`10`]->(day2015_11_10:Day {value:10})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`11`]->(day2015_11_11:Day {value:11})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`12`]->(day2015_11_12:Day {value:12})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`13`]->(day2015_11_13:Day {value:13})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`14`]->(day2015_11_14:Day {value:14})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`15`]->(day2015_11_15:Day {value:15})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`16`]->(day2015_11_16:Day {value:16})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`17`]->(day2015_11_17:Day {value:17})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`18`]->(day2015_11_18:Day {value:18})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`19`]->(day2015_11_19:Day {value:19})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`20`]->(day2015_11_20:Day {value:20})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`21`]->(day2015_11_21:Day {value:21})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`22`]->(day2015_11_22:Day {value:22})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`23`]->(day2015_11_23:Day {value:23})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`24`]->(day2015_11_24:Day {value:24})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`25`]->(day2015_11_25:Day {value:25})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`26`]->(day2015_11_26:Day {value:26})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`27`]->(day2015_11_27:Day {value:27})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`28`]->(day2015_11_28:Day {value:28})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`29`]->(day2015_11_29:Day {value:29})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`30`]->(day2015_11_30:Day {value:30})-[:MONTH]->(month2015_11),
    (month2015_11)-[:`31`]->(day2015_11_31:Day {value:31})-[:MONTH]->(month2015_11)

CREATE
    (month2015_12)-[:`1`]->(day2015_12_1:Day {value:1})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`2`]->(day2015_12_2:Day {value:2})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`3`]->(day2015_12_3:Day {value:3})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`4`]->(day2015_12_4:Day {value:4})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`5`]->(day2015_12_5:Day {value:5})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`6`]->(day2015_12_6:Day {value:6})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`7`]->(day2015_12_7:Day {value:7})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`8`]->(day2015_12_8:Day {value:8})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`9`]->(day2015_12_9:Day {value:9})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`10`]->(day2015_12_10:Day {value:10})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`11`]->(day2015_12_11:Day {value:11})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`12`]->(day2015_12_12:Day {value:12})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`13`]->(day2015_12_13:Day {value:13})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`14`]->(day2015_12_14:Day {value:14})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`15`]->(day2015_12_15:Day {value:15})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`16`]->(day2015_12_16:Day {value:16})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`17`]->(day2015_12_17:Day {value:17})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`18`]->(day2015_12_18:Day {value:18})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`19`]->(day2015_12_19:Day {value:19})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`20`]->(day2015_12_20:Day {value:20})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`21`]->(day2015_12_21:Day {value:21})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`22`]->(day2015_12_22:Day {value:22})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`23`]->(day2015_12_23:Day {value:23})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`24`]->(day2015_12_24:Day {value:24})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`25`]->(day2015_12_25:Day {value:25})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`26`]->(day2015_12_26:Day {value:26})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`27`]->(day2015_12_27:Day {value:27})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`28`]->(day2015_12_28:Day {value:28})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`29`]->(day2015_12_29:Day {value:29})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`30`]->(day2015_12_30:Day {value:30})-[:MONTH]->(month2015_12),
    (month2015_12)-[:`31`]->(day2015_12_31:Day {value:31})-[:MONTH]->(month2015_12)


CREATE
(day2015_1_1)-[:NEXTDAY]->(day2015_1_2)-[:NEXTDAY]->(day2015_1_3)-[:NEXTDAY]->(day2015_1_4)-[:NEXTDAY]->(day2015_1_5)-[:NEXTDAY]->(day2015_1_6)-[:NEXTDAY]->(day2015_1_7)-[:NEXTDAY]->(day2015_1_8)-[:NEXTDAY]->(day2015_1_9)-[:NEXTDAY]->(day2015_1_10)-[:NEXTDAY]->(day2015_1_11)-[:NEXTDAY]->(day2015_1_12)-[:NEXTDAY]->(day2015_1_13)-[:NEXTDAY]->(day2015_1_14)-[:NEXTDAY]->(day2015_1_15)-[:NEXTDAY]->(day2015_1_16)-[:NEXTDAY]->(day2015_1_17)-[:NEXTDAY]->(day2015_1_18)-[:NEXTDAY]->(day2015_1_19)-[:NEXTDAY]->(day2015_1_20)-[:NEXTDAY]->(day2015_1_21)-[:NEXTDAY]->(day2015_1_22)-[:NEXTDAY]->(day2015_1_23)-[:NEXTDAY]->(day2015_1_24)-[:NEXTDAY]->(day2015_1_25)-[:NEXTDAY]->(day2015_1_26)-[:NEXTDAY]->(day2015_1_27)-[:NEXTDAY]->(day2015_1_28)-[:NEXTDAY]->(day2015_1_29)-[:NEXTDAY]->(day2015_1_30)-[:NEXTDAY]->(day2015_1_31)-[:NEXTDAY]->(day2015_2_1)-[:NEXTDAY]->(day2015_2_2)-[:NEXTDAY]->(day2015_2_3)-[:NEXTDAY]->(day2015_2_4)-[:NEXTDAY]->(day2015_2_5)-[:NEXTDAY]->(day2015_2_6)-[:NEXTDAY]->(day2015_2_7)-[:NEXTDAY]->(day2015_2_8)-[:NEXTDAY]->(day2015_2_9)-[:NEXTDAY]->(day2015_2_10)-[:NEXTDAY]->(day2015_2_11)-[:NEXTDAY]->(day2015_2_12)-[:NEXTDAY]->(day2015_2_13)-[:NEXTDAY]->(day2015_2_14)-[:NEXTDAY]->(day2015_2_15)-[:NEXTDAY]->(day2015_2_16)-[:NEXTDAY]->(day2015_2_17)-[:NEXTDAY]->(day2015_2_18)-[:NEXTDAY]->(day2015_2_19)-[:NEXTDAY]->(day2015_2_20)-[:NEXTDAY]->(day2015_2_21)-[:NEXTDAY]->(day2015_2_22)-[:NEXTDAY]->(day2015_2_23)-[:NEXTDAY]->(day2015_2_24)-[:NEXTDAY]->(day2015_2_25)-[:NEXTDAY]->(day2015_2_26)-[:NEXTDAY]->(day2015_2_27)-[:NEXTDAY]->(day2015_2_28)-[:NEXTDAY]->(day2015_2_29)-[:NEXTDAY]->(day2015_2_30)-[:NEXTDAY]->(day2015_2_31)-[:NEXTDAY]->(day2015_3_1)-[:NEXTDAY]->(day2015_3_2)-[:NEXTDAY]->(day2015_3_3)-[:NEXTDAY]->(day2015_3_4)-[:NEXTDAY]->(day2015_3_5)-[:NEXTDAY]->(day2015_3_6)-[:NEXTDAY]->(day2015_3_7)-[:NEXTDAY]->(day2015_3_8)-[:NEXTDAY]->(day2015_3_9)-[:NEXTDAY]->(day2015_3_10)-[:NEXTDAY]->(day2015_3_11)-[:NEXTDAY]->(day2015_3_12)-[:NEXTDAY]->(day2015_3_13)-[:NEXTDAY]->(day2015_3_14)-[:NEXTDAY]->(day2015_3_15)-[:NEXTDAY]->(day2015_3_16)-[:NEXTDAY]->(day2015_3_17)-[:NEXTDAY]->(day2015_3_18)-[:NEXTDAY]->(day2015_3_19)-[:NEXTDAY]->(day2015_3_20)-[:NEXTDAY]->(day2015_3_21)-[:NEXTDAY]->(day2015_3_22)-[:NEXTDAY]->(day2015_3_23)-[:NEXTDAY]->(day2015_3_24)-[:NEXTDAY]->(day2015_3_25)-[:NEXTDAY]->(day2015_3_26)-[:NEXTDAY]->(day2015_3_27)-[:NEXTDAY]->(day2015_3_28)-[:NEXTDAY]->(day2015_3_29)-[:NEXTDAY]->(day2015_3_30)-[:NEXTDAY]->(day2015_3_31)-[:NEXTDAY]->(day2015_4_1)-[:NEXTDAY]->(day2015_4_2)-[:NEXTDAY]->(day2015_4_3)-[:NEXTDAY]->(day2015_4_4)-[:NEXTDAY]->(day2015_4_5)-[:NEXTDAY]->(day2015_4_6)-[:NEXTDAY]->(day2015_4_7)-[:NEXTDAY]->(day2015_4_8)-[:NEXTDAY]->(day2015_4_9)-[:NEXTDAY]->(day2015_4_10)-[:NEXTDAY]->(day2015_4_11)-[:NEXTDAY]->(day2015_4_12)-[:NEXTDAY]->(day2015_4_13)-[:NEXTDAY]->(day2015_4_14)-[:NEXTDAY]->(day2015_4_15)-[:NEXTDAY]->(day2015_4_16)-[:NEXTDAY]->(day2015_4_17)-[:NEXTDAY]->(day2015_4_18)-[:NEXTDAY]->(day2015_4_19)-[:NEXTDAY]->(day2015_4_20)-[:NEXTDAY]->(day2015_4_21)-[:NEXTDAY]->(day2015_4_22)-[:NEXTDAY]->(day2015_4_23)-[:NEXTDAY]->(day2015_4_24)-[:NEXTDAY]->(day2015_4_25)-[:NEXTDAY]->(day2015_4_26)-[:NEXTDAY]->(day2015_4_27)-[:NEXTDAY]->(day2015_4_28)-[:NEXTDAY]->(day2015_4_29)-[:NEXTDAY]->(day2015_4_30)-[:NEXTDAY]->(day2015_4_31)-[:NEXTDAY]->(day2015_5_1)-[:NEXTDAY]->(day2015_5_2)-[:NEXTDAY]->(day2015_5_3)-[:NEXTDAY]->(day2015_5_4)-[:NEXTDAY]->(day2015_5_5)-[:NEXTDAY]->(day2015_5_6)-[:NEXTDAY]->(day2015_5_7)-[:NEXTDAY]->(day2015_5_8)-[:NEXTDAY]->(day2015_5_9)-[:NEXTDAY]->(day2015_5_10)-[:NEXTDAY]->(day2015_5_11)-[:NEXTDAY]->(day2015_5_12)-[:NEXTDAY]->(day2015_5_13)-[:NEXTDAY]->(day2015_5_14)-[:NEXTDAY]->(day2015_5_15)-[:NEXTDAY]->(day2015_5_16)-[:NEXTDAY]->(day2015_5_17)-[:NEXTDAY]->(day2015_5_18)-[:NEXTDAY]->(day2015_5_19)-[:NEXTDAY]->(day2015_5_20)-[:NEXTDAY]->(day2015_5_21)-[:NEXTDAY]->(day2015_5_22)-[:NEXTDAY]->(day2015_5_23)-[:NEXTDAY]->(day2015_5_24)-[:NEXTDAY]->(day2015_5_25)-[:NEXTDAY]->(day2015_5_26)-[:NEXTDAY]->(day2015_5_27)-[:NEXTDAY]->(day2015_5_28)-[:NEXTDAY]->(day2015_5_29)-[:NEXTDAY]->(day2015_5_30)-[:NEXTDAY]->(day2015_5_31)-[:NEXTDAY]->(day2015_6_1)-[:NEXTDAY]->(day2015_6_2)-[:NEXTDAY]->(day2015_6_3)-[:NEXTDAY]->(day2015_6_4)-[:NEXTDAY]->(day2015_6_5)-[:NEXTDAY]->(day2015_6_6)-[:NEXTDAY]->(day2015_6_7)-[:NEXTDAY]->(day2015_6_8)-[:NEXTDAY]->(day2015_6_9)-[:NEXTDAY]->(day2015_6_10)-[:NEXTDAY]->(day2015_6_11)-[:NEXTDAY]->(day2015_6_12)-[:NEXTDAY]->(day2015_6_13)-[:NEXTDAY]->(day2015_6_14)-[:NEXTDAY]->(day2015_6_15)-[:NEXTDAY]->(day2015_6_16)-[:NEXTDAY]->(day2015_6_17)-[:NEXTDAY]->(day2015_6_18)-[:NEXTDAY]->(day2015_6_19)-[:NEXTDAY]->(day2015_6_20)-[:NEXTDAY]->(day2015_6_21)-[:NEXTDAY]->(day2015_6_22)-[:NEXTDAY]->(day2015_6_23)-[:NEXTDAY]->(day2015_6_24)-[:NEXTDAY]->(day2015_6_25)-[:NEXTDAY]->(day2015_6_26)-[:NEXTDAY]->(day2015_6_27)-[:NEXTDAY]->(day2015_6_28)-[:NEXTDAY]->(day2015_6_29)-[:NEXTDAY]->(day2015_6_30)-[:NEXTDAY]->(day2015_6_31)-[:NEXTDAY]->(day2015_7_1)-[:NEXTDAY]->(day2015_7_2)-[:NEXTDAY]->(day2015_7_3)-[:NEXTDAY]->(day2015_7_4)-[:NEXTDAY]->(day2015_7_5)-[:NEXTDAY]->(day2015_7_6)-[:NEXTDAY]->(day2015_7_7)-[:NEXTDAY]->(day2015_7_8)-[:NEXTDAY]->(day2015_7_9)-[:NEXTDAY]->(day2015_7_10)-[:NEXTDAY]->(day2015_7_11)-[:NEXTDAY]->(day2015_7_12)-[:NEXTDAY]->(day2015_7_13)-[:NEXTDAY]->(day2015_7_14)-[:NEXTDAY]->(day2015_7_15)-[:NEXTDAY]->(day2015_7_16)-[:NEXTDAY]->(day2015_7_17)-[:NEXTDAY]->(day2015_7_18)-[:NEXTDAY]->(day2015_7_19)-[:NEXTDAY]->(day2015_7_20)-[:NEXTDAY]->(day2015_7_21)-[:NEXTDAY]->(day2015_7_22)-[:NEXTDAY]->(day2015_7_23)-[:NEXTDAY]->(day2015_7_24)-[:NEXTDAY]->(day2015_7_25)-[:NEXTDAY]->(day2015_7_26)-[:NEXTDAY]->(day2015_7_27)-[:NEXTDAY]->(day2015_7_28)-[:NEXTDAY]->(day2015_7_29)-[:NEXTDAY]->(day2015_7_30)-[:NEXTDAY]->(day2015_7_31)-[:NEXTDAY]->(day2015_8_1)-[:NEXTDAY]->(day2015_8_2)-[:NEXTDAY]->(day2015_8_3)-[:NEXTDAY]->(day2015_8_4)-[:NEXTDAY]->(day2015_8_5)-[:NEXTDAY]->(day2015_8_6)-[:NEXTDAY]->(day2015_8_7)-[:NEXTDAY]->(day2015_8_8)-[:NEXTDAY]->(day2015_8_9)-[:NEXTDAY]->(day2015_8_10)-[:NEXTDAY]->(day2015_8_11)-[:NEXTDAY]->(day2015_8_12)-[:NEXTDAY]->(day2015_8_13)-[:NEXTDAY]->(day2015_8_14)-[:NEXTDAY]->(day2015_8_15)-[:NEXTDAY]->(day2015_8_16)-[:NEXTDAY]->(day2015_8_17)-[:NEXTDAY]->(day2015_8_18)-[:NEXTDAY]->(day2015_8_19)-[:NEXTDAY]->(day2015_8_20)-[:NEXTDAY]->(day2015_8_21)-[:NEXTDAY]->(day2015_8_22)-[:NEXTDAY]->(day2015_8_23)-[:NEXTDAY]->(day2015_8_24)-[:NEXTDAY]->(day2015_8_25)-[:NEXTDAY]->(day2015_8_26)-[:NEXTDAY]->(day2015_8_27)-[:NEXTDAY]->(day2015_8_28)-[:NEXTDAY]->(day2015_8_29)-[:NEXTDAY]->(day2015_8_30)-[:NEXTDAY]->(day2015_8_31)-[:NEXTDAY]->(day2015_9_1)-[:NEXTDAY]->(day2015_9_2)-[:NEXTDAY]->(day2015_9_3)-[:NEXTDAY]->(day2015_9_4)-[:NEXTDAY]->(day2015_9_5)-[:NEXTDAY]->(day2015_9_6)-[:NEXTDAY]->(day2015_9_7)-[:NEXTDAY]->(day2015_9_8)-[:NEXTDAY]->(day2015_9_9)-[:NEXTDAY]->(day2015_9_10)-[:NEXTDAY]->(day2015_9_11)-[:NEXTDAY]->(day2015_9_12)-[:NEXTDAY]->(day2015_9_13)-[:NEXTDAY]->(day2015_9_14)-[:NEXTDAY]->(day2015_9_15)-[:NEXTDAY]->(day2015_9_16)-[:NEXTDAY]->(day2015_9_17)-[:NEXTDAY]->(day2015_9_18)-[:NEXTDAY]->(day2015_9_19)-[:NEXTDAY]->(day2015_9_20)-[:NEXTDAY]->(day2015_9_21)-[:NEXTDAY]->(day2015_9_22)-[:NEXTDAY]->(day2015_9_23)-[:NEXTDAY]->(day2015_9_24)-[:NEXTDAY]->(day2015_9_25)-[:NEXTDAY]->(day2015_9_26)-[:NEXTDAY]->(day2015_9_27)-[:NEXTDAY]->(day2015_9_28)-[:NEXTDAY]->(day2015_9_29)-[:NEXTDAY]->(day2015_9_30)-[:NEXTDAY]->(day2015_9_31)-[:NEXTDAY]->(day2015_10_1)-[:NEXTDAY]->(day2015_10_2)-[:NEXTDAY]->(day2015_10_3)-[:NEXTDAY]->(day2015_10_4)-[:NEXTDAY]->(day2015_10_5)-[:NEXTDAY]->(day2015_10_6)-[:NEXTDAY]->(day2015_10_7)-[:NEXTDAY]->(day2015_10_8)-[:NEXTDAY]->(day2015_10_9)-[:NEXTDAY]->(day2015_10_10)-[:NEXTDAY]->(day2015_10_11)-[:NEXTDAY]->(day2015_10_12)-[:NEXTDAY]->(day2015_10_13)-[:NEXTDAY]->(day2015_10_14)-[:NEXTDAY]->(day2015_10_15)-[:NEXTDAY]->(day2015_10_16)-[:NEXTDAY]->(day2015_10_17)-[:NEXTDAY]->(day2015_10_18)-[:NEXTDAY]->(day2015_10_19)-[:NEXTDAY]->(day2015_10_20)-[:NEXTDAY]->(day2015_10_21)-[:NEXTDAY]->(day2015_10_22)-[:NEXTDAY]->(day2015_10_23)-[:NEXTDAY]->(day2015_10_24)-[:NEXTDAY]->(day2015_10_25)-[:NEXTDAY]->(day2015_10_26)-[:NEXTDAY]->(day2015_10_27)-[:NEXTDAY]->(day2015_10_28)-[:NEXTDAY]->(day2015_10_29)-[:NEXTDAY]->(day2015_10_30)-[:NEXTDAY]->(day2015_10_31)-[:NEXTDAY]->(day2015_11_1)-[:NEXTDAY]->(day2015_11_2)-[:NEXTDAY]->(day2015_11_3)-[:NEXTDAY]->(day2015_11_4)-[:NEXTDAY]->(day2015_11_5)-[:NEXTDAY]->(day2015_11_6)-[:NEXTDAY]->(day2015_11_7)-[:NEXTDAY]->(day2015_11_8)-[:NEXTDAY]->(day2015_11_9)-[:NEXTDAY]->(day2015_11_10)-[:NEXTDAY]->(day2015_11_11)-[:NEXTDAY]->(day2015_11_12)-[:NEXTDAY]->(day2015_11_13)-[:NEXTDAY]->(day2015_11_14)-[:NEXTDAY]->(day2015_11_15)-[:NEXTDAY]->(day2015_11_16)-[:NEXTDAY]->(day2015_11_17)-[:NEXTDAY]->(day2015_11_18)-[:NEXTDAY]->(day2015_11_19)-[:NEXTDAY]->(day2015_11_20)-[:NEXTDAY]->(day2015_11_21)-[:NEXTDAY]->(day2015_11_22)-[:NEXTDAY]->(day2015_11_23)-[:NEXTDAY]->(day2015_11_24)-[:NEXTDAY]->(day2015_11_25)-[:NEXTDAY]->(day2015_11_26)-[:NEXTDAY]->(day2015_11_27)-[:NEXTDAY]->(day2015_11_28)-[:NEXTDAY]->(day2015_11_29)-[:NEXTDAY]->(day2015_11_30)-[:NEXTDAY]->(day2015_11_31)-[:NEXTDAY]->(day2015_12_1)-[:NEXTDAY]->(day2015_12_2)-[:NEXTDAY]->(day2015_12_3)-[:NEXTDAY]->(day2015_12_4)-[:NEXTDAY]->(day2015_12_5)-[:NEXTDAY]->(day2015_12_6)-[:NEXTDAY]->(day2015_12_7)-[:NEXTDAY]->(day2015_12_8)-[:NEXTDAY]->(day2015_12_9)-[:NEXTDAY]->(day2015_12_10)-[:NEXTDAY]->(day2015_12_11)-[:NEXTDAY]->(day2015_12_12)-[:NEXTDAY]->(day2015_12_13)-[:NEXTDAY]->(day2015_12_14)-[:NEXTDAY]->(day2015_12_15)-[:NEXTDAY]->(day2015_12_16)-[:NEXTDAY]->(day2015_12_17)-[:NEXTDAY]->(day2015_12_18)-[:NEXTDAY]->(day2015_12_19)-[:NEXTDAY]->(day2015_12_20)-[:NEXTDAY]->(day2015_12_21)-[:NEXTDAY]->(day2015_12_22)-[:NEXTDAY]->(day2015_12_23)-[:NEXTDAY]->(day2015_12_24)-[:NEXTDAY]->(day2015_12_25)-[:NEXTDAY]->(day2015_12_26)-[:NEXTDAY]->(day2015_12_27)-[:NEXTDAY]->(day2015_12_28)-[:NEXTDAY]->(day2015_12_29)-[:NEXTDAY]->(day2015_12_30)-[:NEXTDAY]->(day2015_12_31)

CREATE
    (event1:Event{id:"1", name:"Evt1", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_1_12)-[:VALUE]->(event1),
    (event2:Event{id:"2", name:"Evt2", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_1_27)-[:VALUE]->(event2),
    (event3:Event{id:"3", name:"Evt3", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_1_18)-[:VALUE]->(event3),
    (event4:Event{id:"4", name:"Evt4", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_2_13)-[:VALUE]->(event4),
    (event5:Event{id:"5", name:"Evt5", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_2_7)-[:VALUE]->(event5),
    (event6:Event{id:"6", name:"Evt6", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_2_2)-[:VALUE]->(event6),
    (event7:Event{id:"7", name:"Evt7", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_3_18)-[:VALUE]->(event7),
    (event8:Event{id:"8", name:"Evt8", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_3_7)-[:VALUE]->(event8),
    (event9:Event{id:"9", name:"Evt9", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_3_15)-[:VALUE]->(event9),
    (event10:Event{id:"10", name:"Evt10", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_4_23)-[:VALUE]->(event10),
    (event11:Event{id:"11", name:"Evt11", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_4_16)-[:VALUE]->(event11),
    (event12:Event{id:"12", name:"Evt12", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_4_6)-[:VALUE]->(event12),
    (event13:Event{id:"13", name:"Evt13", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_5_2)-[:VALUE]->(event13),
    (event14:Event{id:"14", name:"Evt14", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_5_18)-[:VALUE]->(event14),
    (event15:Event{id:"15", name:"Evt15", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_5_25)-[:VALUE]->(event15),
    (event16:Event{id:"16", name:"Evt16", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_6_28)-[:VALUE]->(event16),
    (event17:Event{id:"17", name:"Evt17", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_6_13)-[:VALUE]->(event17),
    (event18:Event{id:"18", name:"Evt18", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_6_7)-[:VALUE]->(event18),
    (event19:Event{id:"19", name:"Evt19", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_7_1)-[:VALUE]->(event19),
    (event20:Event{id:"20", name:"Evt20", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_7_5)-[:VALUE]->(event20),
    (event21:Event{id:"21", name:"Evt21", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_7_4)-[:VALUE]->(event21),
    (event22:Event{id:"22", name:"Evt22", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_8_3)-[:VALUE]->(event22),
    (event23:Event{id:"23", name:"Evt23", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_8_13)-[:VALUE]->(event23),
    (event24:Event{id:"24", name:"Evt24", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_8_14)-[:VALUE]->(event24),
    (event25:Event{id:"25", name:"Evt25", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_9_15)-[:VALUE]->(event25),
    (event26:Event{id:"26", name:"Evt26", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_9_2)-[:VALUE]->(event26),
    (event27:Event{id:"27", name:"Evt27", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_9_24)-[:VALUE]->(event27),
    (event28:Event{id:"28", name:"Evt28", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_10_28)-[:VALUE]->(event28),
    (event29:Event{id:"29", name:"Evt29", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_10_27)-[:VALUE]->(event29),
    (event30:Event{id:"30", name:"Evt30", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_10_12)-[:VALUE]->(event30),
    (event31:Event{id:"31", name:"Evt31", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_11_11)-[:VALUE]->(event31),
    (event32:Event{id:"32", name:"Evt32", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_11_9)-[:VALUE]->(event32),
    (event33:Event{id:"33", name:"Evt33", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_11_5)-[:VALUE]->(event33),
    (event34:Event{id:"34", name:"Evt34", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_12_2)-[:VALUE]->(event34),
    (event35:Event{id:"35", name:"Evt35", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_12_3)-[:VALUE]->(event35),
    (event36:Event{id:"36", name:"Evt36", time:"time", latitude:"latitude", longitude:"longitude", mag:"mag", place:"place"})-[:OCCURRED]->(day2015_12_13)-[:VALUE]->(event36)



http://neo4j.com/docs/stable/cypher-cookbook-path-tree.html


MATCH startPath=(root:TimeRoot)-[:`2015`]->()-[:`1`]->()-[:`1`]->(startLeaf),
  endPath=(root)-[:`2015`]->()-[:`12`]->()-[:`31`]->(endLeaf),
  valuePath=(startLeaf)-[:NEXTDAY*0..]->(middle)-[:NEXTDAY*0..]->(endLeaf),
  vals=(middle)-[:VALUE]->(event)
RETURN event.name
ORDER BY event.name ASC



http://earthquake.usgs.gov/earthquakes/eventpage/ak11690463#general_summary




http://www.markhneedham.com/blog/2014/04/19/neo4j-cypher-creating-a-time-tree-down-to-the-day/

WITH range(2011, 2014) AS years, range(1,12) as months
FOREACH(year IN years |
  MERGE (y:Year {year: year})
  FOREACH(month IN months |
    CREATE (m:Month {month: month})
    MERGE (y)-[:HAS_MONTH]->(m)
    FOREACH(day IN (CASE
                      WHEN month IN [1,3,5,7,8,10,12] THEN range(1,31)
                      WHEN month = 2 THEN
                        CASE
                          WHEN year % 4 <> 0 THEN range(1,28)
                          WHEN year % 100 <> 0 THEN range(1,29)
                          WHEN year % 400 <> 0 THEN range(1,29)
                          ELSE range(1,28)
                        END
                      ELSE range(1,30)
                    END) |
      CREATE (d:Day {day: day})
      MERGE (m)-[:HAS_DAY]->(d))))

WITH *

MATCH (year:Year)-[:HAS_MONTH]->(month)-[:HAS_DAY]->(day)
WITH year,month,day
ORDER BY year.year, month.month, day.day
WITH collect(day) as days
FOREACH(i in RANGE(0, length(days)-2) |
    FOREACH(day1 in [days[i]] |
        FOREACH(day2 in [days[i+1]] |
            CREATE UNIQUE (day1)-[:NEXT]->(day2))))

