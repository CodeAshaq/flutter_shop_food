class ImageList {
  String imageAssets;
  String promo;
  String keterangan;
  String deskripsi;
  String waktu;

  ImageList({
    required this.imageAssets,
    required this.promo,
    required this.keterangan,
    required this.waktu,
    required this.deskripsi
  });
}

var imageAssetsList = [
  ImageList(
      imageAssets: 'images/promo1.png',
      promo: 'PROMO BESAR',
      keterangan: 'Jangan sampai terlewatkan S & k berlaku',
      deskripsi: '- Minimal Belanja 20Rb \n - Hanya Berlaku di toko tertentu',
      waktu: 'Hangus sampai 17 Maret'),
      
  ImageList(
      imageAssets: 'images/promo2.jpg',
      promo: 'PROMO GILA!!',
      keterangan: 'Jangan sampai ga gila karena gadapat Promo ini',
      deskripsi: '- Tidak ada Minimal Pembelanjaan \n - Gratis ongkir',
      waktu: 'Persediaan Terbatas'),
  ImageList(
      imageAssets: 'images/promo3.jpg',
      promo: 'GRATIS ONGKIR',
      keterangan: 'Minimal Belanja 20Rb',
      deskripsi: '- Minimal Belanja 20Rb \n - Khusus Pembayaran ShopeePay',
      waktu: 'Persediaan Terbatas'),
];
