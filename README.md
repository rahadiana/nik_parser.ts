# NIK Parser in TypeScript

Parse & Validasi Nomor Induk Kependudukan (NIK) KTP Menggunakan TypeScript.

Kode ini merupakan modifikasi dari https://github.com/bachors/nik_parse.js.

Perbedaan antara `nik-parser` dan `nik_parse.js` adalah:

|                  | nik-parser                               | nik_parse.js  |
|------------------|------------------------------------------|---------------|
| Bahasa           | TypeScript                               | JavaScript    |
| Didesain sebagai | Library                                  | JSON response |
| Fokus            | Esensial data<sup>[[1]](#footnote)</sup> | Lain-lain     |

<a id="footnote" />
<sup>[1]</sup>
<sub>Esensial data yang dimaksud tidak memasukkan informasi seperti zodiak,
usia hingga ke tingkatan hari, dan berapa lama lagi akan berulang tahun.</sub>

## Instalasi

```sh
npm i nik-parser
```

## Penggunaan

```ts
import { nikParser } from 'nik-parser'

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
