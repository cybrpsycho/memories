class Note {
  final String uid;
  final String title;
  final String content;
  final DateTime dateCreated;
  final DateTime dateModified;

  const Note({
    required this.uid,
    required this.title,
    required this.content,
    required this.dateCreated,
    required this.dateModified,
  });
}
