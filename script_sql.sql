

CREATE TABLE personnel
 
            (personnelId  NUMBER(20), 
 
             nom  CHAR(20),
 
             Naissance  DATE ,
 
             Heure_de_vol  NUMBER(20),
 
             type  CHAR(20)
 
);
 
CREATE TABLE Equipage 
 
            (VolId NUMBER(20), 
 
             PersonnelId NUMBER(20));
CREATE TABLE Avion

            (AvionId NUMBER(20),
 
             CompagnieId NUMBER(20),
 
              Nom CHAR(20), 
 
             Vitesse NUMBER(10), 
 
             Equipage NUMBER(20)); 
 
CREATE TABLE Vol
 
            (VolId NUMBER(20), 
 
             AvionId NUMBER(20),
 
             DestinationId NUMBER(20),
 
             Depart_date DATE);

CREATE TABLE Destination
 
           (DestinationId NUMBER(20), 
 
         ville CHAR(30),
 
          pays  VARCHAR2(30),
 
             distance  NUMBER(15));




ALTER TABLE avion
 
    Add capacite NUMBER(10);

alter table destination add decalage number(8,3);
alter table avion modify nom char(10) ;

alter table avion modify vitesse number(6) ;




alter table avion modify avionID not null;




alter table avion modify compagnieID, vitesse null ;
 



alter table avion modify compagnieID not null ;
 


alter table avion modify compagnieID not null;




alter table avion modify vitesse not null;

alter table avion modify compagnieID not null;



ALTER TABLE Vol 
MODIFY VolId NUMBER NOT NULL 
MODIFY AvionId NUMBER NOT NULL  
MODIFY DestinationId NUMBER NOT NULL;




ALTER TABLE Vol 
modify depart_date not null ;
 



ALTER TABLE Vol 
modify depart_date not null;




ALTER TABLE Equipage 
MODIFY VolId  NOT NULL 
MODIFY PersonnelId  NOT NULL ;




ALTER TABLE Destination 
MODIFY destinationID not null 
modify ville not null 
modify pays not null 
modify decalage not null 
modify distance not null;




alter table personnel  
modify personnelID not null 
modify nom not null 
modify naissance null 
modify heure_de_vol not null 
modify type not null ;




alter table personnel  
modify personnelID not null 
modify nom not null 
modify naissance not null 
modify heure_de_vol not null 
modify type not null ;



alter table personnel  
modify naissance date null;





alter table personnel  
modify personnelID not null 
modify nom not null 
modify type not null 
modify heure_de_vol not null;




ALTER TABLE Avion 
MODIFY AvionId NUMBER NOT NULL 
MODIFY CompagnieId NUMBER NOT NULL ;



ALTER TABLE Avion 
MODIFY capacite NUMBER NOT NULL 
MODIFY equipage NUMBER NOT NULL ;




ALTER TABLE Avion 
modify avionID primary key;




alter table personnel add primary key (personnelID) ;




alter table avion add primary key (avionID) ;




alter table vol add primary key (volid) ;




alter table destination add primary key (destination) ;




alter table destination add primary key (destinationID) ;


alter table destination add primary key (destinationID) ;




alter table equipage add primary key (volid,personnelid) ;



alter table equipage add primary key (volid,personnelid) ;



alter table vol
add foreign key ( avionid) reference avion(avionid);




alter table vol 
add constraint fr_avionid 
foreign key (avionid) reference avion(avionid);




ALTER TABLE vol 
ADD CONSTRAINT FK_avionid 
FOREIGN KEY (avionid) REFERENCES avion(avionid);





ALTER TABLE avion 
ADD CONSTRAINT FK_compagnieID 
FOREIGN KEY (compagnieid) REFERENCES compagnie(compagnieid);



ALTER TABLE equipage 
ADD CONSTRAINT FK_volid 
FOREIGN KEY (volid) REFERENCES vol(volid);



ALTER TABLE equipage 
ADD CONSTRAINT FK_personnelid 
FOREIGN KEY (personnelid) REFERENCES personnel(personnelid);




ALTER TABLE equipage 
DROP CONSTRAINT FK_personnelid;


ALTER TABLE equipage
DROP CONSTRAINT FK_volid;



ALTER TABLE equipage
ADD FOREIGN KEY (personnelid) REFERENCES Personnel(PersonnelID);


ALTER TABLE equipage
ADD FOREIGN KEY (volid) REFERENCES vol(volID);




ALTER TABLE vol
add FOREIGN KEY (avionid) REFERENCES avion(avionid);




ALTER TABLE vol 
drop constraint fk_avionid ;




ALTER TABLE vol
 
add 
 
FOREIGN KEY (avionid) REFERENCES avion(avionid);


ALTER TABLE vol 
 
add 
 
FOREIGN KEY (destinationID) REFERENCES destination(destinationID);
insert into destination values( 40 , 'londre' , ' UK' , 2500,0);
insert into destination values( 41 , 'newyork' , ' USA' , 250,9);
insert into destination values( 42 , 'brlin' , ' germany' , 450,1);
insert into destination values( 43 , 'rabat' , 'morocco' ,321,2);
insert into personnel VALUES( 223, 'MICHEL' ,TO_DATE('FEB 1, 1970', 'MON DD, YYYY'),421,'pilote');
insert into personnel VALUES ( 263, 'HUBERT' ,TO_DATE('feb 4, 1975', 'MON DD, YYYY'),211,'pilote');
insert into personnel VALUES( 105, 'COHEN' ,TO_DATE('FEB 3, 1972', 'MON DD, YYYY'),394,'pilote');
insert into personnel VALUES ( 302, 'SOPHIE' ,TO_DATE('AUT 6, 1985', 'MON DD, YYYY'),421,'hôtesse');
insert into avion VALUES( 292,1,'A320',431,4,350);
insert into avion VALUES( 111,2,'A220',340,6,400);
insert into avion VALUES( 300,3,'A110',550,5,150);
insert into avion VALUES( 301,4,'C331',601,8,10);
insert into vol VALUES(911,292,40,TO_DATE('AUG 12, 2022','MON DD,YYYY'));​

insert into vol VALUES(912,111,41,TO_DATE('AUG 13, 2022','MON DD,YYYY'));​

insert into vol VALUES(913,300,42,TO_DATE('AUG 17, 2022','MON DD,YYYY'));
    insert into vol VALUES(914,301,43,TO_DATE('AUG 12, 2022','MON DD,YYYY'));
insert into equipage values (913,105);
insert into equipage values (912,263);
insert into equipage values (911,223);
insert into equipage values (914,302);


CREATE TABLE reservation ( reservationid number(20) NOT NULL ,
     nom char(20) not null , prix number (10) not null ,
  reduction char(4) NOT NULL, volid NUMBER(20) NOT NULL);​


ALTER TABLE RESERVATION ADD PRIMARY KEY (RESERVATIONID);​
ALTER TABLE RESERVATION ADD FOREIGN KEY (VOLID) REFERENCES VOL(VOLID) ;
insert into reservation values (12,'hamza erraji' , 300, '0%',914);
insert into reservation values (13,'Tawfik' , 400, '2%',911);
insert into reservation values (14,'siham' ,900, '5%',912);
insert into reservation values (15,'morad' , 619, '0%',913);


    

