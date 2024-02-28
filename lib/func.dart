void main() {
  Cat lion = Cat(id:1,name:"torte",color:"black",nickname:"whiskers",);
  Animal dog= Animal(id:4,name:"bert");
  Animal horse= Animal(id:5,name:"steve",color:"black");
  Animal(id:3,name:"cat",color:"red").printdetials();
  print(horse.color);
  print(lion.id);
  lion.sound();



}
class Cat extends Animal{
  int weight=45;
  Cat({super.id,super.name,super.color,super.nickname});
@override
  void sound() {
    // TODO: implement sound
    super.sound();
    print("$name makes sound");
  }
}
class Animal{
  int ? id=1;
  String ? name="lion";
  String ? color="gold";
  String ? nickname="tt";
  Animal({this.id,this.name,this.color,this.nickname});

  void sound(){
    print("animal makes sound");
  }

  void printdetials(){
    print(id);
    print(name);
    print(color);
    print(nickname);
  }
}

