class AndroidCourse {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String image;

  const AndroidCourse(
      {this.id, this.name, this.topics, this.duration, this.image});
}

List<AndroidCourse> androidcourses = [
  const AndroidCourse(
    id: "1",
    name: "Android Fundamentals",
    topics: "Java, Activities, Intents, Networking, and SQL Databases",
    duration: "Weeks 1-5",
    image: "assets/images/android.png",
  ),
  const AndroidCourse(
    id: "2",
    name: "Intermediate Android",
    topics:
        "Custom User Interfaces, Animations, Intermediate Java, and Debugging",
    duration: "Weeks 6-10",
    image: "assets/images/android.png",
  ),
  const AndroidCourse(
    id: "3",
    name: "Android Deep Dive",
    topics: "Advanced Architecture, APIs, Kotlin, and Advanced Java",
    duration: "Weeks 11-15",
    image: "assets/images/android.png",
  ),
  const AndroidCourse(
    id: "4",
    name: "Data Structures and Algorithms",
    topics: "Python, Algorithms, Data Structures, Graphs, and Django",
    duration: "Weeks 16-20",
    image: "assets/images/android.png",
  ),
  const AndroidCourse(
    id: "5",
    name: "Networking and Computer Architecture",
    topics:
        "C, Operating Systems, Hash Tables, Networking, and Computer Architecture",
    duration: "Weeks 21-25",
    image: "assets/images/android.png",
  ),
  const AndroidCourse(
      id: "6",
      name: "Lambda Labs",
      topics:
          "Participate in our In-House Apprenticeship by building a real world project in a small team",
      duration: "Weeks 26-30",
      image: "assets/images/android.png"),
];
