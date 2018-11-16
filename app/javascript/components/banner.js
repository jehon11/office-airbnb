import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Find your perfect working space", "Book on Buro now."],
    typeSpeed: 50,
    loop: true,
    loopCount: 3
  });
};

export { loadDynamicBannerText };
