import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// ShoppingScreen allows users to add, save, and delete shopping notes.
/// Notes are stored locally using shared_preferences for persistence.
/// The UI includes a text field for input, a list to display notes, and
/// buttons to add and delete items. Notes are saved and loaded automatically.
class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  final List<String> _shoppingNotes = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadShoppingNotes();
  }

  // Load saved shopping notes from shared preferences
  Future<void> _loadShoppingNotes() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? notes = prefs.getStringList('shoppingNotes');
    if (notes != null) {
      setState(() {
        _shoppingNotes.addAll(notes);
      });
    }
  }

  // Save shopping notes to shared preferences
  Future<void> _saveShoppingNotes() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('shoppingNotes', _shoppingNotes);
  }

  // Add new shopping note
  void _addShoppingNote() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _shoppingNotes.add(_controller.text);
        _controller.clear();
        _saveShoppingNotes(); // Save after adding
      });
    }
  }

  // Remove a shopping note and save the updated list
  void _deleteShoppingNoteAt(int index) {
    setState(() {
      _shoppingNotes.removeAt(index);
      _saveShoppingNotes(); // Save after removing
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Notes'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Enter item',
                      border: const OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addShoppingNote,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _shoppingNotes.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text(_shoppingNotes[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _deleteShoppingNoteAt(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
