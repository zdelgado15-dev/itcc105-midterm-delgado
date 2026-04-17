import 'dart:io';

void main() {
  bool isInternetConnected = true;

  print("=== ADSSU AI Copilot ===");

  // Show available options
  print("\nYou can try the following commands:");
  print("- check clearance");
  print("- check grades");
  print("- school events");
  print("- enrollment");
  print("- schedule");

  // Ask user for input
  stdout.write("\nWhat do you want to do? ");
  String? userIntent = stdin.readLineSync();

  // Convert to lowercase
  userIntent = userIntent?.toLowerCase();

  if (!isInternetConnected) {
    print("\n No internet. Showing offline mode...");
  } else {
    print("\n=== AI Response ===");

    if (userIntent == "check clearance") {
      print(" Your clearance is pending in the library.");
    } else if (userIntent == "check grades") {
      print(" Your grades are available in the registrar.");
    } else if (userIntent == "school events") {
      print("Upcoming event: Foundation Day!");
    } else if (userIntent == "enrollment") {
      print(" Enrollment is ongoing. Visit the registrar.");
    } else if (userIntent == "schedule") {
      print(" Your classes start at 8:00 AM.");
    } else {
      print(" Sorry, I don’t understand your request.");
      print(" Please choose from the list above.");
    }
  }
}