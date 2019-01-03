class Course {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String startdates;
  final String image;
  final String description;
  final String apply;

  const Course(
      {this.id,
      this.name,
      this.topics,
      this.duration,
      this.startdates,
      this.image,
      this.description,
      this.apply});
}

List<Course> courses = [
  const Course(
      id: "1",
      name: "Full-Stack Web",
      topics: "Software engineering, web development, and computer science",
      duration: "30 weeks",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/fullstackweb.png",
      description: "The Lambda Full-Stack Web track will help you master everything from the user interface on the front end to the server on the back end. It will set you up to succeed in the software engineering field, and give you an x-factor - a deep understanding of computer science. The curriculum provides in-depth coverage of HTML, CSS, Javascript, Python and C.",
      apply: "https://lambdaschool.com/courses/cs/web/full-time/apply/"
      ),
  const Course(
      id: "2",
      name: "Data science",
      topics: "Machine learning, deep learning, and neural networks",
      duration: "30 weeks",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/data.png",
      description: "The Lambda Data Science track will give you a thorough understanding of Statistics, Data Engineering, and Machine Learning. It will set you up to succeed in the Data Science field, and give you an x-factor - a deep understanding of computer science. By the end of the curriculum you'll have built a solid foundation and launched advanced statistical models.",
      apply: "https://lambdaschool.com/courses/data-science/full-time/apply/"
      ),
  const Course(
      id: "3",
      name: "iOS Development",
      topics: "Swift, Objective C, and computer science",
      duration: "30 weeks",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/ios.png",
      description: "The Lambda iOS track will help you master major iOS languages including Swift and Objective C, using Xcode, Playgrounds, and UIKit basics. It will set you up to succeed in the iOS development field, and give you an x-factor - a deep understanding of computer science. By the end of the curriculum you will be able to build full iOS applications from scratch and launch them to the app store.",
      apply: "https://lambdaschool.com/courses/cs/ios/full-time/apply/"
      ),
  const Course(
      id: "4",
      name: "Android Development",
      topics: "Java, mobile development, and computer science",
      duration: "30 weeks",
      startdates: "March 18th, July 8th",
      image: "assets/images/android.png",
      description: "The Lambda Android track will give you a thorough understanding of Android basics including using Android Studio, Interface Builder, and Java fundamentals. It will set you up to succeed in the Android development field, and give you an x-factor - a mastery of computer science. By the end of the curriculm, you will be able to build Android app with a variety of layouts, build and launch it to the app store.",
      apply: "https://lambdaschool.com/courses/cs/android/full-time/apply/"
      ),
  const Course(
      id: "5",
      name: "UX design",
      topics: "UX design, web and mobile development",
      duration: "30 weeks",
      startdates: "Feb 11, Mar 18, Apr 22",
      image: "assets/images/design.png",
      description:
          "The Lambda UX Design track will help you master the product design cycle. It will give you a thorough understanding of many of the processes and heuristics UX designers use to create great digital experiences. The curriculum provides in-depth coverage of user research, ideation, prototyping and user testing.",
          apply: "https://lambdaschool.com/courses/ux/full-time/apply/"
      ),
];
