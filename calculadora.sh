#!/bin/bash

while true; do
    # Entrada de dados
    read -p "Digite o primeiro número: " numero1
    read -p "Digite a operação (+, -, *, /): " operacao
    read -p "Digite o segundo número: " numero2

    # Processamento e Saída de dados
    if [ "$operacao" == "+" ]; then
        resultado=$(echo "$numero1 + $numero2" | bc)
        echo "Resultado da Soma: $resultado"

    elif [ "$operacao" == "-" ]; then
        resultado=$(echo "$numero1 - $numero2" | bc)
        echo "Resultado da Subtração: $resultado"

    elif [ "$operacao" == "*" ]; then
        resultado=$(echo "$numero1 * $numero2" | bc)
        echo "Resultado da Multiplicação: $resultado"

    elif [ "$operacao" == "/" ]; then
        if [ "$numero2" == "0" ]; then
            echo "Erro: Não é possível dividir por zero!"
        else
            resultado=$(echo "scale=2; $numero1 / $numero2" | bc)
            echo "Resultado da Divisão: $resultado"
        fi

    else
        echo "Operação inválida!"
    fi

    # Pergunta se o usuário quer continuar
    read -p $'\nDeseja fazer outra operação? (s/n): ' continuar
    if [ "$continuar" != "s" ]; then
        echo "Programa encerrado. Até logo!"
        break
    fi

done