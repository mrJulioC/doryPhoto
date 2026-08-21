# Publicar Dory Photo en GitHub

El paquete está preparado para el repositorio público `mrJulioC/DoryPhoto`.

## Opción rápida

1. Instala e inicia sesión en GitHub CLI (`gh auth login`).
2. Abre una terminal dentro de esta carpeta.
3. Ejecuta:

```bash
./publicar.sh
```

El script crea el repositorio, publica los documentos y después crea la Release
`v2.1.0` con la APK y su huella SHA-256.

## Opción desde la web

1. Crea un repositorio público llamado `DoryPhoto` en la cuenta `mrJulioC`.
2. Sube los documentos de la raíz y la carpeta `assets`.
3. En el repositorio, abre **Releases** y selecciona **Draft a new release**.
4. Usa la etiqueta `v2.1.0` y el título `Dory Photo v2.1.0`.
5. Copia el contenido de `RELEASE_NOTES_v2.1.0.md` en la descripción.
6. Adjunta estos dos archivos de la carpeta `dist`:
   - `Dory-Photo-v2.1.0.apk`
   - `SHA256SUMS.txt`
7. Pulsa **Publish release**.

GitHub añadirá automáticamente enlaces llamados **Source code (zip)** y
**Source code (tar.gz)**. Es normal. El instalador correcto es el archivo `.apk`
que aparece en **Assets**.

