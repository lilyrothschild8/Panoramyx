// Flexion/Extension 1:4
// Axial Rotation 2:5
// Lateral Bending 3:6

#include <AccelStepper.h>

#define dirPin1 1
#define stepPin1 4
#define dirPin2 2
#define stepPin2 5
#define dirPin3
#define stepPin3 6
#define motorInterfaceType 1

AccelStepper stepper1 = AccelStepper(motorInterfaceType, stepPin1, dirPin1);
AccelStepper stepper2 = AccelStepper(motorInterfaceType, stepPin2, dirPin2);
AccelStepper stepper3 = AccelStepper(motorInterfaceType, stepPin3, dirPin3);

void setup() {
stepper1.setMaxSpeed(1000);
stepper2.setMaxSpeed(1000);
stepper3.setMaxSpeed(1000);
stepper1.setAcceleration(500);
stepper2.setAcceleration(500);
stepper3.setAcceleration(500);

}

void loop() {
stepper1.moveTo(8000);
stepper2.moveTo(8000);
stepper3.moveTo(8000);

stepper1.runToPosition();
stepper2.runToPosition();
stepper3.runToPosition();

delay(1000);

stepper1.moveTo(0);
stepper2.moveTo(0);
stepper3.moveTo(0);
stepper1.runToPosition();
stepper2.runToPosition();
stepper3.runToPosition();
delay(1000);
}
