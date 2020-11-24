# Recomendador

Los archivos en este repositorio pertenecen a una página web con intención de recomendar regalos.

Index.php es la página inicial, donde se eligen tres opciones o conjuntos de opciones: sexo, edad e intereses, de las cuales se pueden elegir múltiples.
El botón 'Buscar' dirige a la página 'Searchpage.php', que pinta todos los artículos desde la base de datos. Cambiar la selección en la barra al lado izquierdo producirá cambios en los artículos mostrados.

La página 'test.php' es donde pruebo cosas nuevas para asegurar que 'searchpage' siempre funcione bien. Solamente cuando funciona el paso siguiente en el desarrollo, copio todo el código de 'test' y de su archivos css y js relacionados (donde aplica) a 'searchpage'.

Es un proyecto simple ahora, pero pretendo añadir más partes interesantes: entre otros, una base de datos de MongoDB en vez del MySQL que utilizo ahora, y Vue.js para facilitar la presentación de los datos.
