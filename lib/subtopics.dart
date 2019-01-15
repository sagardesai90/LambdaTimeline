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
  const Subtopic(
    id: "3",
    name: "User Interface II",
    duration: "1 week",
    toolkit: "https://learn.lambdaschool.com/fsw/module/recgvxywt6avgtmhr"
  ),
  const Subtopic(
    id: "4",
    name: "User Interface III",
    duration: "1 week",
    toolkit: "https://learn.lambdaschool.com/fsw/module/recavbbzhh8btymdm"
  ),
  const Subtopic(
    id: "5",
    name: "Git for Web Development",
    duration: "1 week",
    toolkit: "https://learn.lambdaschool.com/fsw/module/rect59e95n6osvocd"
  ),
];