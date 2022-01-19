# Expand Card

![](https://img.shields.io/badge/plugin-1.0.0-blue)

# Contents
- [Installed](#Installed)
- [Use](#Use)
- [Properties](#Properties)

# Installed
To connect the plugin you need to register the dependency in the file pubspec.yaml
If your plugin is located locally, specify the path to the plugin

  ```yaml
   dependencies:
     ....
     expand_card:
       path: '../'
     ....
  ```

# Use
After successfully connecting the plugin, you can use it as follows

If you want to use this package then your need call to this a widget card, this can use so:
```dart
ExpandableListTile(
  onExpandPressed: () {
    // Here you need to write a logic for the open/close card
  },
  title: Text('Item'),
  expanded: cardBoolList[index],
  child: SizedBox(),
),
```

# Properties
The list with all parameters for this widget

|Name|Description|
|----|-----------|
|title|The title in the card. Displayed when a card is open and close|
|expanded|The field answers by the state is an open card or are close|
|child|A child a card body. When the card is open you see this the child|
|onExpandPressed|Is optional field, this is the field that need use for card  opened|
|padding|A card retreat from side left, right, top, bottom|
|borderRadius|A card border-radius. Change the form of an angle|
|shadowColor|Change shadow color in the card.|
|elevation|Change elevation value in the card.|
|color|Change color in the card|