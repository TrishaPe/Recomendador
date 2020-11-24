# Recomendador

Los archivos en este repositorio pertenecen a una página web con intención de recomendar regalos.

Index.php es la página inicial, donde se eligen tres opciones o conjuntos de opciones: sexo, edad e intereses, de las cuales se pueden elegir múltiples.
El botón 'Buscar' dirige a la página 'Searchpage.php', que pinta todos los artículos desde la base de datos. Cambiar la selección en la barra al lado izquierdo producirá cambios en los artículos mostrados. Cada artículo viene con su propio enlace a la página de Amazon donde se puede comprar.

La página 'test.php' es donde pruebo cosas nuevas para asegurar que 'searchpage' siempre funcione bien. Solamente cuando funciona el paso siguiente en el desarrollo, copio todo el código de 'test' y de su archivos css y js relacionados (donde aplica) a 'searchpage'.

Es un proyecto simple ahora, pero pretendo añadir más partes interesantes: entre otros, una base de datos de MongoDB en vez del MySQL que utilizo ahora, y Vue.js para facilitar la presentación de los datos.

# Gift Recommender

The files in this repository belong to a webpage meant for recommending gifts.

'Index.php' is the main page, where one can make three choices or groups of choices: gender, age and interests, the latter of which supports multiple selections.
The 'Search' button ('Buscar' on the page) leads to 'Searchpage.php', which shows all articles for sale taken from the database. Changing the selection in the navbar to the left will cause different products to be shown. Each article has its own link to an Amazon page where said article can be bought.

The page 'test.php' is where I try out new things to make sure 'searchpage' keeps on functioning correctly. Only when the next step in the development of the page works correctly do I copy all the code from 'test' and its respective css and js files (whichever applies) to the ones related to 'searchpage'.

It's a simple project right now, but I'm thinking to add more interesting things: among others a MongoDB database instead of the present MySQL, and Vue.JS to make displaying the data easier.
