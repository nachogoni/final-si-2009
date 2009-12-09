drop table siniestro;
drop table pagos;
drop table items_asegurados;
drop table vehiculo;
drop table clientes;
drop table zonas_de_riesgo;
drop table localidades;
drop table provincias;
drop table paquete;
drop table tipo_vehiculo;
drop table agentes;
drop table productor;
drop table segmento;
drop table canales;

create table canales (
	canal_id	int not null,
	nombre_canal	char(255),
	 	primary key (canal_id)
);

create table segmento (
	numero_seg	int not null,
	nombre_seg	char(255),
	canal_id	int,
	 	primary key (numero_seg),
		foreign key (canal_id) references canales(canal_id)
);

create table productor (
	flia	int not null,
	nombre	char(255),
	 	primary key (flia)
);

create table agentes (
	soc	int not null,
	flia	int,
	nombre char(255),
	estado char(1),
	fec_alta int,
	 	primary key (soc),
		foreign key (flia) references productor(flia)
);

create table tipo_vehiculo (
	vehtipcod	char(2) not null,
	vehtipo	char(30),
	 	primary key (vehtipcod)
);

create table paquete (
	cod_pqte	char(50) not null,
	pqte	char(32),
	 	primary key (pqte)
);

create table provincias (
	prv	int not null,
	provincia	char(30),
	 	primary key (prv)
);

create table localidades (
	loc	int not null,
	prv	int not null,
	localidad	char(30),
	 	primary key (loc,prv),
		foreign key (prv) references provincias(prv)
);

create table zonas_de_riesgo (
	loc	int not null, 
	prv	int not null,
	zr_autos	int,
	 	primary key (loc,prv),
		foreign key (loc,prv) references localidades(loc,prv)

);

create table clientes (
	poliza	int not null,
	loc	int,
	prv	int,
	cpostal	int,
	edad	int,
	sexo	char(1),
	estdiv	char(30),
	reest	int,
	 	primary key (poliza),
		foreign key (loc,prv) references localidades(loc,prv)
);

create table vehiculo (
	antig	int not null,
	tauto	char(8) not null,
	marca	char(30),
	modelo	char(30),
	vehtipcod	char(2),
	 	primary key (antig,tauto),
		foreign key (vehtipcod) references tipo_vehiculo(vehtipcod)
);

create table items_asegurados (
	poliza	int not null,
	veh	int not null,
	flota	int,
	ref	char(1),
	uen	char(1),
	segmento_id	int,
	ofi	char(2),
	soc	int,
	cod_pqte	char(50),
	sumaca	int,
	antig	int,
	tauto	char(8),
	vehuso	char(30),
	sumainfo	float,
	dias	int,
	primarc 	float,
	primaca	float,
	prima 	float,
	deemi 	float,
	rcadm	float, 
	rcfin	float, 
	bonif	float,
	premio	float,  
	fecpriemis	float,
	 	primary key (poliza,veh),
		foreign key (poliza) references clientes(poliza),
		foreign key (antig,tauto) references vehiculo(antig,tauto),
		foreign key (segmento_id) references segmento(numero_seg),
		foreign key (soc) references agentes(soc)
);



create table pagos (
	poliza	int not null,
	veh	int not null,
	importe	float,
	fecha	int not null,
	 	primary key (poliza,veh,fecha),
		foreign key (poliza,veh) references items_asegurados(poliza,veh)
);



create table siniestro (
	poliza	int not null,
	veh	int not null,
	cnstr	int,
	mtstr	float,
	 	primary key (poliza,veh),
		foreign key (poliza,veh) references items_asegurados(poliza,veh)
);

	
















