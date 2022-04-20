import 'package:dicoding_aruga/content/list.dart';
import 'package:flutter/cupertino.dart';

class Pesan {
  final User pengirim;
  final String waktu; // Would usually be type Datewaktu or Firebase waktustamp in production apps
  final String isi;
  final bool dilihat;

  Pesan({
    required this.pengirim,
    required this.waktu,
    required this.isi,
    required this.dilihat,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Pesan> chats = [
  Pesan(
    pengirim: yudish,
    waktu: '10:30 PM',
    isi: 'dimana gaaaaaaa?',
    dilihat: true,
  ),
  Pesan(
    pengirim: michael,
    waktu: '9:30 PM',
    isi: 'kamu masih magang?',
    dilihat: true,
  ),
  Pesan(
    pengirim: fernandy,
    waktu: '2:30 PM',
    isi: 'Gilaaa kereng bangett vuyy',
    dilihat: false,
  ),
  Pesan(
    pengirim: citra,
    waktu: '12:00 PM',
    isi: 'Gimana kabar? masih sehattt?',
    dilihat: true,
  ),
  Pesan(
    pengirim: anya,
    waktu: '1:30 PM',
    isi: 'Dimana guysss',
    dilihat: false,
  ),
  Pesan(
    pengirim: gerard,
    waktu: '1:30 PM',
    isi: 'Capeekkk aku',
    dilihat: false,
  ),
  Pesan(
    pengirim: rangga,
    waktu: '11:30 AM',
    isi: 'Okeyy siappp',
    dilihat: false,
  ),
  Pesan(
    pengirim: michael,
    waktu: '1:45 AM',
    isi: 'OTWWWWW',
    dilihat: false,
  ),
];

// EXAMPLE PesanS IN CHAT SCREEN
List<Pesan> messages = [
  Pesan(
    pengirim: rangga,
    waktu: '5:00 PM',
    isi: 'Dimanaaaa.',
    dilihat: true,
  ),
  Pesan(
    pengirim: currentUser,
    waktu: '5:30 PM',
    isi: 'Oalahhh okey kalau gituu',
    dilihat: true,
  ),
  Pesan(
    pengirim: rangga,
    waktu: '6:05 PM',
    isi: 'hati hati kalau gituuuu',
    dilihat: true,
  ),
  Pesan(
    pengirim: rangga,
    waktu: '6:15 PM',
    isi: 'Gilaa keren bangett cuyy',
    dilihat: true,
  ),
  Pesan(
    pengirim: currentUser,
    waktu: '6:30 PM',
    isi: 'kayanya hari ini aku skip dulu',
    dilihat: true,
  ),
  Pesan(
    pengirim: currentUser,
    waktu: '7:30 PM',
    isi: 'skippp',
    dilihat: true,
  ),
  Pesan(
    pengirim: currentUser,
    waktu: '2:30 PM',
    isi: 'Hadirrrr!',
    dilihat: true,
  ),
  Pesan(
    pengirim: rangga,
    waktu: '2:00 PM',
    isi: 'https://picsum.photos/id/52/200/300',
    dilihat: true,
  ),
];
