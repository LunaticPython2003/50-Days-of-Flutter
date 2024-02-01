# 50-Days-of-Flutter

The repository contains all the important concepts and codes that I used while learning Flutter. Each day has been marked by the appropriate heading, and link to the relevant codes -

## Day 1

Details of the widgets that have been covered on this day -
- <u> AppBar </u> -
  - title - Used for adding text (or images) to the navigation bar
  - leading - The area preceeded by the title
  - Color - Colors.colorname[integer]
- <u> Decorations </u> -  Used for adding specific decorations to a widget. Example
```c++
decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20)),
```

This adds deepPurple color and creates a rounded border of radius 20 along the sides of a Container widget.

- <u> Child and children </u> -
  - Child - Used when only one widget is to be encapsulated within another. Widgets like Column, Center support only one child
  - Children - Has the capacity to add multiple widgets inside another. <br>
  Example - Column

- <u> Expanded </u> - This widget is used to automatically allign the containers or other widgets to use all the available screen real estate. Example usage -
```c++
body: Column(
    children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20)),
            child: const Center(
                child: Text(
              "Hello World",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        )
      ],
    );
```

Some important things to consider in here -
- Multiple widgets can be encapsulated within the Column widget, like the Expanded widget(s) in here
- flex property of Expanded lets us specify how much of area will an individual widget take. In this case, the Expanded child having flex 2 will have a height twice as much as the others


## Day 2
Details of the widgets -
- <u>ListView</u>
  - Same as Column but swipeable so that screen overflow is avoided
  - ```scrollDirection: Axis.horizontal``` of ListView creates a scrollable widget in the horizontal direction. <br> <br>
Refer to <a href="mainf/lib/day-2.dart"> this code </a>

- <u>ListView.builder</u>
  - Building multiple widgets - <br>
    ```c++
    body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
        title: Text(index.toString()),
     ))
     ```
    - itemCount - Refers to the total widgets that can be placed
    - itemBuilder - Method to build the widgets
  <br> Refer to <a href="mainf/lib/day-2-builder.dart"> this code </a>

## Day 3
Details of the widgets used
- <u>GridLayout.builder()</u>
  - Similar to ListView.builder()
  - ```c++
    GridView.builder(
      itemCount: 64,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4),
      itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple[200],
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(4),
          ));
     ```
  - This code creates 64 containers with each row containing 4 containers.

## Day 4
Details of the widgets used
- <u>Stack</u>
  - Works just like it says; stacks one element over the other in the screen.
  - ```c++
    body: Stack(alignment: Alignment.center, children: [
      Container(
        height: 400,
        width: 400,
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
      ),
      Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(color: Colors.deepPurple[200]),
      ),
      Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(color: Colors.deepPurple[400]),
      )
    ]),
    ```
  - This renders 3 components, one on top of another with the subsequent boxes stacked on one another in the center. Refer to <a href="mainf/lib/day-4-stack.dart"> this code </a>

- <u>GestureDetector</u>
  - Used to perform a action when the user interacts with a widget. Interaction could be of any type, such as clicking on the widget, long pressing, etc.
  - The widget takes a child (which in this case, is a Container), and the interaction method (onTap in this case). Refer to <a href="mainf/lib/day-5-gesture.dart"> this code </a>