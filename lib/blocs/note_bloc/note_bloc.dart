import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:memories/models/note.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc() : super(NoteInitial()) {
    on<CreateNote>(_onCreateNote);
    on<FetchNotes>(_onFetchNotes);
    on<FetchNotesFromBin>(_onFetchNotesFromBin);
    on<UpdateNote>(_onUpdateNote);
    on<DeleteNotes>(_onDeleteNotes);
  }

  void _onCreateNote(
    CreateNote event,
    Emitter<NoteState> emit,
  ) async {
    emit(const NotesCreated());
  }

  void _onFetchNotes(
    FetchNotes event,
    Emitter<NoteState> emit,
  ) async {
    emit(const NotesFetched(notes: []));
  }

  void _onFetchNotesFromBin(
    FetchNotesFromBin event,
    Emitter<NoteState> emit,
  ) async {
    emit(const NotesFetched(notes: []));
  }

  void _onUpdateNote(
    UpdateNote event,
    Emitter<NoteState> emit,
  ) async {
    emit(const NoteUpdated());
  }

  void _onDeleteNotes(
    DeleteNotes event,
    Emitter<NoteState> emit,
  ) async {
    emit(const NotesDeleted());
  }
}
