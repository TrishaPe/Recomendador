Create table `paginas`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `paginas` (`id`, `nombre`) VALUES
  (1, 'index')
  ;

Create table `elementos`(
    `id` bigint(20) UNSIGNED NOT NULL,
    `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `elementos` (`id`, `nombre`) VALUES
  (1, 'input')
  ;

Create table `page_elements`(
    `page_id` bigint(20) UNSIGNED NOT NULL,
    `element_id` bigint(20) UNSIGNED NOT NULL,
    `cantidad` bigint(20) UNSIGNED NOT NULL
);

INSERT INTO `page_elements` (`page_id`, `element_id`, `cantidad`) VALUES
  (1, 1, 5)
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
  (3, 'Horror'),
  (4, 'Fantasía'),
  (5, 'Ciencia-ficción'),
  (6, 'Acción'),
  (7, 'Comedia'),
  (8, 'Accesorios')
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

Create table `sexos`(
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
);

INSERT INTO `sexos` (`id`, `nombre`) VALUES
  (1, 'Masculino'),
  (2, 'Feminino'),
  (3, 'Indiferente')
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
  (1, 'Pinceles', 3, 5, 70, 'pinceles.png', 'https://www.amazon.com'),
  (2, 'Zapatos de baile', 2, 18, 70, 'zapatosbaile.png', 'https://www.amazon.com'),
  (3, 'Kit de química', 1, 8, 12, 'kitquimica.png', 'https://www.amazon.com'),
  (4, 'Jersey de punta', 2, 20, 70, 'jersey.png', 'https://www.amazon.com'),
  (5, 'Pulsera antiestática', 1, 14, 70, 'pulseraestatica.png', 'https://www.amazon.com'),
  (6, 'Ratón con chuches', 3, 5, 70, 'raton.png', 'https://www.amazon.com'),
  (7, 'Controlador Xbox', 1, 12, 40, 'controlador.png', 'https://www.amazon.com'),
  (8, 'El Hobbit - J.R.R. Tolkien', 1, 12, 70, 'hobbit_tolkien.png', 'https://www.amazon.com'),
  (9, 'Gafas 3D', 1, 24, 70, 'gafas3d.png', 'https://www.amazon.com'),
  (10, 'Cascos Bluetooth', 1, 24, 70, 'cascos.png', 'https://www.amazon.com')
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
