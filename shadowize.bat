@echo off
setlocal enabledelayedexpansion

rem Verifica se o argumento foi passado
if "%~1"=="" (
    echo Uso: %0 arquivo_de_entrada
    exit /b
)

rem Definindo variáveis para o nome do arquivo e sua extensão
set "input_file=%~1"
set "output_file=%~n1-shadow.png"

rem Aplicando o efeito de sombra
magick "%input_file%" ( +clone -background black -shadow 50x40+0+16 ) +swap -background none -layers merge +repage "%output_file%"

echo Processo concluído.
