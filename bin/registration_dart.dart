import 'dart:io';

void main() {
  List<String> userNames = [];
  List<String> passwords = [];

  while (true) {
    print(
        "1-> qo'shish; 2-> ko'rish; 3-> tahrirlash; 4-> o'chirish; 5-> qidirish");
    int n = int.parse(stdin.readLineSync()!!);
    switch (n) {
      case 1:
        {
          print('Foydalanuvchi usernameini kiriting:');
          String userName = stdin.readLineSync()!!;
          print('Parol kiriting:');
          String password = stdin.readLineSync()!!;
          userNames.add(userName);
          passwords.add(password);
          print('Saqlandi');
        }
        break;
      case 2:
        {
          if (userNames.isNotEmpty) {
            for (int i = 0; i < userNames.length; i++) {
              print("${userNames[i]} - ${passwords[i]}");
            }
          } else {
            print("Ro'yhat bo'sh");
          }
        }
        break;
      case 3:
        {
          print("Tahrirlamoqchi bo'lgan foydalanuvchini tanlang:");
          for(int i = 0; i<userNames.length; i++){
            print("$i - > ${userNames[i]} ${passwords[i]}");
          }
          int index = int.parse(stdin.readLineSync()!!);
          if(index>=0 && index<userNames.length){
            print('Yangi username:');
            userNames[index] = stdin.readLineSync()!!;
            print('Yangi parol:');
            passwords[index] = stdin.readLineSync()!!;
            print('Tahrirlandi');
          }else{
            print("Noto'g'ri index tanladingiz");
          }
        }
        break;
      case 4:
        {
          print('Qaysi birini ochiramiz:');
          for(int i = 0; i<userNames.length; i++){
            print("$i -> ${userNames[i]} ${passwords[i]}");
          }
          int index = int.parse(stdin.readLineSync()!!);
          if(index>=0 && index<userNames.length){
            userNames.removeAt(index);
            passwords.removeAt(index);
            print("O'chirildi");
          }else{
            print("Bunday foydalanuvchi yo'q");
          }
        }
        break;
      case 5:
        {
          print("Qidirmoqchi bo'lgan foydalanuvchi ismini kiriting: ");
          String searchName = stdin.readLineSync()!!;
          for (int i = 0; i< userNames.length; i++) {
            String value = userNames[i];
            if(value.toLowerCase().contains(searchName.toLowerCase())){
              print("$value - ${passwords[i]}");
            }
          }
        }
        break;
    }
  }
}
