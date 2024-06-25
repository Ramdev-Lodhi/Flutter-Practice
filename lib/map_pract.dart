main(){
print("Hello ! Ramdev Lodhi");
  // var data = {
  //
  //   'Name' : 'Ramdev lodhi',
  //   'Age': 20,
  //   'Gender':'Male',
  //   'Clg':'IPS Academy',
  //   'Mobile Number': 8815225624
  //
  // };
  var data = Map();
data['Name'] = 'Ramdev Lodhi';
data['Age'] = 20;
data['Gender'] = ' Male';
data['Cld'] = 'IPS Academy';
data['Mobile Number'] = 8815225624;


print(data.isEmpty);
print(data.isNotEmpty);
print(data.length);
print(data.keys);
print(data.values);
print(data.containsKey('Clg'));
print(data.remove('Gender'));
print(data);
}