# Informe del Examen - Soluciones Móviles 2

## Datos del Alumno
- **Nombre del Curso:** SOLUCIONES MOVILES 2   
- **Fecha:**  27/06/2025
- **Nombre Completo:** Erick Javier Salinas Condori 
- **URL del Repositorio en GitHub:**  https://github.com/Salinas-Condori-Erick/SM2_ExamenUnidad3  

## Evidencias del Proyecto

### 1. Estructura de carpetas `.github/workflows/`

![image](https://github.com/user-attachments/assets/c619cd43-70af-4346-b04c-8ad79fda87c0)

### 2. Contenido del archivo `quality-check.yml`
```yaml
# Contenido del archivo YAML aquí
name: Quality Check

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  analyze-and-test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v3

      - name: Set up Flutter stable (3.22.1)
        run: |
          git clone https://github.com/flutter/flutter.git --branch stable
          echo "$GITHUB_WORKSPACE/flutter/bin" >> $GITHUB_PATH
          export PATH="$PATH:$GITHUB_WORKSPACE/flutter/bin"
          flutter --version

      - name: Install dependencies
        run: flutter pub get

      - name: Static Code Analysis (no falla si hay warnings)
        run: flutter analyze || true

      - name: Run Unit Tests
        run: flutter test

### 3. Ejecución del workflow en la pestaña Actions.










