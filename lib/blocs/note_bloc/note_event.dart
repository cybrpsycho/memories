part of 'note_bloc.dart';

abstract class NoteEvent extends Equatable {
  const NoteEvent();

  @override
  List<Object> get props => [];
}

class CreateNote extends NoteEvent {
  final Note note;

  const CreateNote({required this.note});
}

class FetchNotes extends NoteEvent {}

class FetchNotesFromBin extends NoteEvent {}

class UpdateNote extends NoteEvent {
  final Note note;

  const UpdateNote({required this.note});
}

class DeleteNotes extends NoteEvent {
  final List<String> noteUids;

  const DeleteNotes({required this.noteUids});
}
