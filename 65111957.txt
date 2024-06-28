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

  String get model => _model;

  set model(String model) {
    _model = model;
  }

  int get speed => _speed; 

  set speed(int speed) {
    _speed = speed;
  }

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

  String get brand => _brand;

  set brand(String brand) {
    _brand = brand;
  }

  String get model => _model;

  set model(String model) {
    _model = model;
  }

  Person get owner => _owner;

  set owner(Person owner) {
    _owner = owner;
  }

  Engine get engine => _engine;

  set engine(Engine engine) {
    _engine = engine;
  }

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

  String get color => _color;

  set color(String color) {
    _color = color;
  }

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
  var person = Person('Jome Puritat');

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
