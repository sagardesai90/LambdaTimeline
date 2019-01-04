class FullstackwebCourse {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String image;

  const FullstackwebCourse(
      {this.id,
      this.name,
      this.topics,
      this.duration,
      this.image
  });
}

List<FullstackwebCourse> fullstackwebcourses = [
  const FullstackwebCourse(
      id: "1",
      name: "Web Foundations",
      topics: "HTML, CSS, JavaScript, Git, and UI Principles",
      duration: "Weeks 1-5",
      image: "assets/images/fullstackweb.png",
      ),
  const FullstackwebCourse(
      id: "2",
      name: "Web Application Development",
      topics: "React, Redux, React Router, HTTP/Ajax, and Functional Programming Techniques",
      duration: "Weeks 6-10",
      image: "assets/images/fullstackweb.png",
      ),
  const FullstackwebCourse(
      id: "3",
      name: "Back End Development",
      topics: "Node.js, Express, SQL, SQLite, Authentication, OAuth",
      duration: "Weeks 11-15",
      image: "assets/images/fullstackweb.png",
      ),
  const FullstackwebCourse(
      id: "4",
      name: "Data Structures and Algorithms",
      topics: "Python, Algorithms, Data Structures, Graphs, and Django",
      duration: "Weeks 16-20",
      image: "assets/images/fullstackweb.png",
      ),
  const FullstackwebCourse(
      id: "5",
      name: "Networking and Computer Architecture",
      topics: "C, Operating Systems, Hash Tables, Networking, and Computer Architecture",
      duration: "Weeks 21-25",
      image: "assets/images/fullstackweb.png",
      ),
  const FullstackwebCourse(
      id: "6",
      name: "Lambda Labs",
      topics: "Participate in our In-House Apprenticeship by building a real world project in a small team",
      duration: "Weeks 26-30",
      image: "assets/images/fullstackweb.png"
      ),
];
