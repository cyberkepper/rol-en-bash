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

# Primera pregunta
echo -e "${BLUE}Primera pregunta: ¿Cuál es el componente principal de una poción de curación?${NC}"
echo "1) Mandrágora"
echo "2) Polvo de hadas"
echo "3) Agua de manantial"
read -p "Elige una opción (1, 2, 3): " respuesta1

if [ "$respuesta1" == "3" ]; then
    echo -e "${GREEN}Correcto! Has encontrado el primer cristal mágico.${NC}"
    ((cristales++))
else
    echo -e "${RED}Incorrecto. Sigue buscando...${NC}"
fi

# Segunda pregunta
echo -e "\n${BLUE}Segunda pregunta: ¿Cuál es el hechizo para encender una luz?${NC}"
echo "1) Lumos"
echo "2) Nox"
echo "3) Incendio"
read -p "Elige una opción (1, 2, 3): " respuesta2

if [ "$respuesta2" == "1" ]; then
    echo -e "${GREEN}Correcto! Has encontrado el segundo cristal mágico.${NC}"
    ((cristales++))
else
    echo -e "${RED}Incorrecto. Sigue buscando...${NC}"
fi

# Tercera pregunta
echo -e "\n${BLUE}Tercera pregunta: ¿Cómo se llama la flor que solo florece a la luz de la luna llena?${NC}"
echo "1) Flor de Luna"
echo "2) Flor de Sol"
echo "3) Flor de Estrella"
read -p "Elige una opción (1, 2, 3): " respuesta3

if [ "$respuesta3" == "1" ]; then
    echo -e "${GREEN}Correcto! Has encontrado el tercer cristal mágico.${NC}"
    ((cristales++))
else
    echo -e "${RED}Incorrecto. Sigue buscando...${NC}"
fi

# Resultado final
echo -e "\n${CYAN}Has encontrado $cristales de 3 cristales mágicos.${NC}"

if [ "$cristales" -eq 3 ]; then
    echo -e "${GREEN}¡Felicidades! Has conseguido todos los cristales y forjado tu bastón mágico.${NC}"
else
    echo -e "${RED}No has conseguido todos los cristales. Tu misión aún no está completa.${NC}"
fi
