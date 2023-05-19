const express = require('express');
const morgan = require('morgan');
const { engine } = require('express-handlebars');
const path = require('path');
const passport = require('passport');

///initializations 
const app = express();
require('./lib/passport.js');

//settings 
app.set('port', process.env.PORT || 4000);
app.set('views', path.join(__dirname, 'views')); //get path of this file
app.engine('.hbs', engine({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layouts'),
    partialsDir: path.join(app.get('views'), 'partials'),
    extname: '.hbs',
    helpes: require('./lib/handlebars')
}));
app.set('view engine', '.hbs');

//Middlewares
app.use(morgan('dev'));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());


app.use(passport.initialize());
app.use(passport.session());


//global variables 
app.use((req, res, next) => {
    next();
});

//routes (urls)
app.use(require('./routes'));
app.use(require('./routes/authentication'));
app.use('/links', require('./routes/links')); //this is for get the data

//public
app.use(express.static(path.join(__dirname, 'public')));


//starting the server
app.listen(app.get('port'), () => {
    console.log('server on port', app.get('port'));
})
