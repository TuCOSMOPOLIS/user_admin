class Role {
  static const String ADMIN = "admin";
  static const String CASHIER = "cashier";

  // static const List<String> roles = [ADMIN, CASHIER];

  // static String getTitle(String role) {
  //   switch (role) {
  //     case ADMIN:
  //       return "Admin";
  //     case CASHIER:
  //       return "Cashier";
  //     default:
  //       return "Undefined";
  //   }
  // }

  static Map<String, String> rolesMap = {
    ADMIN: "Admin",
    CASHIER: "Cashier",
  };
}
