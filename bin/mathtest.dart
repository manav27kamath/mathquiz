import 'dart:io';
import 'dart:math';

void main() {
  Random rand = new Random();
  int correctAnswer, userAnswer, operand1, operand2, operation;
  int numCorrect = 0;
  int i = 0;
  while (i < 5) {
    operation = rand.nextInt(3);
    operand1 = rand.nextInt(11);
    operand2 = rand.nextInt(11);

    switch (operation) {
      case 0:
        print("$operand1 + $operand2 = ");
        correctAnswer = operand1 + operand2;
        i++;
        break;
      case 1:
        print("$operand1 - $operand2 = ");
        correctAnswer = operand1 - operand2;
        i++;
        break;
      case 2:
        print("$operand1 * $operand2 = ");
        correctAnswer = operand1 * operand2;
        i++;
        break;
      default:
        break;
    }

    String inTemp = stdin.readLineSync();
    userAnswer = int.parse(inTemp);

    if (userAnswer == correctAnswer) {
      numCorrect++;
      print("\nYOUR ANSWER IS CORRECT , GOOD JOB!\n");
    } else {
      print("\nYOUR ANSWER IS WRONG!\n");
    }
  }
  print("Thank you for Taking the Math Test!");
  print("You got $numCorrect out of 5 correct.");
}
