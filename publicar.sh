#!/usr/bin/env bash
set -euo pipefail

REPO="mrJulioC/DoryPhoto"
VERSION="v2.1.0"
APK="dist/Dory-Photo-v2.1.0.apk"
CHECKSUMS="dist/SHA256SUMS.txt"

cd "$(dirname "$0")"

for command_name in git gh sha256sum; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "Falta el comando requerido: $command_name" >&2
    exit 1
  fi
done

if [[ ! -f "$APK" || ! -f "$CHECKSUMS" ]]; then
  echo "Falta la APK o el archivo SHA256SUMS.txt en la carpeta dist." >&2
  exit 1
fi

(cd dist && sha256sum --check SHA256SUMS.txt)
gh auth status

if [[ ! -d .git ]]; then
  git init -b main
fi

git add -- \
  .gitignore \
  README.md \
  PRIVACY_POLICY.md \
  CHANGELOG.md \
  RELEASE_NOTES_v2.1.0.md \
  LICENSE \
  SECURITY.md \
  PUBLICAR_EN_GITHUB.md \
  publicar.sh \
  assets/dory-photo-icon.png \
  dist/SHA256SUMS.txt

if ! git diff --cached --quiet; then
  git commit -m "Publicar Dory Photo 2.1.0"
fi

if gh repo view "$REPO" >/dev/null 2>&1; then
  if ! git remote get-url origin >/dev/null 2>&1; then
    git remote add origin "https://github.com/$REPO.git"
  fi
else
  gh repo create "$REPO" --public --source=. --remote=origin \
    --description "Galería privada y local para Android"
fi

git branch -M main
git push -u origin main

if gh release view "$VERSION" --repo "$REPO" >/dev/null 2>&1; then
  echo "La Release $VERSION ya existe. No se reemplazó ningún archivo." >&2
  exit 1
fi

gh release create "$VERSION" "$APK" "$CHECKSUMS" \
  --repo "$REPO" \
  --title "Dory Photo 2.1.0" \
  --notes-file RELEASE_NOTES_v2.1.0.md

echo "Publicación terminada: https://github.com/$REPO/releases/tag/$VERSION"
