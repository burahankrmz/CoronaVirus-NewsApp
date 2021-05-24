import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  Detay({this.imgPath});
  var imgPath;

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 23,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height - 23,
                      child: Stack(
                        children: [
                          Hero(
                            tag: 'aga',
                            child: Positioned(
                              top: 1,
                              left: 1,
                              right: 1,
                              child: Container(
                                height: 250,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        widget.imgPath,
                                      ),
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            child: Material(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                              elevation: 4,
                              child: Container(
                                height: MediaQuery.of(context).size.height - 23,
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 50),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        height:
                                            MediaQuery.of(context).size.height -
                                                295,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    60,
                                                height: 100,
                                                child: Text(
                                                  "Covid-19 aşısı olmuştu: Bensu Soral hastalığı hakkında ilk kez konuştu - Cumhuriyet",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    60,
                                                child: Text(
                                                  "Öncelikle aşı sırası ve önceliği gibi konularda büyük bir hassasiyet olmasına çok sevindiğimi ve bu hassasiyeti paylaştığımı belirtmek isterim. Ben Crohn hastasıyım. Crohn; kronik bir rahatsızlık olmakla beraber her hafta kendime iğne yapmamı gerektiren bir hastalık. Maalesef kullandığım ilaç bağışıklığı çok düşürüyor. Bu ilacı kullananlar aşı sıralamasında çok üst sıralarda olmasa da bir önceliği var. Ben de bu sayede aşı olabildim. Asla herhangi bir ayrıcalık söz konusu değildir ve bütün insanlık olarak yaşadığımız bu felakette ayrıcalık talep edecek biri değilim. Hepimize geçmiş olsun.Soral, yakın zamanda 'Crohn' hastası olduğu için Covid-19 aşısı olmuştu. Aşı sırasının kendisine nasıl geldiği merak eden bazı sosyal medya kullanıcıları Soral'ı ciddi şekilde eleştirmişti. Bunun üzerine Soral, sosyal medyadan açıklama yaparak Crohn hastalığı nedeniyle öncelik sırasının bulunduğunu belirtmişti. Son olarak eleştirilere yanıt veren Bensu Soral, “Sıram geldi ve aşı oldum. Olmamam mı gerekiyordu? Bana çok destek olan oldu dedikten sonra setin yolunu tuttu.Soral ayrıca, yeni başlayacak dizisi için, Kubilay ile enerjimiz tuttu. Kendisini çok sevdim, iyi anlaşıyoruz diye konuştsÖncelikle aşı sırası ve önceliği gibi konularda büyük bir hassasiyet olmasına çok sevindiğimi ve bu hassasiyeti paylaştığımı belirtmek isterim. Ben Crohn hastasıyım. Crohn; kronik bir rahatsızlık olmakla beraber her hafta kendime iğne yapmamı gerektiren bir hastalık. Maalesef kullandığım ilaç bağışıklığı çok düşürüyor. Bu ilacı kullananlar aşı sıralamasında çok üst sıralarda olmasa da bir önceliği var. Ben de bu sayede aşı olabildim. Asla herhangi bir ayrıcalık söz konusu değildir ve bütün insanlık olarak yaşadığımız bu felakette ayrıcalık talep edecek biri değilim. Hepimize geçmiş olsun.Soral, yakın zamanda 'Crohn' hastası olduğu için Covid-19 aşısı olmuştu. Aşı sırasının kendisine nasıl geldiği merak eden bazı sosyal medya kullanıcıları Soral'ı ciddi şekilde eleştirmişti. Bunun üzerine Soral, sosyal medyadan açıklama yaparak Crohn hastalığı nedeniyle öncelik sırasının bulunduğunu belirtmişti. Son olarak eleştirilere yanıt veren Bensu Soral, “Sıram geldi ve aşı oldum. Olmamam mı gerekiyordu? Bana çok destek olan oldu dedikten sonra setin yolunu tuttu.Soral ayrıca, yeni başlayacak dizisi için, Kubilay ile enerjimiz tuttu. Kendisini çok sevdim, iyi anlaşıyoruz diye konuştsÖncelikle aşı sırası ve önceliği gibi konularda büyük bir hassasiyet olmasına çok sevindiğimi ve bu hassasiyeti paylaştığımı belirtmek isterim. Ben Crohn hastasıyım. Crohn; kronik bir rahatsızlık olmakla beraber her hafta kendime iğne yapmamı gerektiren bir hastalık. Maalesef kullandığım ilaç bağışıklığı çok düşürüyor. Bu ilacı kullananlar aşı sıralamasında çok üst sıralarda olmasa da bir önceliği var. Ben de bu sayede aşı olabildim. Asla herhangi bir ayrıcalık söz konusu değildir ve bütün insanlık olarak yaşadığımız bu felakette ayrıcalık talep edecek biri değilim. Hepimize geçmiş olsun.Soral, yakın zamanda 'Crohn' hastası olduğu için Covid-19 aşısı olmuştu. Aşı sırasının kendisine nasıl geldiği merak eden bazı sosyal medya kullanıcıları Soral'ı ciddi şekilde eleştirmişti. Bunun üzerine Soral, sosyal medyadan açıklama yaparak Crohn hastalığı nedeniyle öncelik sırasının bulunduğunu belirtmişti. Son olarak eleştirilere yanıt veren Bensu Soral, “Sıram geldi ve aşı oldum. Olmamam mı gerekiyordu? Bana çok destek olan oldu dedikten sonra setin yolunu tuttu.Soral ayrıca, yeni başlayacak dizisi için, Kubilay ile enerjimiz tuttu. Kendisini çok sevdim, iyi anlaşıyoruz diye konuştsÖncelikle aşı sırası ve önceliği gibi konularda büyük bir hassasiyet olmasına çok sevindiğimi ve bu hassasiyeti paylaştığımı belirtmek isterim. Ben Crohn hastasıyım. Crohn; kronik bir rahatsızlık olmakla beraber her hafta kendime iğne yapmamı gerektiren bir hastalık. Maalesef kullandığım ilaç bağışıklığı çok düşürüyor. Bu ilacı kullananlar aşı sıralamasında çok üst sıralarda olmasa da bir önceliği var. Ben de bu sayede aşı olabildim. Asla herhangi bir ayrıcalık söz konusu değildir ve bütün insanlık olarak yaşadığımız bu felakette ayrıcalık talep edecek biri değilim. Hepimize geçmiş olsun.Soral, yakın zamanda 'Crohn' hastası olduğu için Covid-19 aşısı olmuştu. Aşı sırasının kendisine nasıl geldiği merak eden bazı sosyal medya kullanıcıları Soral'ı ciddi şekilde eleştirmişti. Bunun üzerine Soral, sosyal medyadan açıklama yaparak Crohn hastalığı nedeniyle öncelik sırasının bulunduğunu belirtmişti. Son olarak eleştirilere yanıt veren Bensu Soral, “Sıram geldi ve aşı oldum. Olmamam mı gerekiyordu? Bana çok destek olan oldu dedikten sonra setin yolunu tuttu.Soral ayrıca, yeni başlayacak dizisi için, Kubilay ile enerjimiz tuttu. Kendisini çok sevdim, iyi anlaşıyoruz diye konuştsÖncelikle aşı sırası ve önceliği gibi konularda büyük bir hassasiyet olmasına çok sevindiğimi ve bu hassasiyeti paylaştığımı belirtmek isterim. Ben Crohn hastasıyım. Crohn; kronik bir rahatsızlık olmakla beraber her hafta kendime iğne yapmamı gerektiren bir hastalık. Maalesef kullandığım ilaç bağışıklığı çok düşürüyor. Bu ilacı kullananlar aşı sıralamasında çok üst sıralarda olmasa da bir önceliği var. Ben de bu sayede aşı olabildim. Asla herhangi bir ayrıcalık söz konusu değildir ve bütün insanlık olarak yaşadığımız bu felakette ayrıcalık talep edecek biri değilim. Hepimize geçmiş olsun.Soral, yakın zamanda 'Crohn' hastası olduğu için Covid-19 aşısı olmuştu. Aşı sırasının kendisine nasıl geldiği merak eden bazı sosyal medya kullanıcıları Soral'ı ciddi şekilde eleştirmişti. Bunun üzerine Soral, sosyal medyadan açıklama yaparak Crohn hastalığı nedeniyle öncelik sırasının bulunduğunu belirtmişti. Son olarak eleştirilere yanıt veren Bensu Soral, “Sıram geldi ve aşı oldum. Olmamam mı gerekiyordu? Bana çok destek olan oldu dedikten sonra setin yolunu tuttu.Soral ayrıca, yeni başlayacak dizisi için, Kubilay ile enerjimiz tuttu. Kendisini çok sevdim, iyi anlaşıyoruz diye konuşts",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
