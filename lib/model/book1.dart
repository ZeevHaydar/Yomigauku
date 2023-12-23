import 'package:yomigauku/model/book.dart';

const String sinopsis =
    r'''Dalam "Ordinary Man From Mumbai" kita akan diajak dalam petualangan luar biasa di jalanan yang ramai dan penuh misteri di Mumbai. Ketika seorang pria sederhana, yang telah hidup dalam keseharian yang biasa-biasa saja, tiba-tiba terlibat dalam serangkaian peristiwa tak terduga, ia harus mengungkap rahasia yang selama ini tersembunyi di balik tirai kota yang megah ini.

Seorang pria bernama Amir, awalnya ia hanya menkimati hidup yang biasa saja, kemudian kejadian tidak terduga membuat harus terjun ke dunia yang seharusnya tidak ia sentuh. bagaimana Amir menghadapi situasi ini?''';

const String judulChapter1 = "Prologue";
const String kontenChapter1 = r'''
Alarm Jam berbunyi, tampak terlihat waktu menunjukkan pukul 4 pagi. diriku segera berkemas-kemas. mandi, beribadah pagi. "Tinggal Roti 2 lembar saja, ya?" aku pun mengambil selai kacang dari lemari dapur. Kulihat dapurku yang berantakan.

Aku tinggal sendiri, orang tuaku ada di Desa, sedangkan aku di sini sendirian bekerja sebagai Software Engineer di sebuah perusahaan startup di Mumbai. kehidupan membosankan ini membuatku kehilangan semangat hidup. gaji yang kudapat terasa kurang, namun enggan untuk resign. cari kerja di India susah lho, bahkan banyak anak muda seusiaku yang akhirnya menjadi pengangguran. harusnya aku patut bersyukur.

seragam sudah kupakai dengan rapi, sudah siap diriku untuk berangkat ke tempat kerja. seperti biasa, aku harus menghadapi kemacetan jalan Mumbai. rasanya membuat diriku semakin stres, dan sulit untuk membendung amarah. akhirnya aku sampai di kantor pukul 7 pagi.

sampai di sana aku disambut oleh bosku yang banyak bacot itu.

"Oi, Amir. selamat pagi!"

"selamat pagi, Pak Vijay"
"tumben banget, nyapa saya nih"

Bos menjawab, "Hahahaha, aku ingin sekali-kali menyapa karyawan-karyawanku".
"Kalau misalkan ada keluhan atau masalah, bilang aja ya".

Aku pun menjawab "Oke, pak".

kuhabiskan hariku bekerja seharian, kemudian waktu sudah menunjukkan pukul 5 sore, sudah waktunya pulang.
namun hari ini aku tidak langsung pulang ke kontrakanku. aku lebih memilih mencoba menikmati minuman chai di pinggir jalan di sebelah gedung kantorku.

"Selamat Sore, Amir. nih aku beliin kamu kopi"
Suara wanita menyapaku.

"Sore juga, Priyanka. terima kasih atas kopinya".

Priyanka, seorang wanita cantik dan seksi, adalah teman kerjaku yang membuat hari-hari di kantor lebih berwarna. Kami pun duduk bersama, ngobrol, dan tertawa.

Waktupun berlalu, kami terus ngobrol dan tertawa bersama. Priyanka adalah teman yang menyenangkan, dan kami sering kali berbagi cerita dan curhatan satu sama lain. Suasana sore itu terasa hangat dan menyenangkan.

Beberapa hari kemudian, suasana di kantor terasa berbeda. Aku mencoba mencari Priyanka untuk mengobrol seperti biasa, tetapi tak kunjung menemukannya. Aku mulai merasa cemas dan khawatir.

Esok harinya, aku mendapat kabar yang membuatku terkejut. Priyanka ditemukan tewas di kamarnya secara misterius. Berita itu membuatku terguncang dan tidak percaya. Aku tidak bisa menerima kenyataan bahwa teman baikku telah pergi begitu saja.

''';
const String judulChapter2 = "Kasus dimulai!";
const String kontenChapter2 = r'''
Dalam upaya untuk menyingkap misteri di balik kematian Priyanka, aku memulai pencarian ke wilayah yang lebih gelap dan tidak terjamah. Di tengah perjalanan ini, aku menemukan bahwa Priyanka sebenarnya memiliki kehidupan yang sangat rahasia, yang tidak diketahui oleh banyak orang di kantor.

Aku mulai mencari tahu lebih lanjut tentang kehidupan pribadinya. Di kamarnya, aku menemukan sejumlah surat dan pesan rahasia yang dia sembunyikan dari semua orang, termasuk dari teman-temannya. Surat-surat itu berisi ancaman yang misterius dan petunjuk-petunjuk tersembunyi.

Saat aku menyelidiki lebih lanjut, aku menemukan bahwa Priyanka terlibat dalam suatu kegiatan yang jauh dari kesan wanita baik-baik yang kutahu. Dia memiliki keterlibatan dengan kelompok rahasia yang beroperasi di balik layar kehidupan sehari-hari.

Aku mencoba menghubungi orang-orang yang mungkin mengetahui lebih banyak tentang kelompok ini. Namun, setiap langkahku dihalangi oleh ancaman dan rintangan yang lebih besar. Teror mulai menyusup ke dalam hidupku, dan aku merasa seperti diawasi setiap saat.

Dalam pencarianku yang semakin berbahaya, aku menemukan bahwa kelompok ini terlibat dalam bisnis ilegal yang melibatkan banyak orang di kantor, termasuk bosku sendiri, Pak Vijay. Seiring dengan itu, aku menyadari bahwa Priyanka kemungkinan besar menjadi sasaran karena mengetahui terlalu banyak tentang kegiatan kelompok tersebut.

Aku tahu bahwa aku harus berhati-hati. Teror semakin mendekat, dan ancaman menjadi nyata. Namun, tekadku untuk menyelesaikan misteri ini semakin membara. Aku tidak hanya mencari kebenaran untuk Priyanka tetapi juga melawan kejahatan yang tersembunyi di balik kehidupan sehari-hari yang tampaknya biasa.

(To be continued...)
''';
Content chapter1 = Content(judulChapter: judulChapter1, konten: kontenChapter1);
Content chapter2 = Content(judulChapter: judulChapter2, konten: kontenChapter2);
List<Content> isi = [chapter1, chapter2];
Book book1 = Book(
  nama: "Ordinary Man From Mumbai",
  genre: ["Action", "Mystery"],
  hariRilis: "11-10-2021",
  rating: 4.70,
  penulis: "Ivan Aldy Ganesen",
  penerbit: "Gawknesia",
  sinopsis: sinopsis,
  isi: isi,
  image: "images/ordinary_man_from_mumbai.png",
  jumlahChapter: isi.length,
);
