class ItemsMakanan {
  String imageNetwork;
  String namaMakanan;
  String harga;
  String jarak;
  String keterangan;
  String terjual;


  ItemsMakanan(
      {required this.imageNetwork,
      required this.namaMakanan,
      required this.harga,
      required this.jarak,
      required this.keterangan,
      required this.terjual});
}

var itemMakananList = [
  ItemsMakanan(
      imageNetwork:
          'https://paisley.is/wp-content/uploads/2018/05/Burgers-770x513.jpg',
      namaMakanan: 'Burger Daging Sapi',
      harga: 'Rp.30.000',
      jarak: '1,2 KM',
      keterangan: 'Roti Burger + Daging Burger(bukan Ham) + Bawang Bombai + Selada + Cheese + Saus + Daging Sapi',
      terjual: '30 terjual | Disukai 30'),
  ItemsMakanan(
      imageNetwork:
          'https://www.mashed.com/img/gallery/you-should-never-fold-pizza-slices-heres-why/intro-1602105889.jpg',
      namaMakanan: 'Pizza',
      harga: 'Rp.30.000',
      jarak: '0,9 KM',
      keterangan: 'Roti Pizza + Cheese + Bawang Bombai + Selada + Saus + Daging Sapi',
      terjual: '100 terjual | Disukai 50'),
  ItemsMakanan(
      imageNetwork:
          'https://nusadaily.com/wp-content/uploads/2020/04/rawon.jpg',
      namaMakanan: 'Rawon Kambing',
      harga: 'Rp.30.000',
      jarak: '3,2 KM',
      keterangan: 'Daging Kambing + Kecap + Bawang Goreng + Selada + Wortel + Saus + Daun Seledri + Garam + Cuka',
      terjual: '70 terjual | Disukai 40'),
  ItemsMakanan(
      imageNetwork:
          'https://grosirmesin.com/wp-content/uploads/2019/07/steak-daging-sapi.jpg',
      namaMakanan: 'Steak Sapi',
      harga: 'Rp.130.000',
      jarak: '2,2 KM',
      keterangan: 'Daging Sapi + Kecap + Pemanis + Selada + Cheese + Saus + Blueband + Garam + Merica',
      terjual: '200 terjual | Disukai 130'),
];
