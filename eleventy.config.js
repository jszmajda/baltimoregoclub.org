module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy({"assets/img": "img"});
  eleventyConfig.addPassthroughCopy({"node_modules/bootstrap/dist/css/bootstrap.min.css": "css/bootstrap.min.css"});

  return {
    dir: {
      input: "views",
      output: "public",
      includes: "_includes"
    },
    templateFormats: ["pug", "md"],
    htmlTemplateEngine: "pug"
  };
};
