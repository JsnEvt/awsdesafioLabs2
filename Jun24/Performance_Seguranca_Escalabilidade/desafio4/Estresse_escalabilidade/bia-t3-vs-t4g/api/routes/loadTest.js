module.exports = (app) => {
  const controller = require("../controllers/loadTest")();

  app.route("/api/loadTest").get(controller.get);
};
