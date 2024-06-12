#!/bin/bash

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # Sin color

# Introducción del juego
echo -e "${CYAN}Bienvenido, joven mago. Tu misión es encontrar los tres cristales mágicos para forjar tu bastón.${NC}"
echo -e "Te enfrentarás a desafíos y deberás responder preguntas para avanzar.\n"

# Variables del juego
cristales=0

# Dibujos en ASCII
baston_magico="
      /\\
     /  \\
    /    \\
   /______\\
   |      |
   |      |
   |      |
"

cristal="
     *
    ***
   *****
    ***
     *
"

# Función para hacer preguntas
hacer_pregunta() {
    pregunta=$1
    opciones=$2
    respuesta_correcta=$3

    echo -e "${BLUE}$pregunta${NC}"
    echo -e "$opciones"
    read -p "Elige una opción (1, 2, 3): " respuesta

    if [ "$respuesta" == "$respuesta_correcta" ]; then
        echo -e "${GREEN}Correcto! Has encontrado un cristal mágico.${NC}"
        ((cristales++))
        echo -e "$cristal\n"
    else
        echo -e "${RED}Incorrecto. Sigue buscando...${NC}"
    fi
}

# Preguntas del juego
preguntas=(
    "¿Cuál es el componente principal de una poción de curación?"
    "¿Cuál es el hechizo para encender una luz?"
    "¿Cómo se llama la flor que solo florece a la luz de la luna llena?"
    "¿Qué criatura mitológica tiene la capacidad de renacer de sus cenizas?"
    "¿Cuál es el ingrediente principal para una poción de invisibilidad?"
    "¿Cómo se llama el libro mágico que contiene todos los hechizos conocidos?"
)

opciones=(
    "1) Mandrágora\n2) Polvo de hadas\n3) Agua de manantial"
    "1) Lumos\n2) Nox\n3) Incendio"
    "1) Flor de Luna\n2) Flor de Sol\n3) Flor de Estrella"
    "1) Dragón\n2) Fénix\n3) Basilisco"
    "1) Sangre de dragón\n2) Pelo de unicornio\n3) Hierba de sombra"
    "1) Libro de las Sombras\n2) Grimorio\n3) Necronomicón"
)

respuestas_correctas=("3" "1" "1" "2" "3" "2")

# Bucle principal del juego
while [ "$cristales" -lt 3 ]; do
    for i in "${!preguntas[@]}"; do
        if [ "$cristales" -ge 3 ]; then
            break
        fi
        hacer_pregunta "${preguntas[$i]}" "${opciones[$i]}" "${respuestas_correctas[$i]}"
    done
done

# Resultado final
echo -e "\n${CYAN}Has encontrado los 3 cristales mágicos.${NC}"
echo -e "${GREEN}¡Felicidades! Has conseguido todos los cristales y forjado tu bastón mágico.${NC}"
echo -e "$baston_magico"
