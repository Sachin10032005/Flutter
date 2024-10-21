import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Staggered Grid View'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StaggeredGrid.count(
            crossAxisCount: 4,    // Total number of columns in the grid
            mainAxisSpacing: 8,    // Spacing between grid items (vertically)
            crossAxisSpacing: 8,   // Spacing between grid items (horizontally)
            children: List.generate(10, (index) {
              return StaggeredGridTile.count(
                crossAxisCellCount: 2,    // Width of each tile in terms of number of columns
                mainAxisCellCount: index.isEven ? 2 : 3,  // Height varies for even and odd items
                child: Container(
                  color: Colors.blueAccent,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('$index'),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
