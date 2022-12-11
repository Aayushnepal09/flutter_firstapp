import 'package:flutter/material.dart';

class studentDetails extends StatefulWidget {
  const studentDetails({Key? key}) : super(key: key);

  @override
  State<studentDetails> createState() => _studentDetailsState();
}

class _studentDetailsState extends State<studentDetails> {
  void _display() {
    Navigator.pushNamed(context, '/displayStudent');
  }

  final _NameController = TextEditingController();
  final _LastNController = TextEditingController();
  final _AgeController = TextEditingController();
  final _AddressController = TextEditingController();

  String? _val = 'male';

  String? dropdownvalue = 'kathmandu';

  var items = ['bkt', 'kathmandu', 'lalitpur'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Student Details',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: _NameController,
                //labeled
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'first name'),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _LastNController,
                //labeled
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'last name'),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _AgeController,
                //labeled
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'age'),
              ),
              const SizedBox(
                height: 8,
              ),
              //radio button
              const Text(
                'select gender',
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
              RadioListTile(
                title: const Text("male"),
                value: 'male',
                groupValue: _val,
                onChanged: (val) {
                  setState(() {
                    _val = val;
                  });
                },
              ),
              RadioListTile(
                title: const Text("female"),
                value: 'female',
                groupValue: _val,
                onChanged: (val) {
                  setState(() {
                    _val = val;
                  });
                },
              ),
              RadioListTile(
                title: const Text("other"),
                value: 'female',
                groupValue: _val,
                onChanged: (val) {
                  setState(() {
                    _val = val;
                  });
                },
              ),
              //label
              TextFormField(
                controller: _AddressController,
                maxLines: 3,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Address'),
              ),
              const SizedBox(
                height: 8,
              ),
              //dropdown
              SizedBox(
                width: double.infinity,
                child: DropdownButton(
                  isExpanded: true,
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('submit'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      _display();
                    },
                    child: const Text('Display student')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
