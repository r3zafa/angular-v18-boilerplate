module.exports = function (config) {
  config.set({
    basePath: "",
    frameworks: ["jasmine", '@angular-devkit/build-angular'],
    reporters: ["progress", "kjhtml"],
    plugins: [
      require("karma-jasmine"),
      require("karma-chrome-launcher"),
      require("karma-jasmine-html-reporter"),
      require("karma-firefox-launcher"),
      require("@angular-devkit/build-angular/plugins/karma"),
    ],
    client: {
      clearContext: false, // leave Jasmine Spec Runner output visible in browser
    },
    port: 9876,
    colors: true,
    logLevel: config.LOG_INFO,
    autoWatch: true,
    browsers: ["FirefoxHeadless"],
    singleRun: true,
    concurrency: Infinity,
    customLaunchers: {
      ChromeHeadless: {
        base: "ChromeHeadless",
        flags: ["--no-sandbox",'--disable-dev-shm-usage'],
      },
      FirefoxHeadless: {
        base: "Firefox",
        flags: ["--headless"],
      },
    },
    singleRun: false,
    restartOnFileChange: true
  });
};
