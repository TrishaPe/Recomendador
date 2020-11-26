Create table `sexos`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `sexos` (`id`, `nombre`) VALUES
  (1, 'Masculino'),
  (2, 'Femenino'),
  (3, 'Indiferente')
  ;

create table `intereses`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
);

INSERT INTO `intereses` (`id`, `nombre`, `imagen`) VALUES
  (1, 'Manualidades', 'manualidades.png'),
  (2, 'Animales', 'animales.png'),
  (3, 'Viajes', 'viajes.png'),
  (4, 'Ropa', 'ropa.png'),
  (5, 'Ciencia', 'ciencia.png'),
  (6, 'Ordenador', 'ordenador.png'),
  (7, 'Electrónicos', 'electrónicos.png'),
  (8, 'Libros', 'libros.png'),
  (9, 'Cine', 'cine.png'),
  (10, 'Juegos', 'juegos.png')
  ;

Create table `animal_tipo`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `animal_tipo` (`id`, `nombre`) VALUES
  (1, 'Perro'),
  (2, 'Gato'),
  (3, 'Conejo'),
  (4, 'Pájaro'),
  (5, 'Caballo'),
  (6, 'Reptil'),
  (7, 'Araña')
  ;

Create table `generos`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `generos` (`id`, `nombre`) VALUES
  (1, 'Romance'),
  (2, 'Aventura'),
  (3, 'Terror'),
  (4, 'Fantasía'),
  (5, 'Ciencia-ficción'),
  (6, 'Suspense'),
  (7, 'Comedia'),
  (8, 'Histórico'),
  (9, 'No Ficción'),
  (10, 'Poesía'),
  (11, 'Realismo'),
  (12, 'Realismo Mágico'),
  (13, 'Misterio'),
  (14, 'Policíaca'),
  (15, 'Accesorios'),
  ;

create table `juego_tipos`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `juego_tipos` (`id`, `nombre`) VALUES
  (1, 'Acción'),
  (2, 'Aventura'),
  (3, 'Indie'),
  (4, 'RPG'),
  (5, 'Disparos'),
  (6, 'Simulación'),
  (7, 'Deporte/Carrera'),
  (8, 'Estrategia'),
  (9, 'Accesorios')
  ;

