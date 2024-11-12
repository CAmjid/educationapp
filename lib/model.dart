class Student{
  String?id;
  String?address;
  String?courses;
  String?name;
  int?stutus;

  Student({
  this.address,
  this.id,
  this.name,
  this.courses,
  this.stutus
  });
  
  factory Student.fromjson(Map<String,dynamic>json){
    return Student(
id: json['id'],
name: json['name'],
courses: json['courses'],
address: json['address'],
stutus: json['stutus']
    );
  }
  Map<String, dynamic> toJson()
  {
final Map<String,dynamic>data=Map();
data['id']=id;
data['name']=name;
data['courses']=courses;
data['address']=address;
data['status']=stutus;

return data;


  }

}