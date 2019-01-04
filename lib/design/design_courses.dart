class DesignCourse {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String image;

  const DesignCourse(
      {this.id,
      this.name,
      this.topics,
      this.duration,
      this.image
  });
}

List<DesignCourse> designcourses = [
  const DesignCourse(
      id: "1",
      name: "UX Principles and the Responsive Web",
      topics: "Discovery, Definition, Ideation, and Design Principles",
      duration: "Weeks 1-5",
      image: "assets/images/design.png",
      ),
  const DesignCourse(
      id: "2",
      name: "Advanced UX Design Concepts and Mobile Considerations",
      topics: "Advanced Discovery, Definition, Ideation, UX Leadership, and Design Systems",
      duration: "Weeks 6-10",
      image: "assets/images/design.png",
      ),
  const DesignCourse(
      id: "3",
      name: "Advanced UX Design in Practice",
      topics: "Google Sprints and Small Group Projects",
      duration: "Weeks 11-15",
      image: "assets/images/design.png",
      ),
  const DesignCourse(
      id: "4",
      name: "Web Development Fundamentals",
      topics: "HTML, CSS, and JavaScript",
      duration: "Weeks 16-20",
      image: "assets/images/design.png",
      ),
  const DesignCourse(
      id: "5",
      name: "Mobile Development Fundamentals",
      topics: "iOS or Android Fundamentals (Networking, Data, etc.)",
      duration: "Weeks 21-25",
      image: "assets/images/design.png",
      ),
  const DesignCourse(
      id: "6",
      name: "Lambda Labs",
      topics: "Participate in our In-House Apprenticeship by building a real world project in a small team",
      duration: "Weeks 26-30",
      image: "assets/images/design.png"
      ),
];
