#!/usr/bin/env sh

# Compile TypeScript to JavaScript
./node_modules/.bin/tsc src/nik_parser.ts --resolveJsonModule --outDir ./dist

# Create minified version
./node_modules/.bin/terser --compress --mangle --source-map --output ./dist/nik_parser.min.js -- ./dist/nik_parser.js

# Minify JSON
node -e "console.log(JSON.stringify(require('./src/wilayah.json')));" > ./dist/wilayah.json
