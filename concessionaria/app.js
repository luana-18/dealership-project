var express = require('express');
var path = require('path');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
// Remover ou comentar a importação do express-ejs-layouts
// var expressLayouts = require('express-ejs-layouts'); // <- Remover ou comentar essa linha

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// Configurar EJS e Layouts
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// Remover ou comentar a linha que habilita o express-ejs-layouts
// app.use(expressLayouts); // <- Remover ou comentar essa linha

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

module.exports = app;
