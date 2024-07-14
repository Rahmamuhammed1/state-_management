import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  const SetState({super.key});

  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  final List filterNames = const [
    'قيد التنفيذ',
    'الملغية',
    'المكتملة',
    'تحت المراجعة',
    'تمت'
  ];
  int? _selectedIndex;
  bool isSelected = false;
  bool isObscure = true;
  int? currentButtonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filterNames.length,
                      itemBuilder: (context, index) {
                        final bool isSelected = _selectedIndex == index;
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    isSelected ? Colors.blue : Colors.grey),
                            onPressed: () {
                              setState(() {
                                _selectedIndex = isSelected ? null : index;
                              });
                            },
                            child: Text(
                              filterNames[index],
                              style: TextStyle(
                                  color:
                                      isSelected ? Colors.white : Colors.black),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              obscureText: isObscure ? true : false,
              decoration: InputDecoration(
                labelText: 'Enter Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          _buildContext(),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {
                setState(() {
                  currentButtonIndex = 1;
                });
              },
              child: const Text(
                'Show Text',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {
                setState(() {
                  currentButtonIndex = 2;
                });
              },
              child: const Text(
                'Show cubit image',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {
                setState(() {
                  currentButtonIndex = 3;
                });
              },
              child: const Text(
                'Show the red circle',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder()),
              onPressed: () {
                setState(() {
                  currentButtonIndex = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContext() {
    switch (currentButtonIndex) {
      case 0:
        return const Text('');
      case 1:
        return const Text('Hello World');
      case 2:
        return Image.asset(
          'assets/images/logo.png',
          height: 60,
          width: 60,
        );
      case 3:
        return Container(
          height: 70,
          width: 70,
          decoration:
              const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        );
      default:
        return const Text('');
    }
  }
}