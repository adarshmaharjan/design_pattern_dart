class BankAccount {
  late num _balance;

  BankAccount();

  num? get balance => _balance;
  BankAccount.open() {
    _submitPapers();
    _approvalFromManager();
    _submitInDB();
  }

  void _submitPapers() {}

  void _approvalFromManager() {}

  void _submitInDB() {}

  void setBalance(num amount) {
    if (amount > 0) {
      _balance = amount;
    } else {
      throw Exception('Amount must be greater than 0');
    }
  }

  void deposit(num depositAmount) {
    if (depositAmount > 0) {
      _balance += depositAmount;
      // setBalance = _balance;
    } else {
      throw Exception('Amount must be greater than 0');
    }
  }

  void withdraw(num withdrawAmount) {
    if (withdrawAmount < _balance) {
      _balance -= withdrawAmount;
    } else {
      throw Exception('Amount must be less than balance');
    }
  }
}

abstract class PKWidget {
  String? text;
  PKWidget();

  void enable() {
    print('PKWidget enabled');
  }

  void disable() {
    print('PKWidget disabled');
  }

  void render();
}

class PKTextBox extends PKWidget {
  PKTextBox();
  @override
  void render() {
    print('rendering text box');
  }
}

class PKButton extends PKWidget {
  PKButton();
  @override
  void render() {
    print('rendering button');
  }
}

abstract class RenderingEngine {
  void render();
}

renderComponent(PKWidget pkWidget) {
  pkWidget.render();
}

void main() {
  // var pkAccount = BankAccount();
  // pkAccount.setBalance(1000);
  // pkAccount.deposit(500);
  // pkAccount.withdraw(100);
  // print(pkAccount.balance);

  // var button = PKButton();
  // button.text = "Pawan";
  // button.enable();
  // button.disable();
  renderComponent(PKTextBox());
  renderComponent(PKButton());
}
