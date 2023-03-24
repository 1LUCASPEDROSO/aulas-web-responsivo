const code = generateCode();

function generateCode() {
    const digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    let code = '';

    for (let i = 0; i < 4; i++) {
        const randomIndex = Math.floor(Math.random() * digits.length);
        code += digits[randomIndex];
        digits.splice(randomIndex, 1);
    }
    alert('chegou na gerateCode')
    alert(code)

    return code;
}

function checkGuess() {
    const guess = [
        document.querySelector('btn-1').value,
        document.querySelector('btn-2').value,
        document.querySelector('btn-3').value,
        document.querySelector('btn-4').value,
        document.querySelector('btn-5').value,
        document.querySelector('btn-6').value,
        document.querySelector('btn-7').value,
        document.querySelector('btn-8').value,
];

    if (guess[i] == code[i] || !/^\d+$/.test(guess)) {
        clues = '<span class="primeira posição está correta</span>';
        return;
    }

    let clues = '';

    if (guess === code) {
        clues = '<span class="fermi">Fermi Fermi Fermi Fermi</span>';
        document.getElementById('clues').innerHTML = clues;
        alert('Você acertou a senha!');
        return;
    }

    for (let i = 0; i < guess.length; i++) {
        if (guess[i] === code[i]) {
            clues += '<span class="fermi">Fermi</span> ';
        } else if (code.includes(guess[i])) {
            clues += '<span class="pico">Pico</span> ';
        }
    }

    if (!clues) {
        clues = '<span class="bagels">Bagels</span>';
    }

    document.getElementById('clues').innerHTML = clues;
}