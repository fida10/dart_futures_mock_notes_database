/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/futures_mock_notes_database_base.dart';

/*
Practice Question 2: Mock Notes Database

Task:

Design an interface called NoteRepository with an asynchronous method fetchNotes that 
returns a Future<List<String>>.

Implement a fake database class MockNoteDatabase that implements NoteRepository. 
fetchNotes should return a list of mock note strings after a delay.

Use the MockNoteDatabase to fetch notes and print them.
 */

abstract class NoteRepository {
  Future<List<String>> fetchNotes();
}

class MockNoteDatabase implements NoteRepository {
  @override
  Future<List<String>> fetchNotes() {
    return Future.delayed(
      Duration(seconds: 2),
      () => ['Note 1', 'Note 2', 'Note 3']
    );
  }
}