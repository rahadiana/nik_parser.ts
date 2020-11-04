#!/usr/bin/env sh

# Compile TypeScript to JavaScript
./node_modules/.bin/tsc src/index.ts --declaration --resolveJsonModule --outDir ./dist

# Create minified version
./node_modules/.bin/terser --compress --mangle --source-map --output ./dist/index.min.js -- ./dist/index.js

# Minify JSON
node -e "console.log(JSON.stringify(require('./src/wilayah.json')));" > ./dist/wilayah.json
