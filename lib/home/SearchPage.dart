import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _searchTerm = '';
  List<String> _filters = [];

  void _updateSearchTerm(String term) {
    setState(() {
      _searchTerm = term;
    });
  }

  void _toggleFilter(String filter) {
    setState(() {
      if (_filters.contains(filter)) {
        _filters.remove(filter);
      } else {
        _filters.add(filter);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: _updateSearchTerm,
                            decoration: InputDecoration(
                              hintText: 'Enter search term',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Perform search action here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Wrap(
                spacing: 50.0,
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      chipTheme: Theme.of(context).chipTheme.copyWith(
                            // Customize specific properties of the chip
                            labelStyle: TextStyle(
                                fontSize:
                                    20.0), // Adjust the font size of the chip label
                            // Add other customizations as needed
                          ),
                    ),
                    child: FilterChip(
                      label: Text(
                        'Needer',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: _filters.contains('Needer')
                          ? Color(0xff0097b2)
                          : Colors.grey,
                      onSelected: (_) {
                        _toggleFilter('Needer');
                      },
                    ),
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      chipTheme: Theme.of(context).chipTheme.copyWith(
                            // Customize specific properties of the chip
                            labelStyle: TextStyle(
                                fontSize:
                                    20.0), // Adjust the font size of the chip label
                            // Add other customizations as needed
                          ),
                    ),
                    child: FilterChip(
                      label: Text(
                        'Giver',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: _filters.contains('Giver')
                          ? Color(0xff0097b2)
                          : Colors.grey,
                      onSelected: (_) {
                        _toggleFilter('Giver');
                      },
                    ),
                  ),

                  // Add more filters as needed
                ],
              ),
              // Add search results here based on the search term and filters
            ],
          ),
        ),
      ),
    );
  }
}
