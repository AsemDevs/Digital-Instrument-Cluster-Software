// testing ground for keypress events and js logic
const log = document.getElementById('log');

document.addEventListener('keypress', logKey);

function logKey(e) {
  console.log(` ${e.code}`);
}