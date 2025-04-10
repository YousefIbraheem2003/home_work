/*
q. A smart home system controls different devices such as lights, air conditioners, and security
cameras.
Each device has an on and off functionality.
Some devices have additional functionalities, e.g., adjusting temperature or motion detection.
The system should allow multiple devices to be controlled together.
Question:
How would you design a system where different devices share common functionalities but also have
unique behaviors?


A.I will create an abstract class called Device with common methods like turnOn() and turnOff().

Then, I will make classes like Light, AirConditioner, and Camera that extend Device and add their own unique features.

To control all devices together, I will use a list of Device objects and loop through them to turn them on or off at the same time.
*/

void main() {
  var light = Light();
  var ac = AirConditioner();
  var cam = Camera();

  var controller = Controller([light, ac, cam]);

  controller.turnAllOn();
  controller.turnOff();
}

class Controller {
  final List<Device> devices;

  Controller(this.devices);

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}

abstract class Device {
  void turnOn() {
    print('device turned on');
  }

  void turnOff() {
    print('device turned oFF');
  }
}

class Light extends Device {
  @override
  void turnOn() {
    print("Light turned on");
  }

  @override
  void turnOff() {
    print("Light turned off");
  }
}

class AirConditioner extends Device {
  @override
  void turnOn() {
    print("AC turned on");
  }

  @override
  void turnOff() {
    print("AC turned off");
  }

  void adjustTemperature(int temp) {
    print("Temperature set to $temp °C");
  }
}

class Camera extends Device {
  @override
  void turnOn() {
    print("Camera turned on");
  }

  @override
  void turnOff() {
    print("Camera turned off");
  }

  void detectMotion() {
    print("Motion detected!");
  }
}
