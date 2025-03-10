const express = require('express');
const db = require('../utils/db');
const router = express.Router();

/* GET home page */
router.get('/', function(req, res) {
    res.render('index', { title: 'Ana Cecília' });
});

// Rotas para a tabela de Pagamentos
router.get('/pagamentos', (req, res) => {
    db.query('SELECT * FROM pagamentos', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Carros
router.get('/tb_carro', (req, res) => {
    db.query('SELECT * FROM tb_carro', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Clientes
router.get('/tb_clientes', (req, res) => {
    db.query('SELECT * FROM tb_clientes', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Estoque
router.get('/tb_estoque', (req, res) => {
    db.query('SELECT * FROM tb_estoque', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Funcionários
router.get('/tb_funcionarios', (req, res) => {
    db.query('SELECT * FROM tb_funcionarios', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Modelos
router.get('/tb_modelo', (req, res) => {
    db.query('SELECT * FROM tb_modelo', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Vendas
router.get('/tb_vendas', (req, res) => {
    db.query('SELECT * FROM tb_vendas', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Rotas para a tabela de Versão
router.get('/tb_versao', (req, res) => {
    db.query('SELECT * FROM tb_versao', (erro, resultado) => {
        if (erro) return res.status(500).json({ erro: erro.message });
        res.json(resultado);
    });
});

// Exportando as rotas
module.exports = router;
document.getElementById('addCarForm').addEventListener('submit', function(event) {
    event.preventDefault();
  
    const model = document.getElementById('model').value;
    const year = document.getElementById('year').value;
    const color = document.getElementById('color').value;
    const price = document.getElementById('price').value;
  
    const newRow = document.createElement('tr');
    newRow.innerHTML = `
      <td>${model}</td>
      <td>${year}</td>
      <td>${color}</td>
      <td>R$ ${price}</td>
      <td>
        <button class="btn btn-warning btn-sm">Editar</button>
        <button class="btn btn-danger btn-sm">Excluir</button>
      </td>
    `;
  
    document.getElementById('carTable').appendChild(newRow);
  
    // Fechar o modal após adicionar o carro
    var myModal = new bootstrap.Modal(document.getElementById('addCarModal'));
    myModal.hide();
    
    // Limpar o formulário
    document.getElementById('addCarForm').reset();
  });
