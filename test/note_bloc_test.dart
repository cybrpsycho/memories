import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:memories/blocs/note_bloc/note_bloc.dart';
import 'package:memories/models/note.dart';

void main() {
  group('Note Bloc', () {
    late NoteBloc noteBloc;

    setUp(() => noteBloc = NoteBloc());

    test('emits NoteInitial when NoteBloc is created', () {
      expect(noteBloc.state, isA<NoteInitial>());
    });

    blocTest(
      'emits NotesCreated when CreateNote is added',
      build: () => noteBloc,
      act: (bloc) => bloc.add(
        CreateNote(
          note: Note(
            uid: 'uid',
            title: 'title',
            content: 'content',
            dateCreated: DateTime.now(),
            dateModified: DateTime.now(),
          ),
        ),
      ),
      expect: () => [isA<NotesCreated>()],
    );

    blocTest(
      'emits NotesFetched when FetchNotes is added',
      build: () => noteBloc,
      act: (bloc) => bloc.add(FetchNotes()),
      expect: () => [isA<NotesFetched>()],
    );

    blocTest(
      'emits NotesFetched when FetchNotesFromBin is added',
      build: () => noteBloc,
      act: (bloc) => bloc.add(FetchNotesFromBin()),
      expect: () => [isA<NotesFetched>()],
    );

    blocTest(
      'emits NoteUpdated when UpdateNote is added',
      build: () => noteBloc,
      act: (bloc) => bloc.add(
        UpdateNote(
          note: Note(
            uid: 'uid',
            title: 'title',
            content: 'content',
            dateCreated: DateTime.now(),
            dateModified: DateTime.now(),
          ),
        ),
      ),
      expect: () => [isA<NoteUpdated>()],
    );

    blocTest(
      'emits NotesDeleted when DeleteNotes is added',
      build: () => noteBloc,
      act: (bloc) => bloc.add(const DeleteNotes(noteUids: [''])),
      expect: () => [isA<NotesDeleted>()],
    );
  });
}
