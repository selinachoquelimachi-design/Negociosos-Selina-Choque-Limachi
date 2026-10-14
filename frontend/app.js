const formulario = document.getElementById("formulario");
const campoNombre = document.getElementById("nombrePokemon");
const mensaje = document.getElementById("mensaje");
const resultado = document.getElementById("resultado");

formulario.addEventListener("submit", async function (evento) {
    evento.preventDefault();

    const nombre = campoNombre.value.trim().toLowerCase();

    // Validar que se haya escrito un nombre
    if (!nombre) {
        mensaje.textContent = "Por favor, escribe el nombre de un Pokémon.";
        resultado.replaceChildren();
        return;
    }

    // Mostrar el estado de carga
    mensaje.textContent = "Cargando...";
    resultado.replaceChildren();

    try {
        const respuesta = await fetch(
            `https://pokeapi.co/api/v2/pokemon/${encodeURIComponent(nombre)}`
        );

        // Comprobar si la petición fue exitosa
        if (!respuesta.ok) {
            if (respuesta.status === 404) {
                throw new Error(
                    "No se encontró ese Pokémon. Comprueba el nombre e inténtalo de nuevo."
                );
            }

            throw new Error(
                `No se pudo consultar la API. Código: ${respuesta.status}.`
            );
        }

        const pokemon = await respuesta.json();

        // Crear la tarjeta del Pokémon
        const tarjeta = document.createElement("div");

        const titulo = document.createElement("h2");
        titulo.textContent =
            pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1);

        const imagen = document.createElement("img");
        imagen.src =
            pokemon.sprites.other?.["official-artwork"]?.front_default ||
            pokemon.sprites.front_default ||
            "";

        imagen.alt = `Imagen de ${pokemon.name}`;

        if (!imagen.src) {
            imagen.alt = `No hay imagen disponible para ${pokemon.name}`;
            imagen.style.display = "none";
        }

        const tituloTipos = document.createElement("h3");
        tituloTipos.textContent = "Tipos";

        const tipos = document.createElement("div");

        pokemon.types.forEach((elemento) => {
            const tipo = document.createElement("span");
            tipo.className = "tipo";
            tipo.textContent = elemento.type.name;
            tipos.appendChild(tipo);
        });

        const peso = document.createElement("p");
        peso.textContent = `Peso: ${pokemon.weight / 10} kg`;

        const altura = document.createElement("p");
        altura.textContent = `Altura: ${pokemon.height / 10} m`;

        tarjeta.append(
            titulo,
            imagen,
            tituloTipos,
            tipos,
            peso,
            altura
        );

        resultado.appendChild(tarjeta);
        mensaje.textContent = "¡Pokémon encontrado correctamente!";

    } catch (error) {
        if (error instanceof TypeError) {
            mensaje.textContent =
                "No se pudo conectar con la API. Revisa tu conexión a Internet e inténtalo de nuevo.";
        } else {
            mensaje.textContent = error.message;
        }

        resultado.replaceChildren();
    }
});