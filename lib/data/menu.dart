class menu {
  String nama, harga, rasa, image;
  
  menu( // Mendefinisikan properti nama, harga, rasa, dan image
    {required this.nama,
    required this.harga,
    required this.rasa,
    required this.image}
  );
}
// Konstruktor untuk membuat objek Menu dengan properti yang diberikan
List<menu> dataMenu = [
  menu(
    nama: 'Ayam Bakar',
    harga: '20k',
    rasa: 'Perpaduan sempurna antara manis, pedas, dan gurih. Kulit ayam yang dipanggang dengan sempurna memberikan cita rasa renyah dan gurih.',
    image: 'assets/images/ayam11.jpg'),
  menu(
    nama: 'Ayam Bakar Utuh',
    harga : '120k',
    rasa: 'Ayam bakar utuh adalah hidangan yang menggugah selera dengan cita rasa yang lezat dan aroma yang menggoda. Daging ayam yang empuk dan juicy dipanggang dengan sempurna.',
    image: 'assets/images/ayam2.jpg'),
  menu(
    nama: 'Lele Goreng',
    harga: '15k',
    rasa: 'Lele goreng adalah hidangan yang populer di banyak tempat di Indonesia. Rasa lele goreng biasanya gurih dan renyah di luar, namun lembut dan juicy di dalamnya.',
    image: 'assets/images/lele.jpg'),
  menu(
    nama: 'Nila Bakar',
    harga: '20k',
    rasa: 'Rasa nila bakar adalah campuran unik dari rasa gurih dan renyah dengan sentuhan manis dan pedas. Nilamya yang telah dipanggang memberikan aroma yang khas.',
    image: 'assets/images/nila.jpg'),
  menu(
    nama: 'Nasi Putih',
    harga: '5k',
    rasa: 'Nasi putih memiliki rasa yang sederhana namun memuaskan. Teksturnya lembut dan kenyal, dengan aroma harum yang menyebar begitu nasi tersebut dihidangkan.',
    image: 'assets/images/nasi.jpg'),
  menu(
    nama: 'Es teh',
    harga: '5k',
    rasa: 'Es teh adalah minuman yang menyegarkan dengan cita rasa yang ringan dan manis.',
    image: 'assets/images/esteh.jpg'),
  menu(
    nama: 'Es Jeruk',
    harga: '5k',
    rasa: 'Es Jeruk adalah minuman segar yang terbuat dari campuran air, perasan jeruk segar, gula, dan es.',
    image: 'assets/images/esjeruk.jpg'),
];