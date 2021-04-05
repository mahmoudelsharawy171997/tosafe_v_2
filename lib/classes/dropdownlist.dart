import 'package:flutter/material.dart';

import '../globalElements.dart';

class dropdownlist{
  dropdownlist({this.dropdownItems})
  {
    _dropdownMenuItems = buildDropDownMenuItems(dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }
  List<ListItem> dropdownItems ;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;


  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  Widget build(BuildContext context,title) {

    return Container(
      padding: EdgeInsets.only(right: 20,left: 20,top: 10),
      height: 70,
      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          DropdownButtonFormField<ListItem>(
            decoration: InputDecoration(border: InputBorder.none),
            isExpanded: true,
            iconSize: 50,
            value: _selectedItem,
            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
            items: _dropdownMenuItems,
            onChanged: (value) {_selectedItem = value;},
          ),
          Text(title),
        ],
      ),
    );
  }
}
