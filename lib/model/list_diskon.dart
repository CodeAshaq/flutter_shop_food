class ListDiskon {
  String imageAssets;
  String namaDiskon;
  String keterangan;
  String waktu;

  ListDiskon(
      {required this.imageAssets,
      required this.namaDiskon,
      required this.keterangan,
      required this.waktu});
}

var listDiskonItems = [
  ListDiskon(
      imageAssets: 'images/promo1.png',
      namaDiskon: 'Diskon Belanja 10%',
      keterangan: '- Minimal Belanja 20Rb \n- Hanya Berlaku di toko tertentu',
      waktu: 'Hangus sampai 17 Maret'),
  ListDiskon(
      imageAssets: 'images/promo2.jpg',
      namaDiskon: 'Promo Gila!!',
      keterangan: '- Tidak ada Minimal Pembelanjaan \n- Gratis ongkir',
      waktu: 'Persediaan Terbatas'),
  ListDiskon(
      imageAssets: 'images/promo3.jpg',
      namaDiskon: 'Gratis Ongkir',
      keterangan: '- Minimal Belanja 20Rb \n- Khusus Pembayaran ShopeePay',
      waktu: 'Persediaan Terbatas')
];
