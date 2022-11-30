// abstract class TaxCalculator {
//   num? baseInterest = 5;
//   void calculateTax();
// }

// class TaxCalculator2021 implements TaxCalculator {
//   @override
//   num? baseInterest;

//   @override
//   void calculateTax() {
//     print('20% hua 1L rupees');
//   }
// }

class OrderCalculator {
  num? totalAmount;
  num? taxPercentage;
  num? tip;
  num? shipping;
  num? balance;

  void calculateOrder() {
    final orderValue =
        totalAmount! + (totalAmount! * taxPercentage!) + tip! + shipping!;
    print('Order value is $orderValue');
  }
}

class EmailOrder {
  static final email = "adarsh@gmail.com";
  static void sendEmail() {
    print('Sending email to $email');
  }
}

class CustomerInfo extends OrderCalculator {
  num? balance = 2000;
}

void main() {
  final customerInfo = CustomerInfo();
  // customerInfo.balance = 2000;
  customerInfo.totalAmount = 1000;
  final orderCalculator = OrderCalculator();
  customerInfo.totalAmount = 1000;
  customerInfo.taxPercentage = 0.2;
  customerInfo.tip = 100;
  customerInfo.shipping = 50;
  customerInfo.calculateOrder();
  EmailOrder.sendEmail();
  print(customerInfo.balance);
}
