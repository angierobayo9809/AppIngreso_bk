CREATE TABLE Pais(
idPais int not null primary key,
nombre varchar(100) not null,
codigo varchar(2) not null 
);

CREATE TABLE Ciudad(
idCiudad bigint identity(1,1) primary key,
idPais int not null,
nombre varchar(100) not null,
latitud decimal(11,5) not null,
longitud decimal(11,5) not null,
constraint fk_ciudad_idPais FOREIGN KEY (idPais) REFERENCES pais (idPais)
);

-- PAIS
INSERT INTO pais(idPais,nombre,codigo) VALUES(57,'Colombia','CO');
INSERT INTO pais(idPais,nombre,codigo) VALUES(1,'Estados Unidos','US');
INSERT INTO pais(idPais,nombre,codigo) VALUES(49,'Alemania','DE');
INSERT INTO pais(idPais,nombre,codigo) VALUES(54,'Argentina','AR');
INSERT INTO pais(idPais,nombre,codigo) VALUES(55,'Brasil','BR');
INSERT INTO pais(idPais,nombre,codigo) VALUES(56,'Chile','CL');
INSERT INTO pais(idPais,nombre,codigo) VALUES(2,'Canadá','CA');
INSERT INTO pais(idPais,nombre,codigo) VALUES(33,'Francia','FR');
INSERT INTO pais(idPais,nombre,codigo) VALUES(39,'Italia','IT');
INSERT INTO pais(idPais,nombre,codigo) VALUES(52,'México','MX');
INSERT INTO pais(idPais,nombre,codigo) VALUES(51,'Perú','PE');
INSERT INTO pais(idPais,nombre,codigo) VALUES(3,'Puerto rico','PR');
INSERT INTO pais(idPais,nombre,codigo) VALUES(507,'Panamá','PA');
INSERT INTO pais(idPais,nombre,codigo) VALUES(44,'Reino unido','GB');
INSERT INTO pais(idPais,nombre,codigo) VALUES(7,'Rusia','RU');
INSERT INTO pais(idPais,nombre,codigo) VALUES(66,'Tailandia','TH');
INSERT INTO pais(idPais,nombre,codigo) VALUES(90,'Turquía','TR');
INSERT INTO pais(idPais,nombre,codigo) VALUES(58,'Venezuela','VE');

