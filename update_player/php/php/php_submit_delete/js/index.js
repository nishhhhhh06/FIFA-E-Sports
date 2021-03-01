
window.addEventListener("mousemove", e => pointer.move(e), false);
canvas.addEventListener("touchmove", e => pointer.move(e), false);
window.addEventListener("mousedown", e => pointer.down(e), false);
window.addEventListener("touchstart", e => pointer.down(e), false);
window.addEventListener("mouseup", e => pointer.up(e), false);
window.addEventListener("touchend", e => pointer.up(e), false);