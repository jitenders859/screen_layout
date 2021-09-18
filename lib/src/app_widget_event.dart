class AppWidgetEvent<T> {
  int type;
  T data;

  AppWidgetEvent(this.type, {required this.data});
}
