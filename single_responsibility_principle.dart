class OrderCalculator {
  num? totalAmount;
  num? taxPercentage;
  num? tip;
  num? shipping;

  void calculateOrder() {
    final orderValue =
        totalAmount! + (totalAmount! * taxPercentage!) + tip! + shipping!;
    print('Order value is $orderValue');
    EmailOrder.sendEmail();
  }
}

class EmailOrder {
  static final email = "adarsh@gmail.com";
  static void sendEmail() {
    print('Sending email to $email');
  }
}

void main() {
  final orderCalculator = OrderCalculator();
  orderCalculator.totalAmount = 1000;
  orderCalculator.taxPercentage = 0.2;
  orderCalculator.tip = 100;
  orderCalculator.shipping = 50;
  orderCalculator.calculateOrder();
}
