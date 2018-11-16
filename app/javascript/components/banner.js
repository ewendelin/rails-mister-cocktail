import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Liquid Courage"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
