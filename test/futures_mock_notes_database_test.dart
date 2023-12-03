import 'package:futures_mock_notes_database/futures_mock_notes_database.dart';
import 'package:test/test.dart';

void main() {
  group('Mock Notes Database Tests', () {
    late NoteRepository noteRepository;

    setUp(() {
      noteRepository = MockNoteDatabase();
    });

    test('fetchNotes returns a list of notes', () async {
      var notes = await noteRepository.fetchNotes();
      expect(notes,
          isNotEmpty); // Assuming the mock database returns a non-empty list
    });

    test('fetchNotes returns the expected mock data', () async {
      var notes = await noteRepository.fetchNotes();
      expect(
          notes,
          equals([
            'Note 1',
            'Note 2',
            'Note 3'
          ])); // Replace with expected mock data
    });
  });
}
