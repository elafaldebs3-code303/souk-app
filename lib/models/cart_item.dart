//انشاء ويدجيت
class CartItem {
  final String name;

  final double price;
  final String image;
  int quatity;
  CartItem({
    required this.name,

    required this.price, //سعر القطعة الواحدة
    required this.image,
    this.quatity = 1, //القيمة الافتراضية تساوي واحد وهو عدد القطع وممكن يتغير
  });
  //لحساب السعر الكلي وهي دالة
  double get totalprice => price * quatity;
}
