void looper(List<dynamic> items, bool isSelected) {
    for (int i = 0; i < items.length; i++) {
      items[i].isSelected = isSelected;
    }
  }
