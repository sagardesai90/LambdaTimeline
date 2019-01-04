class IosCourse {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String startdates;
  final String image;
  final String description;
  final String apply;

  const IosCourse(
      {this.id,
      this.name,
      this.topics,
      this.duration,
      this.startdates,
      this.image,
      this.description,
      this.apply});
}

List<IosCourse> ioscourses = [
  const IosCourse(
      id: "1",
      name: "iOS Fundamentals",
      topics: "Swift, UIKit, Networking, Core Data, and Debugging",
      duration: "Weeks 1-5",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/ios.png",
      description: "The Lambda Full-Stack Web track will help you master everything from the user interface on the front end to the server on the back end. It will set you up to succeed in the software engineering field, and give you an x-factor - a deep understanding of computer science. The curriculum provides in-depth coverage of HTML, CSS, Javascript, Python and C.",
      apply: "https://lambdaschool.com/courses/cs/web/full-time/apply/"
      ),
  const IosCourse(
      id: "2",
      name: "Intermediate iOS",
      topics: "Customer User Interfaces, Code Quality, Design Patterns, and Testing",
      duration: "Weeks 6-10",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/ios.png",
      description: "The Lambda Data Science track will give you a thorough understanding of Statistics, Data Engineering, and Machine Learning. It will set you up to succeed in the Data Science field, and give you an x-factor - a deep understanding of computer science. By the end of the curriculum you'll have built a solid foundation and launched advanced statistical models.",
      apply: "https://lambdaschool.com/courses/data-science/full-time/apply/"
      ),
  const IosCourse(
      id: "3",
      name: "iOS Deep Dive",
      topics: "Objective-C, Media, and Other Apple Platforms",
      duration: "Weeks 11-15",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/ios.png",
      description: "The Lambda iOS track will help you master major iOS languages including Swift and Objective C. It will set you up to succeed in the iOS development field, and give you an x-factor - a deep understanding of computer science. By the end of the curriculum you will be able to build full iOS applications from scratch and launch them to the app store.",
      apply: "https://lambdaschool.com/courses/cs/ios/full-time/apply/"
      ),
  const IosCourse(
      id: "4",
      name: "Data Structures and Algorithms",
      topics: "Python, Algorithms, Data Structures, Graphs, and Django",
      duration: "Weeks 16-20",
      startdates: "March 18th, July 8th",
      image: "assets/images/ios.png",
      description: "The Lambda Android track will give you a thorough understanding of Java: Databases, User Interfaces, and Advanced Architecture. It will set you up to succeed in the Android development field, and give you an x-factor - a mastery of computer science. By the end of the curriculm, you will be able to build full Android apps and launch them to the app store.",
      apply: "https://lambdaschool.com/courses/cs/android/full-time/apply/"
      ),
  const IosCourse(
      id: "5",
      name: "Networking and Computer architecture",
      topics: "C, Operating Systems, Hash Tables, Networking, and Computer Architecture",
      duration: "Weeks 21-25",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/ios.png",
      description:
          "The Lambda UX Design track will help you master the product design cycle. It will give you a thorough understanding of many of the processes and heuristics UX designers use to create great digital experiences. The curriculum provides in-depth coverage of user research, ideation, prototyping, user testing and even web development fundamentals.",
          apply: "https://lambdaschool.com/courses/ux/full-time/apply/"
      ),
  const IosCourse(
      id: "6",
      name: "Lambda Labs",
      topics: "Participate in our In-House Apprenticeship by building a real world project in a small team",
      duration: "Weeks 26-30",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/ios.png",
      description:
          "The Lambda UX Design track will help you master the product design cycle. It will give you a thorough understanding of many of the processes and heuristics UX designers use to create great digital experiences. The curriculum provides in-depth coverage of user research, ideation, prototyping, user testing and even web development fundamentals.",
          apply: "https://lambdaschool.com/courses/ux/full-time/apply/"
      ),
];