select * from ciudad
-- CIUDAD
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Bogotá',4.60971, -74.08175);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Cali',3.43722, -76.5225);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Medellín',6.25184, -75.56359);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Barranquilla',10.96854, -74.78132);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Cartagena de Indias',10.39972, -75.51444);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Cúcuta',7.89391, -72.50782);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Bucaramanga',7.12539, -73.1198);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Pereira',4.81333, -75.69611);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Santa Marta',11.24079, -74.19904);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Ibagué',4.43889, -75.23222);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Bello',6.33732, -75.55795);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Pasto',1.21361, -77.28111);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Manizales',5.06889, -75.51738);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Neiva',2.9273, -75.28189);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Soledad',10.91843, -74.76459);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Villavicencio',4.142, -73.62664);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Armenia',4.53389, -75.68111);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Soacha',4.57937, -74.21682);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Valledupar',10.46314, -73.25322);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (57,'Itagüí',6.18461, -75.59913);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Nueva York',40.71427, -74.00597);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Los Ángeles',34.05223, -118.24368);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Chicago',41.85003, -87.65005);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Houston',29.76328, -95.36327);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Philadelphia',39.95233, -75.16379);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Phoenix',33.44838, -112.07404);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'San Antonio',29.42412, -98.49363);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'San Diego',32.71571, -117.16472);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Dallas',32.78306, -96.80667);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Brooklyn',40.6501, -73.94958);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Queens',40.68149, -73.83652);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'San Jose',37.33939, -121.89496);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Austin',30.26715, -97.74306);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Jacksonville',30.33218, -81.65565);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'San Francisco',37.77493, -122.41942);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Columbus',39.96118, -82.99879);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Fort Worth',32.72541, -97.32085);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Indianapolis',39.76838, -86.15804);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Charlotte',35.22709, -80.84313);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (1,'Manhattan',40.78343, -73.96625);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (49,'Berlina',52.52437, 13.41053);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Buenos Aires',-34.61315, -58.37723);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Córdoba',-31.4135, -64.18105);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Rosario',-32.94682, -60.63932);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Mendoza',-32.89084, -68.82717);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'San Miguel de Tucumán',-26.82414, -65.2226);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'La Plata',-34.92145, -57.95453);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Mar del Plata',-38.00042, -57.5562);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Salta',-24.7859, -65.41166);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Santa Fe',-31.64881, -60.70868);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'San Juan',-31.5375, -68.53639);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Resistencia',-27.46056, -58.98389);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Santiago del Estero',-27.79511, -64.26149);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Posadas',-27.36708, -55.89608);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'San Salvador de Jujuy',-24.19457, -65.29712);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Bahía Blanca',-38.71959, -62.27243);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Paraná',-31.73271, -60.52897);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Merlo',-34.66627, -58.72927);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'José C. Paz',-34.51541, -58.76813);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Quilmes',-34.72904, -58.26374);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (54,'Pilar',-34.45866, -58.9142);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (55,'Sao Paulo',-23.5475, -46.63611);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (55,'Rio de Janeiro',-22.90642, -43.18223);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (55,'Salvador',-12.97111, -38.51083);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Santiago',-33.45694, -70.64827);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Puente Alto',-33.61169, -70.57577);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Antofagasta',-23.65236, -70.3954);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Viña del Mar',-33.02457, -71.55183);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Valparaíso',-33.036, -71.62963);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Talcahuano',-36.72494, -73.11684);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'San Bernardo',-33.59217, -70.6996);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Temuco',-38.73965, -72.59842);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Iquique',-20.21326, -70.15027);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Concepción',-36.82699, -73.04977);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Rancagua',-34.17083, -70.74444);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'La Pintana',-33.58331, -70.63419);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (56,'Talca',-35.4264, -71.65542);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'toronto',43.70011, -79.4163);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Ottawa',45.41117, -75.69812);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Montréal',45.50884, -73.58781);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Edmonton',53.55014, -113.46871);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Mississauga',43.5789, -79.6583);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Winnipeg',49.8844, -97.14704);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'vancouver',49.24966, -123.11934);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'hamilton',43.25011, -79.84963);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Calgary',51.05011, -114.08529);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'brampton',43.68341, -79.76633);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Surrey',49.10635, -122.82509);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Lavalle',45.56995, -73.692);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'halifax',44.6464, -63.57291);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Londres',42.98339, -81.23304);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Oshawa',43.90012, -78.84957);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Okanagan',50.36386, -119.34997);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Victoria',48.4359, -123.35155);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Windsor',42.30008, -83.01654);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Quebec',46.81228, -71.21454);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (2,'Markham',43.86682, -79.2663);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (33,'París',48.85341, 2.3488);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (33,'Marsella',43.29695, 5.38107);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (33,'León',45.74846, 4.84671);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (33,'Tolosa',43.60426, 1.44367);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (33,'Una cuerda',43.70313, 7.26608);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (33,'Nantes',47.21725, -1.5533);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Roma',41.89193, 12.51133);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Milán',45.46427, 9.18951);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Nápoles',40.85216, 14.26811);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Turín',45.07049, 7.68682);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'palermo',38.13205, 13.33561);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Génova',44.40478, 8.94439);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Bolonia',44.49381, 11.33875);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (39,'Florencia',43.77925, 11.24626);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Ciudad de México',19.42847, -99.12766);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Iztapalapa',19.35529, -99.06224);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Guadalajara',20.66682, -103.39182);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Puebla',19.03793, -98.20346);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Tijuana',32.5027, -117.00371);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Monterrey',25.67507, -100.31847);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Ecatepec de Morelos',19.60492, -99.06064);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Chihuahua',28.63528, -106.08889);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Naucalpan de Juárez',19.47851, -99.23963);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Mérida',20.97537, -89.61696);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'San Luis',22.14982, -100.97916);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Hermosillo',29.1026, -110.97732);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Saltillo',25.42321, -101.0053);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Mexicali',32.62781, -115.45446);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Guadalupe',25.67678, -100.25646);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Paso del Norte',31.72024, -106.46084);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Cancún',21.17429, -86.84656);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Coyoacán',19.3467, -99.16174);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'León de los Aldama',21.12908, -101.67374);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (52,'Morelia',19.70078, -101.18443);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Lima',-12.04318, -77.02824);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Arequipa',-16.39889, -71.535);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Callao',-12.05659, -77.11814);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Trujillo',-8.11599, -79.02998);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Chiclayo',-6.77137, -79.84088);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Iquitos',-3.74912, -73.25383);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Huancayo',-12.06513, -75.20486);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Piura',-5.19449, -80.63282);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Chimbote',-9.08528, -78.57833);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (51,'Pucallpa',-8.37915, -74.55387);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'San Juan',18.46633, -66.10572);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Carolina',18.38078, -65.95739);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Ponce',18.01031, -66.62398);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Caguas',18.23412, -66.0485);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Mayagüez',18.20107, -67.13962);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Bayamón',18.39856, -66.15572);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Arecibo',18.47245, -66.71573);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Levittown',18.44995, -66.18156);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Las Piedras',18.18301, -65.86627);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'San Isidro',18.39217, -65.88544);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Corozal',18.34106, -66.31684);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'San Lorenzo',18.1894, -65.961);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'San Antonio',18.44884, -66.30267);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Moca',18.39467, -67.11324);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Santa Barbara',18.39356, -65.91878);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Salinas',17.97747, -66.29795);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Florida',18.36245, -66.56128);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Santo Domingo',18.0633, -66.7524);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'San José',18.39828, -66.25572);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (3,'Palmas',17.98719, -66.02544);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (507,'Panamá',8.9936, -79.51973);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Londres',51.50853, -0.12574);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Birmingham',52.48142, -1.89983);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Liverpool',53.41058, -2.97794);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Nottingham',52,9536);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Sheffield',53.38297, -1.4659);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Brístol',51.45523, -2.59665);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'glasgow',55.86515, -4.25763);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'leicester',52,6386);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'leeds',53.79648, -1.54785);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Cardiff',51,48);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (44,'Manchester',53.48095, -2.23743);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (7,'Moscú',55.75222, 37.61556);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (7,'San Petersburgo',59.93863, 30.31413);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (7,'Ekaterimburgo',56.8519, 60.6122);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (7,'Sámara',53.20007, 50.15);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (7,'Omsk',54.99244, 73.36859);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (7,'Kazán',55.78874, 49.12214);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (66,'Bangkok',13.75398, 100.50144);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (90,'Estambul',41.01384, 28.94966);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (58,'Caracas',10.48801, -66.87919);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (58,'Maracay',10.23535, -67.59113);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (58,'Valencia',10.16202, -68.00765);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (58,'Maracaibo',10.66663, -71.61245);
INSERT INTO ciudad (idPais,nombre,latitud,longitud) VALUES (58,'Barquisimeto',10.0647, -69.35703);

Create table historial (
id bigint identity(1,1) primary key,
ciudad varchar(100) not null,
datos nvarchar(max) not null,
fechaConsulta DateTime not null
);

