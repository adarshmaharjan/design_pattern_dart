// originator
class Browser {
  String? address;

  createState() {
    return BrowserState(address!);
  }

  restoreState(BrowserState state) {
    address = state.content;
  }
}

// momento
class BrowserState {
  final String content;
  BrowserState(this.content);
}

// caretaker
class History {
  List<BrowserState> history = <BrowserState>[];
  void push(BrowserState state) {
    history.add(state);
  }

  BrowserState pop() {
    return history.removeAt(history.length - 1);
    // return history[history.length - 1];
  }
}

void main() {
  final chrome = Browser();
  final history = History();
  //1
  chrome.address = 'https://www.google.com';
  history.push(chrome.createState());
  //2
  chrome.address = 'https://www.youtube.com';
  history.push(chrome.createState());
  //3
  chrome.address = 'https://www.facebook.com';

  // history.push(chrome.createState());
  chrome.restoreState(history.pop());
  chrome.restoreState(history.pop());

  print(chrome.address);
}
