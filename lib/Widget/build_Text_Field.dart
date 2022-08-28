import 'package:loginscreens/Controller/Export/export_screen.dart';

TextField buildTextField() {
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white.withOpacity(0.9),
      hintStyle: const TextStyle(
        color: Colors.white,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
