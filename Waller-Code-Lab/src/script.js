function SetProgress(progress, launchpage) {
    var elem = document.getElementById('myBar');
    if (launchpage == true) {
        elem.style.width = progress + "%";
        elem.innerHTML = progress + "%";
        return;
    }
    ProgressIncrement = 1;
    var NoAnimationWidth = 2;
    var id = setInterval(frame, 10);
    function frame() {
        if (NoAnimationWidth >= progress) {
            clearInterval(id);
            ProgressIncrement = 0;
            elem.style.width = progress + "%";
            elem.innerHTML = progress + "%";
        } else if (NoAnimationWidth < progress) {
            NoAnimationWidth++;
            elem.style.width = NoAnimationWidth + "%";
            elem.innerHTML = NoAnimationWidth + "%";
        }
    }
}