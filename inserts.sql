INSERT INTO Usuario VALUES("giorocor","Giovanny","Rodriguez","giovanny@hotmail.com","123456789","","");
INSERT INTO Usuario VALUES("jazamo","Javier","Zamorano","jaza23@outlook.es","123456789","","");
INSERT INTO Usuario VALUES("orlares","Orlando","Lopez","orlando1995@gmail.com","123456789","","");
INSERT INTO Usuario VALUES("valarias","Valeria","Arias","valeri1@hotmail.com","123456789","","");
INSERT INTO Usuario VALUES("lumar","Luisa","Martinez","lumartinez5@gmail.com","123456789","","");
INSERT INTO Usuario VALUES("andregar","Andres","Ospina","andruw15@hotmail.com","123456789","","");
INSERT INTO Usuario VALUES("lulo","Luis","Preciado","lucho25@gmail.com","123456789","","");
INSERT INTO Usuario VALUES("homersi","Homero","Simsomp","homerito45@gmail.com","123456789","","");
INSERT INTO Usuario VALUES("kasan","Katerine","Robles","katerrible@hotmail.com","123456789","","");
INSERT INTO Usuario VALUES("epe","Erika","Perez","kika24@hotmail.com","123456789","","");

INSERT INTO Editorial VALUES(0,"Alianza Editorial");
INSERT INTO Editorial VALUES(0,"Editorial Planeta");
INSERT INTO Editorial VALUES(0,"Cátedra");
INSERT INTO Editorial VALUES(0,"Mondadori");
INSERT INTO Editorial VALUES(0,"Ediciones Siruela");
INSERT INTO Editorial VALUES(0,"Blackie Books");
INSERT INTO Editorial VALUES(0,"Impedimenta");
INSERT INTO Editorial VALUES(0,"Malpaso");
INSERT INTO Editorial VALUES(0,"Nordica");
INSERT INTO Editorial VALUES(0,"Austral");

INSERT INTO Autor VALUES(1,"Lesley-Ann","Jones");
INSERT INTO Autor VALUES(2,"Woody","Allen");
INSERT INTO Autor VALUES(3,"Amin","Maalouf");
INSERT INTO Autor VALUES(4,"Marcos","Chicot");
INSERT INTO Autor VALUES(5,"Dan","Brown");
INSERT INTO Autor VALUES(6,"Stella","Gibbons");
INSERT INTO Autor VALUES(7,"Thomas","Coraghessan Boyle");
INSERT INTO Autor VALUES(8,"Oscar","Wilde");
INSERT INTO Autor VALUES(9,"Pablo","Neruda");
INSERT INTO Autor VALUES(10,"Franz","Kafka");
INSERT INTO Autor VALUES(11,"William"," Shakespeare");

INSERT INTO Libro VALUES(0,"Hero: David Bowie","9788491047889","Biografía: arte y espectáculo","","",552,"",0,"giorocor",1,1);
INSERT INTO Libro VALUES(0,"A propósito de nada","9788491819950","Autobiografía, Biografía","","",440,"",0,"jazamo",1,2);
INSERT INTO Libro VALUES(0,"Nuestros inesperados hermanos","9788413621210","Ficción de aventuras","","",296,"",0,"orlares",1,3);
INSERT INTO Libro VALUES(0,"El asesinato de Platón","9788408236702","Novela contemporánea | General Novela histórica | Antigua Grecia","","",944,"",0,"valarias",2,4);
INSERT INTO Libro VALUES(0,"El código Da Vinci","9789584240323","Novela contemporánea | General Novela","","",624,"",0,"valarias",2,5);
INSERT INTO Libro VALUES(0,"La hija de Robert Poste","9788493760137","Novela, Ciencia ficción,","","",368,"",0,"andregar",7,6);
INSERT INTO Libro VALUES(0,"Los Terranautas","9788417553722","Ciencia ficción","","",568,"",0,"andregar",7,7);
INSERT INTO Libro VALUES(0,"Cuentos de Oscar Wilde","9788408239420","Novela literaria | Relatos","","",160,"",0,"homersi",10,8);
INSERT INTO Libro VALUES(0,"Cien sonetos de amor","9788432237812","Poesía | General poesía","","",144,"",0,"kasan",10,9);
INSERT INTO Libro VALUES(0,"La metamorfosis","9788467043648","Novela literaria | Narrativa literaria clásicos","","",128,"",0,"epe",10,10);
INSERT INTO Libro VALUES(0,"Otelo","9788467058772","Teatro","","",160,"",0,"giorocor",10,11);

INSERT INTO Prestamo VALUES(0,"Buen libro",'2021-03-20','2021-02-21',"valarias",1);
INSERT INTO Prestamo VALUES(0,"Excelente",'2021-03-20','2021-02-22',"lumar",2);
INSERT INTO Prestamo VALUES(0,"Muy aburrido",'2021-03-21','2021-02-23',"andregar",3);

INSERT INTO Mensajes VALUES(0,"homersi","lumar");
INSERT INTO Mensajes VALUES(0,"kasan","andregar");
INSERT INTO Mensajes VALUES(0,"epe","lulo");


DELETE FROM Editorial WHERE nombre="Malpaso";
DELETE FROM Usuario WHERE username="giorocor";
UPDATE Usuario SET username="valarias5" where username="valarias";
select * from Libro;
SELECT COUNT(titulo) FROM Libro;
SELECT * FROM Libro WHERE (paginas BETWEEN 100 AND 500)  AND NOT editorial IN(2);
