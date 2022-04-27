class Question {
  final String question;
  final List<Answer> answers;
  Question(this.question, this.answers);
}

class Answer {
  final String answer;
  final int point;
  Answer(this.answer, this.point);
}

List<Question> questions = [
  Question("Greatest anime of all time?", [
    Answer("Naruto", 10),
    Answer('Bleach', 7),
    Answer("Attack on titan", 10),
    Answer("Demon Slayers", 8)
  ]),
  Question("Best AOT character?", [
    Answer("Erwin", 9),
    Answer('Mikasa', 7),
    Answer("Eren fucking yeager", 10),
    Answer("Levi", 8)
  ]),
  Question("Best Titan?", [
    Answer("Collosal titan", 9),
    Answer('Beast Titan', 7),
    Answer("Founding titan", 10),
    Answer("Warhammer Titan", 8)
  ])
];
const questionTotal = 30;
