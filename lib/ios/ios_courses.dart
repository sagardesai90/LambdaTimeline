class IosCourse {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String image;

  const IosCourse({this.id, this.name, this.topics, this.duration, this.image});
}

List<IosCourse> ioscourses = [
  const IosCourse(
    id: "1",
    name: "iOS Fundamentals",
    topics: "Swift, UIKit, Networking, Core Data, and Debugging",
    duration: "Weeks 1-5",
    image: "assets/images/ios.png",
  ),
  const IosCourse(
    id: "2",
    name: "Intermediate iOS",
    topics:
        "Customer User Interfaces, Code Quality, Design Patterns, and Testing",
    duration: "Weeks 6-10",
    image: "assets/images/ios.png",
  ),
  const IosCourse(
    id: "3",
    name: "iOS Deep Dive",
    topics: "Objective-C, Media, and Other Apple Platforms",
    duration: "Weeks 11-15",
    image: "assets/images/ios.png",
  ),
  const IosCourse(
    id: "4",
    name: "Data Structures and Algorithms",
    topics: "Python, Algorithms, Data Structures, Graphs, and Django",
    duration: "Weeks 16-20",
    image: "assets/images/ios.png",
  ),
  const IosCourse(
    id: "5",
    name: "Networking and Computer architecture",
    topics:
        "C, Operating Systems, Hash Tables, Networking, and Computer Architecture",
    duration: "Weeks 21-25",
    image: "assets/images/ios.png",
  ),
  const IosCourse(
    id: "6",
    name: "Lambda Labs",
    topics:
        "Participate in our In-House Apprenticeship by building a real world project in a small team",
    duration: "Weeks 26-30",
    image: "assets/images/ios.png",
  ),
];
