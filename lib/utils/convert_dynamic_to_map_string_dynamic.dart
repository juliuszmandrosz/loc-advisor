Map<String, dynamic> convertDynamicToMapStringDynamic(dynamic data) {
  if (data == null) {
    throw ArgumentError('Data cannot be null');
  }

  final result = _convertValue(data);

  if (result is! Map<String, dynamic>) {
    throw ArgumentError('Expected a Map<String, dynamic>');
  }

  return Map<String, dynamic>.from(result);
}

dynamic _convertValue(dynamic data) {
  if (data is Map) {
    return data.map(
      (key, value) => MapEntry(
        key.toString(),
        _convertValue(value),
      ),
    );
  } else if (data is List) {
    return data.map((item) => _convertValue(item)).toList();
  } else {
    return data;
  }
}
