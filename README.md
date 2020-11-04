# nik_parser.ts

Parse & Validasi Nomor Induk Kependudukan (NIK) KTP Menggunakan TypeScript.

Kode ini merupakan modifikasi dari https://github.com/bachors/nik_parse.js.

Perbedaan antara nik_parser.ts dan nik_parse.js adalah:
- nik_parser.ts didesain dengan menggunakan TypeScript, sedangkan nik_parse.js menggunakan JavaScript.
- nik_parser.ts didesain sebagai library, sedangkan nik_parse.js didesain sebagai JSON response.
- nik_parser.ts hanya fokus ke informasi yang esensial (tidak termasuk usia dan zodiak).

## Penggunaan

```ts
const nik = '3204110609970001'

const nikObject = nikParser(nik)

nikObject.isValid()         // true
nikObject.provinceId()      // 32
nikObject.province()        // JAWA BARAT
nikObject.kabupatenKotaId() // 3204
nikObject.kabupatenKota()   // KAB. BANDUNG
nikObject.kecamatanId()     // 320411
nikObject.kecamatan()       // KATAPANG
nikObject.kodepos()         // 40921
nikObject.kelamin()         // male
nikObject.lahir()           // Date object -> Sat Sep 06 1997 00:00:00 GMT+0700 (Western Indonesia Time)
nikObject.uniqcode()        // 0001
```

# Catatan
Data yang dihasilkan hanya hasil menterjemahkan tiap digit NIK sehingga data yang dihasilkan adalah
tempat kali pertama NIK dibuat/tempat lahir (bukan tempat domisili pemilik NIK secara uptodate).
