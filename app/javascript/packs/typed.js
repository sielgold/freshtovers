// Can also be included with a regular script tag
import Typed from 'typed.js';

// var options = {
//   strings: ['<i>First</i> sentence.', '&amp; a second sentence.'],
//   typeSpeed: 40
// };

var typed = new Typed("#typed", {
  strings: ['Type some food...', 'Address...', 'or whatever'],
  attr: 'placeholder',
  typeSpeed: 30,
  loop: true
});
