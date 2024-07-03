module.exports = () => {
  const controller = {};

  controller.get = (req, res) => {
    const responseString = `Bia ${process.env.VERSAO_API || "2.0.0"}`;
    res.send(responseString);
  };

  controller.loadTest = (req, res) => {
    const n = parseInt(req.query.n) || 10;

    // Função para calcular o n-ésimo número de Fibonacci
    function fibonacci(num) {
      if (num <= 1) return num;
      return fibonacci(num - 1) + fibonacci(num - 2);
    }

    // Array para armazenar os números de Fibonacci calculados
    const fibonacciNumbers = [];

    // Calcular os números de Fibonacci até o n-ésimo número
    for (let i = 0; i < n; i++) {
      fibonacciNumbers.push(fibonacci(i));
    }

    res.send(`Números de Fibonacci até ${n}: ${fibonacciNumbers.join(', ')}`);
  };
  
  return controller;
};
