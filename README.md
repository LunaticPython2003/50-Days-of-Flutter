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


## Day 1
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
     ))```
  Refer to <a href="mainf/lib/day-2-builder.dart"> this code