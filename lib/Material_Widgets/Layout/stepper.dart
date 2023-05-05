import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({Key? key}) : super(key: key);

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stepper ")),
      body: Stepper(
        physics: const NeverScrollableScrollPhysics(),
        elevation: 25,
        currentStep: index,
        onStepCancel: () {
          setState(() {
            if (index > 0) {
              index -= 1;
            }
          });
        },
        onStepContinue: () {
          setState(() {
            if (index <= 1) {
              index += 1;
            }
          });
        },
        onStepTapped: (int tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        steps: [
          Step(
              title: const Text("Step 1 Title"),
              content: const Text("Content for Step 1"),
              isActive: index > 0,
              state: index >= 0 ? StepState.complete : StepState.disabled),
          Step(
              title: const Text("Step 2 Title"),
              content: const Text("Content for Step 2"),
              isActive: index > 1,
              state: index >= 1 ? StepState.complete : StepState.disabled),
          Step(
              title: const Text("Step 3 Title"),
              content: const Text("Content for Step 3"),
              isActive: index > 2,
              state: index >= 2 ? StepState.complete : StepState.disabled),
        ],
      ),
    );
  }
}
