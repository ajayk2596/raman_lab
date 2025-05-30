import '../../models/users/user_model.dart';

class ListViewDataController {
  final List<Users> _list=[
    Users(1, "Raman", "raman@gmail.com", 23, "Baghakol", "assets/images/budh.jpg"),
    Users(2, "Ajay", "ajay@gmail.com", 23, "Baghakol", "assets/images/ajay.png"),
    Users(3, "Aju", "aju@gmail.com", 23, "Baghakol", "assets/images/aju.png"),
    Users(1, "Raman", "raman@gmail.com", 23, "Baghakol", "assets/images/budh.jpg"),
    Users(2, "Ajay", "ajay@gmail.com", 23, "Baghakol", "assets/images/ajay.png"),
    Users(3, "Aju", "aju@gmail.com", 23, "Baghakol", "assets/images/aju.png"),
  ];
  List<Users> get list=>_list;
}
