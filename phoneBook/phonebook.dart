class Contact {
  String firstName;
  String lastName;
  int phoneNumber;
  String address;

  Contact(this.firstName, this.lastName, this.phoneNumber, this.address);
}

class Phonebook {
  List<Contact> contacts = [];

  void addContact(firstName, lastName, phoneNumber, address) {
    var contact = new Contact(firstName, lastName, phoneNumber, address);
    contacts.add(contact);
  }

  void defaultFive() {
    addContact('Hannah', 'Labana', 09667436512, 'Canduman, Mandaue');
    addContact('Chanel', 'Siase', 09946352817, 'Talamban, Cebu');
    addContact('Bea', 'Maranan', 09735493374, 'Canduman, Mandaue');
    addContact('Mel', 'Maranan', 7463374453, 'Canduman, Mandaue');
    addContact('Arella', 'Bernales', 09284609899, 'Cubacub, Mandaue');
  }

  void displayContacts() {
    print("-----CONTACTS-----");
    for (var x in contacts) {
      print("Name: ${x.firstName} ${x.lastName}");
      print("Phone Num: ${x.phoneNumber}");
      print("Address: ${x.address}");
      print("-------------------");
    }
  }

  void deleteContact(String firstName, String lastName) {
    Contact? tbd = contacts
        .firstWhere((x) => x.firstName == firstName && x.lastName == lastName);

    contacts.remove(tbd);
  }

  void searchContact(String firstName, String lastName) {
    Contact? contact = contacts
        .firstWhere((x) => x.firstName == firstName && x.lastName == lastName);

    print("Name: ${contact.firstName} ${contact.lastName}");
    print("Phone Num: ${contact.phoneNumber}");
    print("Address: ${contact.address}");
  }
}