Create table `articulos`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` bigint(20) UNSIGNED NOT NULL,
  `edad_in` bigint(20) UNSIGNED NOT NULL,
  `edad_fin` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enlace` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `articulos` (`id`, `nombre`, `sexo`, `edad_in`, `edad_fin`, `imagen`, `enlace`) VALUES
  (1, 'Juego de 12 pinceles', 3, 5, 70, 'pinceles.png', 'https://www.amazon.es/ARTIFY-pinceles-acuarela-principiantes-profesionales/dp/B08GSKJ8QP/ref=sr_1_1_sspa?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=juego+pinceles&qid=1605896029&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyQjMzUldRUE1VM0hJJmVuY3J5cHRlZElkPUEwMDI1NDAzRlBFUldHUkRDS1QxJmVuY3J5cHRlZEFkSWQ9QTAxODUzMjUxWDBUVDhPVzk5NFJSJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (2, 'Zapatos de Punta Satén para Ballet con Puntera de Gel de Silicona', 2, 18, 70, 'zapatosbaile.png', 'https://www.amazon.es/Zapatos-Zapatillas-Puntera-Silicona-Mujeres/dp/B07HKBQ2TK/ref=sr_1_4_sspa?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=zapatos+ballet&qid=1605896259&sr=8-4-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExNjkzVk9SWjdVWDBIJmVuY3J5cHRlZElkPUEwMzY5MTcxUlZCS04xWkpVVlVaJmVuY3J5cHRlZEFkSWQ9QTAyODMwMzRISkM4NUNVQTUyVzImd2lkZ2V0TmFtZT1zcF9hdGYmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (3, 'Súper Kit de Ciencias 6 en 1', 1, 8, 12, 'kitquimica.png', 'https://www.amazon.es/Science4you-S%C3%BAper-Ciencias-Stem-Multicolor-80002186/dp/B07RX7YV3B/ref=sr_1_7?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2LD9YG3K9O8G6&dchild=1&keywords=kit+quimica&qid=1605896584&sprefix=kit+quimica%2Caps%2C167&sr=8-7=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (4, 'Woolen Bloom Jersey de Punto Mujer', 2, 20, 70, 'jersey.png', 'https://www.amazon.es/Woolen-Bloom-Camisetas-Pull-Over-Primavera/dp/B0872VGK9C/ref=sr_1_6?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3DLEXPXZ5FG5J&dchild=1&keywords=jersey+punto+mujer&qid=1605896746&sprefix=jersey+pu%2Caps%2C180&sr=8-6=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (5, 'Pulsera antiestática', 1, 14, 70, 'pulseraestatica.png', 'https://www.amazon.es/SODIAL-TM-Pulsera-Antiestatica-Munequera/dp/B00C3DC62W/ref=sr_1_1_sspa?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=5MQIEO42QXYZ&dchild=1&keywords=pulsera+antiestatica&qid=1605896892&sprefix=pulsera+antiest%2Caps%2C177&sr=8-1-spons&psc=1&smid=A9DEKVHK1XMRT&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExQTdSNUY0RFdBUzZKJmVuY3J5cHRlZElkPUEwNzExNzk3MTlZS0NZUUwwVDE4WCZlbmNyeXB0ZWRBZElkPUEwMTUwMDM2MzlXNDE0SEhYSUdEMiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRyd'),
  (6, 'Pawhut Árbol para Gatos Rascador', 3, 5, 70, 'arbolgatos.png', 'https://www.amazon.es/PawHut-Rascador-Plataforma-Escalera-30x55x96cm/dp/B07MND1HQR?ref_=Oct_s9_apbd_orecs_hd_bw_bDc5z5D&pf_rd_r=YCCKKS4KYG2TBQKNQCD2&pf_rd_p=096bb90e-42fe-534f-a4ae-135f0affbe20&pf_rd_s=merchandised-search-8&pf_rd_t=BROWSE&pf_rd_i=12472654031=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (7, 'PowerA Mando con Cable con licencia oficial para Xbox', 1, 12, 40, 'controlador.png', 'https://www.amazon.es/Controlador-PowerA-licencia-oficial-Windows/dp/B07NPY1YT5/ref=sr_1_6?dchild=1&keywords=controlador+xbox&qid=1605897325&sr=8-6=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (8, 'El Hobbit - J.R.R. Tolkien', 1, 12, 70, 'hobbit_tolkien.png', 'https://www.amazon.es/El-Hobbit-ilustrado-Ilustrado-Biblioteca/dp/8445005901/ref=sr_1_3?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=F4MR4129M0V2&dchild=1&keywords=el+hobbit+libro&qid=1605897473&sprefix=el+hobbit%2Caps%2C199&sr=8-3=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (9, 'Gafas VR Compatible con iPhone y Android', 1, 24, 70, 'gafas3d.png', 'https://www.amazon.es/Gafas-iPhone-Android-Realidad-Virtual/dp/B01HA72TB8/ref=sr_1_2_sspa?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=gafas+3D&qid=1605897530&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExOE1OWTRVSElOWjhYJmVuY3J5cHRlZElkPUEwNTIxMTQ1M0k0VTNLMzBJQU1SWiZlbmNyeXB0ZWRBZElkPUEwOTA0NjY0MU9ZODhPM0EzWjhaSCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21'),
  (10, 'Auriculares plegables inalámbricos con cancelación', 1, 24, 70, 'cascos.png', 'https://www.amazon.es/Auriculares-Inal%C3%A1mbricos-Cancelaci%C3%B3n-Srhythm-NC35/dp/B07WHCB57L/ref=sr_1_14?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1TWHQ8C5UEN4D&dchild=1&keywords=cascos%2Bbluetooth%2Bnoise%2Bcancelling&qid=1605897682&sprefix=cascos%2Bbluetooth%2Bnoi%2Caps%2C168&sr=8-14&th=1=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21');
  (11, 'Robot Aspirador Conga 1090', 2, 20, 70, 'conga.png', 'https://www.amazon.es/Cecotec-Conga-1090-Connected-Inteligente/dp/B088FQXTCQ/ref=sr_1_1?dchild=1&m=A1AT7YVPFBWXBL&pf_rd_i=95aab6d3&pf_rd_m=A1AT7YVPFBWXBL&pf_rd_p=82b6cc2b-1174-485f-9254-647582fae664&pf_rd_r=MRFSWRPTVSXVSG80ZTY1&pf_rd_s=slot-1&pf_rd_t=0&qid=1606066808&refinements=p_6%3AA1AT7YVPFBWXBL&s=kitchen&smid=A1AT7YVPFBWXBL&sr=1-1=1&t=carlosmonzon-21&tracking_id=carlosmonzon-21')
  ;

CREATE TABLE `articulo_interes`(
  `id_articulo` bigint(20) UNSIGNED NOT NULL,
  `id_interes` bigint(20) UNSIGNED NOT NULL,
  `interes_detalle` bigint(20) UNSIGNED DEFAULT NULL
);

INSERT INTO `articulo_interes` (`id_articulo`, `id_interes`, `interes_detalle`) VALUES
  (1, 1, null),
  (2, 3, null),
  (3, 1, null),
  (3, 5, null),
  (4, 4, null),
  (5, 1, null),
  (5, 7, null),
  (6, 2, 2),
  (7, 10, null),
  (8, 8, 2),
  (8, 8, 4),
  (9, 9, 8),
  (10, 6, null),
  (10, 10, null)
  ;


--
-- Índices
--

ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `elementos`
  ADD PRIMARY KEY (`id`);

alter table `intereses`
  ADD PRIMARY KEY (`id`);

alter table `animal_tipo`
  ADD PRIMARY KEY (`id`);

alter table `generos`
  ADD PRIMARY KEY (`id`);

alter table `sexos`
  ADD PRIMARY KEY (`id`);

alter table `articulos`
  ADD PRIMARY KEY (`id`);

alter table `juego_tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT

ALTER TABLE `paginas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `elementos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `intereses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `animal_tipo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `generos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `sexos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `articulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `juego_tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones
--

ALTER TABLE `page_elements`
  ADD CONSTRAINT `page_elements_paginas_foreign` FOREIGN KEY (`page_id`) REFERENCES `paginas` (`id`),
  ADD CONSTRAINT `page_elements_elementos_foreign` FOREIGN KEY (`element_id`) REFERENCES `elementos` (`id`)
;


ALTER TABLE `articulo_interes`
  ADD CONSTRAINT `articulo_interes_articulos_foreign` FOREIGN KEY (`id_articulo`) REFERENCES `articulos` (`id`),
  ADD CONSTRAINT `articulo_interes_intereses_foreign` FOREIGN KEY (`id_interes`) REFERENCES `intereses` (`id`)
;
