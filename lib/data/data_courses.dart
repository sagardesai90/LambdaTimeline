class DataCourse {
  final String id;
  final String name;
  final String topics;
  final String duration;
  final String image;

  const DataCourse(
      {this.id, this.name, this.topics, this.duration, this.image});
}

List<DataCourse> datacourses = [
  const DataCourse(
    id: "1",
    name: "Descriptive Statistics",
    topics:
        "Storytelling with Data, Creating Effective Reports, and Hypothesis Testing",
    duration: "Weeks 1-5",
    image: "assets/images/data.png",
  ),
  const DataCourse(
    id: "2",
    name: "Predictive Statistics",
    topics:
        "Linear Algebra, Linear Regression, Advanced Regression, and Model Validation",
    duration: "Weeks 6-10",
    image: "assets/images/data.png",
  ),
  const DataCourse(
    id: "3",
    name: "Data Engineering",
    topics: "Databases, Productization, and Big Data",
    duration: "Weeks 11-15",
    image: "assets/images/data.png",
  ),
  const DataCourse(
    id: "4",
    name: "Machine Learning",
    topics:
        "Unsupervised Learning, Natural Language Processing, and Neural Networks",
    duration: "Weeks 16-20",
    image: "assets/images/data.png",
  ),
  const DataCourse(
    id: "5",
    name: "Computer Science",
    topics: "Algorithms, Data Structures and Graphs",
    duration: "Weeks 21-25",
    image: "assets/images/data.png",
  ),
  const DataCourse(
      id: "6",
      name: "Lambda Labs",
      topics:
          "Participate in our In-House Apprenticeship by building a real world project in a small team",
      duration: "Weeks 26-30",
      image: "assets/images/data.png"),
];
