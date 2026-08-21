# Dory Photo

<p align="center">
  <img src="assets/dory-photo-icon.png" alt="Icono de Dory Photo" width="160">
</p>

**Dory Photo** es una galería privada y local para Android. Permite tomar fotos,
verlas en miniatura o a pantalla completa, recorrerlas con el dedo, marcarlas
como favoritas, editarlas y compartirlas.

## Descargar la APK

[Descargar Dory Photo v2.1.0](apk/Dory-Photo-v2.1.0.apk)

Compatible con Android 10 o superior.

## Funciones principales

- Cámara con guardado directo dentro de Dory Photo.
- Copia automática de nuevas fotos tomadas con la cámara normal del teléfono,
  después de conceder permiso para acceder a las fotos.
- Cuadrícula de miniaturas y sección de favoritas.
- Visor a pantalla completa con deslizamiento, doble toque y zoom.
- Opciones para guardar una copia, compartir, rotar, mejorar y convertir a
  blanco y negro.
- Funcionamiento local, sin cuenta, anuncios ni conexión a Internet.

## Carpeta de las fotos

Dory Photo crea y administra esta carpeta privada:

```text
/storage/emulated/0/Android/data/com.solumetals.doryphoto/files/Documents/fotos_dory
```

Las fotos tomadas desde Dory Photo no aparecen en la Galería normal. Cuando se
toma una foto con la cámara externa, Dory Photo copia la nueva imagen a su
carpeta privada; el archivo original permanece en la Galería del teléfono.

La aplicación no impone un límite de cantidad de fotos. El límite real es el
espacio disponible en el dispositivo. Android puede restringir el acceso manual
a `Android/data`; la propia aplicación sí puede abrir y administrar sus fotos.

> Importante: Android normalmente elimina la carpeta privada de la aplicación
> al desinstalarla. Guarda o comparte las fotos importantes antes de desinstalar.

## Compatibilidad y permisos

- Android 10 o superior.
- Cámara: tomar fotos desde Dory Photo.
- Fotos y videos: detectar y copiar nuevas fotos tomadas fuera de la aplicación.

Dory Photo no solicita permiso de Internet. Consulta la
[política de privacidad](PRIVACY_POLICY.md) para más información.

## Verificación

La huella SHA-256 de la APK oficial v2.1.0 se publica junto con la descarga en
`SHA256SUMS.txt`.

## Licencia

Distribución autorizada únicamente para uso personal. Consulta [LICENSE](LICENSE).

