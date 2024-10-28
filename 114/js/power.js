const navItems = document.querySelectorAll(".nav > div");
const containerItems = document.querySelectorAll(".container > div");

function setActiveItem(index) {
    navItems.forEach((item, i) => {
        if (i === index) {
            item.classList.add("showNav");
        } else {
            item.classList.remove("showNav");
        }
    });
}

function showContainer(index) {
    containerItems.forEach((item, i) => {
        if (i === index) {
            item.style.opacity = 0;
            item.classList.add("showContainer");
            setTimeout(() => {
                item.style.opacity = 1;
            }, 3);
        } else {
            item.classList.remove("showContainer");
        }
    });
}

navItems.forEach((item, index) => {
    item.addEventListener("click", function () {
        setActiveItem(index);
        showContainer(index);

        navItems.forEach((navItem, navIndex) => {
            if (navIndex !== index) {
                navItem.style.background = "#f8f8f8";
            }
        });

        item.style.background = "#ffffff";
    });

    item.addEventListener("mouseenter", function () {
        if (!item.classList.contains("showNav")) {
            item.style.background = "#ffffff";
        }
    });

    item.addEventListener("mouseleave", function () {
        if (!item.classList.contains("showNav")) {
            item.style.background = "#f8f8f8";
        }
    });
});

function community() {
    window.open("https://support.qq.com/product/611843", "_blank");
}

function hot() {
    window.open("https://hot.shareduck.fun", "_blank");
}

function hitokoto() {
    fetch('https://v1.hitokoto.cn/?encode=text&max_length=24').then(response => response.text()).then(data => {
        const text = data;

        let i = 0;

        const speed = 100;

        let textAppend = '';

        function typeWriter() {
            if (i < text.length) {
                textAppend += text.charAt(i);

                document.getElementById("hitokoto_text").textContent = textAppend;

                i++;

                setTimeout(typeWriter, speed);
            }
        }

        typeWriter();
    }).catch(console.error);
}

function nextClick() {
    hitokoto()
}