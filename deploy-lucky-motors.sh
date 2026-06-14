#!/bin/bash
# Deploys car-dealer.html and its assets to the dedicated
# archie834/luckymotorsweb repo (GitHub Pages), without touching
# the WEB BUILD repo's "origin" remote (MAISON-DE-MAY).
set -e

SRC="$(cd "$(dirname "$0")" && pwd)"
DEPLOY_DIR="$HOME/lucky-motors-deploy"

if [ ! -d "$DEPLOY_DIR/.git" ]; then
  git clone https://github.com/archie834/luckymotorsweb.git "$DEPLOY_DIR"
  git -C "$DEPLOY_DIR" config user.name "archie834"
  git -C "$DEPLOY_DIR" config user.email "archiegordon20010@gmail.com"
else
  git -C "$DEPLOY_DIR" pull
fi

# NOTE: stock.json and stock-images/ are intentionally NOT copied here.
# They are owned by the scrape-stock.mjs GitHub Action running inside the
# deploy repo, which keeps them in sync with the live eBay showroom.
# Copying the stale local versions over would revert live stock data.

cp "$SRC/car-dealer.html" "$DEPLOY_DIR/index.html"
cp "$SRC/scrape-stock.mjs" "$DEPLOY_DIR/"
cp "$SRC/lucky-motors-package.json" "$DEPLOY_DIR/package.json"
cp "$SRC/lucky-motors-package-lock.json" "$DEPLOY_DIR/package-lock.json"
cp "$SRC/robots.txt" "$DEPLOY_DIR/"
cp "$SRC/sitemap.xml" "$DEPLOY_DIR/"
cp "$SRC/llms.txt" "$DEPLOY_DIR/"
cp "$SRC/googlec91df0d71816a19a.html" "$DEPLOY_DIR/"

mkdir -p "$DEPLOY_DIR/.github/workflows"
cp "$SRC/.github/workflows/scrape-stock.yml" "$DEPLOY_DIR/.github/workflows/"

mkdir -p "$DEPLOY_DIR/ejcuts"
for f in "air con add.PNG" "carplay image.png" "ecu remaping.JPG" "garage pic.webp" "lucky motors logo.png"; do
  cp "$SRC/ejcuts/$f" "$DEPLOY_DIR/ejcuts/"
done

cd "$DEPLOY_DIR"
git add -A
if git diff --cached --quiet; then
  echo "No changes to deploy."
else
  git commit -m "Update Lucky Motors site"
  git push
  echo "Deployed to https://archie834.github.io/luckymotorsweb/"
fi
