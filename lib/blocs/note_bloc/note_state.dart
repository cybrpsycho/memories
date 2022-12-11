part of 'note_bloc.dart';

abstract class NoteState extends Equatable {
  const NoteState();

  @override
  List<Object> get props => [];
}

class NoteInitial extends NoteState {}

class NotesFetched extends NoteState {
  final List<Note> notes;

  const NotesFetched({required this.notes});

  @override
  List<Object> get props => [notes];
}

class NotesCreated extends NoteState {
  const NotesCreated();
}

class NoteUpdated extends NoteState {
  const NoteUpdated();
}

class NotesDeleted extends NoteState {
  const NotesDeleted();
}

class NotesError extends NoteState {
  final String errorMessage;

  const NotesError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
