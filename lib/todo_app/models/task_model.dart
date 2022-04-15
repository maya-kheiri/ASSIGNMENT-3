class Task {
  String title;
  bool isCompleted;
  bool remove;

  Task(this.title, [this.isCompleted = false, this.remove = false]);
}
