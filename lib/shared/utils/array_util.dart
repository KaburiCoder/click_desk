class ArrayUtil {
  static List<List<T>> chunkArray<T>(List<T> array, int chunkSize) {
    List<List<T>> chunks = [];
    for (int i = 0; i < array.length; i += chunkSize) {
      int end = (i + chunkSize < array.length) ? i + chunkSize : array.length;

      final subArray = array.sublist(i, end);
      chunks.add(subArray);
    }
    return chunks;
  }
}
