import Typed from 'typed.js';

const loadDynamicContactText = () => {
  new Typed('#contact-typed-text', {
    strings: ["Contact us!", "Elliott will get back to you very soon!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicContactText };
