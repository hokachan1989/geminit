const admin = require("firebase-admin/app");
admin.initializeApp();

const menuSuggestionFlow = require("./menu_suggestion_flow.js");
exports.menuSuggestionFlow = menuSuggestionFlow.menuSuggestionFlow;
const sayHello = require("./say_hello.js");
exports.sayHello = sayHello.sayHello;
