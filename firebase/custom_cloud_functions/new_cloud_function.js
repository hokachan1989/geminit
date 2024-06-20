const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.newCloudFunction = functions
  .region("asia-northeast1")
  .runWith({
    memory: "128MB",
  })
  .https.onCall((data, context) => {
    // Write your code below!

    // Write your code above!
    return "hello";
  });
