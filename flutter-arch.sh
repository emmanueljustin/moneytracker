#!/bin/bash

CURR_DIR=$(pwd)

BASE_DIR="$CURR_DIR/lib/src"

mkdir -p "$BASE_DIR"

echo "Please select an option:"
echo "1) Clean Architecture (GOAT)"
echo "2) MODEL VIEW CONTROLLER (MVC)"

read -n 1 -s choice

case $choice in
  1)
    read -p "Enter Module Name: " MODULE_NAME

    ARCH_DIR="$BASE_DIR/$MODULE_NAME"

    # Defining the module name
    mkdir -p "$ARCH_DIR"

    # Creating the 3 main layers of clean architecture and with core
    mkdir -p "$ARCH_DIR/core"
    mkdir -p "$ARCH_DIR/data"
    mkdir -p "$ARCH_DIR/domain"
    mkdir -p "$ARCH_DIR/presentation"

    # Creating a folder structure in data layer
    mkdir -p "$ARCH_DIR/data/data_sources"
    mkdir -p "$ARCH_DIR/data/models"
    mkdir -p "$ARCH_DIR/data/repositories"

    # Creating a folder structure in domain layer
    mkdir -p "$ARCH_DIR/domain/entities"
    mkdir -p "$ARCH_DIR/domain/repositories"
    mkdir -p "$ARCH_DIR/domain/usecases"

    # Creating a folder structure in presentation layer
    mkdir -p "$ARCH_DIR/presentation/blocs"
    mkdir -p "$ARCH_DIR/presentation/cubits"
    mkdir -p "$ARCH_DIR/presentation/screens"

    # Creating dummy file for each file layers
    touch "$ARCH_DIR/data/data_sources/data_src"
    touch "$ARCH_DIR/data/models/models"
    touch "$ARCH_DIR/data/repositories/repositories"

    touch "$ARCH_DIR/domain/entities/entities"
    touch "$ARCH_DIR/domain/repositories/repositories"
    touch "$ARCH_DIR/domain/usecases/usecases"

    touch "$ARCH_DIR/presentation/blocs/blocs"
    touch "$ARCH_DIR/presentation/cubits/cubits"
    touch "$ARCH_DIR/presentation/screens/screens"

    echo "File structure created in '$ARCH_DIR'."
  ;;
  2)
    read -p "Enter Module Name: " MODULE_NAME
  
    # Defining the module name
    mkdir -p "$BASE_DIR/$MODULE_NAME"

    ARCH_DIR="$BASE_DIR/$MODULE_NAME"

    # Creating the 3 main layers of MVC and with core
    mkdir -p "$ARCH_DIR/core"
    mkdir -p "$ARCH_DIR/controllers"
    mkdir -p "$ARCH_DIR/models"
    mkdir -p "$ARCH_DIR/views"

    # Creating dummy file for each file layers
    touch "$ARCH_DIR/core/cores"
    touch "$ARCH_DIR/controllers/controllers"
    touch "$ARCH_DIR/models/models"
    touch "$ARCH_DIR/views/views"

    echo "File structure created in '$ARCH_DIR'."
  ;;
  *)
    echo "Invalid option."
  ;;
esac

chmod +x flutter-arch.sh