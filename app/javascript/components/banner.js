import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Liquid Courage"],
    typeSpeed: 220,
    loop: true
  });
}

export { loadDynamicBannerText };
