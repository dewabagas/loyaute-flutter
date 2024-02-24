String trimText(String name, int maxLength) {
  if (name.length <= maxLength) {
    return name;
  } else {
    return '${name.substring(0, maxLength - 3)}...';
  }
}
