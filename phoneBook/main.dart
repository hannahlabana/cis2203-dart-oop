import 'phonebook.dart';

void main() {
  var phonebook = new Phonebook();
  phonebook.defaultFive();
  phonebook.displayContacts();
  phonebook.addContact("Ashley", "Sullano", 09384679432, "Casili, Mandaue");
  print("-------------------------");
  print("-------ADD CONTACT-------");
  print("-------------------------");
  phonebook.displayContacts();
  print("-------------------------");
  print("-------DELETE CONTACT-------");
  print("-------------------------");
  phonebook.deleteContact("Hannah", "Labana");
  phonebook.displayContacts();
  print("-------------------------");
  print("-------SEARCH RESULTS-------");
  print("-------------------------");
  phonebook.searchContact("Mel", "Maranan");
}
