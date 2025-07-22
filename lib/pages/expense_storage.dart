import 'package:get_storage/get_storage.dart';

class ExpenseStorage {
  final _box = GetStorage();
  final _key = 'expenses';

  void saveExpenses(List<Map<String, dynamic>> expenses) {
    _box.write(_key, expenses);
  }

  List<Map<String, dynamic>> loadExpenses() {
    final data = _box.read<List>(_key);
    if (data != null) {
      return data.map((e) => Map<String, dynamic>.from(e)).toList();
    }
    return [];
  }

  void clearExpenses() {
    _box.remove(_key);
  }
}
