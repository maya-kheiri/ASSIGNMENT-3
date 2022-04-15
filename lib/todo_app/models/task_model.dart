class Task {
  String title;
  int id ;
  bool isCompleted;
  bool remove;

  Task(this.title, this.id , [this.isCompleted = false, this.remove = false]);
}
