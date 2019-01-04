class Subtopic {
  final String id;
  final String name;
  final String duration;
  final String toolkit;

  const Subtopic(
      {this.id,
      this.name,
      this.duration,
      this.toolkit});
}

List<Subtopic> subtopics = [
  const Subtopic(
    id: "1",
    name: "Intro to User Interface and Git",
    duration: "1 week",
    toolkit: "https://learn.lambdaschool.com/fsw/sprint/recfwzvi7qhma7xbg"
  ),
  const Subtopic(
    id: "2",
    name: "User Interface I",
    duration: "1 week",
    toolkit: "https://learn.lambdaschool.com/fsw/module/recl0iyzs2vl89lza"
  ),
];