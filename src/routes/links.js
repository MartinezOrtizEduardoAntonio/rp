const express=require('express');
const router=express.Router();

const pool=require('../database');

router.get('/addUser',(req,res)=>{
    res.render('links/addUser');
});

router.get('/eyelashes',(req,res)=>{
    res.render('links/eyelashes')
});

router.post('/searchData',(req,res)=>{
    res.send('received');
});

router.get('/login', (req, res) => {
    res.render('links/login');
});

router.post('/searchData', (req, res) => {
    res.send('received');
});

module.exports=router;