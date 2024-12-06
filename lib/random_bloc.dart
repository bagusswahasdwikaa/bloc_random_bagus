import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // StreamController untuk input event
  final _generateRandomController = StreamController<void>();
  // StreamController untuk output angka acak
  final _randomNumberController = StreamController<int>();
  
  // Sink untuk input
  Sink<void> get generateRandom => _generateRandomController.sink;
  // Stream untuk output
  Stream<int> get randomNumber => _randomNumberController.stream;

  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(10); // Angka acak dari 0 sampai 9
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}
