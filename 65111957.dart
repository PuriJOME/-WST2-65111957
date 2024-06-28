class Person {
  String _name;

  Person(this._name);

  String get name => _name;

  set name(String name) {
    _name = name;
  }
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  int get speed => _speed; // Getter for speed

  void displayEngineInfo() {
    print('Engine Model: $_model, Max Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  void displayCarInfo() {
    print('Car: $_brand $_model');
    print('Owner: ${_owner.name}');
    _engine.displayEngineInfo();
  }

  void run() {
    print('Driving at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  void displayCarInfo() {
    super.displayCarInfo();
    print('Color: $_color');
  }

  void run() {
    print('Driving at 120 km/h');
  }
}

void main() {
// Create a person
  var person = Person('John Doe');

// Create an engine
  var engine = Engine('V6', 180);

// Create a car
  var car = Car('Toyota', 'Camry', person, engine);

// Display car information
  print('*** Car Information ***');
  car.displayCarInfo();
  car.run();
  print('');

  var honda = Honda('Honda', 'Civic', person, engine, 'Red');
// Display Honda car information
  print('*** Honda Car Information ***');
  honda.displayCarInfo();
  honda.run();
}
