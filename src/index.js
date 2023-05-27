const express=require('express');
const morgan=require('morgan');
const {engine}=require('express-handlebars');
const path=require('path');

///initializations 
const app=express();

//settings 
app.set('port',process.env.PORT || 4000);
app.set('views',path.join(__dirname,'views')); //get path of this file
app.engine('.hbs',engine({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'),'layouts'),
    partialsDir: path.join(app.get('views'),'partials'),
    extname:'.hbs',
    helpes: require('./lib/handlebars')
}));
app.set('view engine','.hbs');

//Middlewares
app.use(morgan('dev'));
app.use(express.urlencoded({extended:false}));
app.use(express.json());

//global variables 
app.use((req,res,next)=>{
    next();
});

//routes (urls)
app.use(require('./routes'));
app.use(require('./routes/authentication'));
app.use('/links', require('./routes/links')); //this is for get the data

//public
app.use(express.static(path.join(__dirname,'public')));


//starting the server
app.listen(app.get('port'),()=>{
    console.log('server on port',app.get('port'));
})
