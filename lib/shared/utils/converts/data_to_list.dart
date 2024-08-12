List<TResult> dataToList<TResult>(
    dynamic data, Function(Map<String, dynamic>) fromJson) {
  final reasons = (data as List).map((d) {
    final data = fromJson(d) as TResult;
    return data;
  }).toList();

  return reasons;
}
