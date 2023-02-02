import '../models/ContactModel.dart';

List<ContactModel> searcheContact(String searchedStr) {
  searchedList.clear();

  var contactList;
  contactList.forEach((contact) {
    if (contact.name.toLowerCase().contains(searchedStr.toLowerCase())) {
      searchedList.add(contact);
    }
  });

  return searchedList;
}

List<ContactModel> searchedList = [];
