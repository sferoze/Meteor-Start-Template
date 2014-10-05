// module.exports = function(grunt) { 

// grunt.initConfig({ 
//   watch: { 
//     build: { 
//       files: ['./entrypoint.js', './package.json'], 
//       tasks: ['coffeeify'], 
//       options: { 
//         //extensions: ['.js', '.json', '.coffee']
//       }
//     } 
//   }, 
//   coffeeify: {
//     options: {
//       extensions: ['.js', '.json', '.coffee']
//     },
//     files: [
//       {src: './entrypoint.coffee', dest:'../client/js/bundle.js' }
//     ]
//   }, 
// }); 

// grunt.loadNpmTasks('grunt-coffeeify');
// grunt.loadNpmTasks('grunt-browserify'); 
// grunt.loadNpmTasks('grunt-contrib-watch'); 
// //grunt.registerTask('build', ['browserify']); 
// grunt.registerTask('build', ['coffeeify']); 

// };

module.exports = function(grunt) { 
  grunt.initConfig({ 
    watch: { 
      build: { 
      files: ['./entrypoint.js', './package.json'], 
      tasks: ['browserify'], 
      options: { 
      } 
    } 
    }, 
    browserify: { 
      vendor: { 
      src: './entrypoint.js', 
      dest: '../client/js/bundle.js' 
      } 
    }, 
  });

  grunt.loadNpmTasks('grunt-browserify'); 
  grunt.loadNpmTasks('grunt-contrib-watch'); 
  grunt.registerTask('build', ['browserify']); 
};