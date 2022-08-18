let CargarMasBtn = document.querySelector('.paquetes .cargar-mas .btn');
let currentItem = 3;

CargarMasBtn.onclick = () => {
    let boxes = [...document.querySelectorAll('.paquetes .container-lugares .box')];
    for (var i = currentItem; i < currentItem + 3; i++) {
        boxes[i].style.display = 'inline-block';
    };
    currentItem += 3;
    if (currentItem >= boxes.length) {
        CargarMasBtn.style.display = 'none';
    }
}