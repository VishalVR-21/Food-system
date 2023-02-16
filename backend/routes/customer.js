const express = require('express')
const customer = express.Router();
const Reastaurant = require('../models/reastaurant');

customer.get('/menu',async(req,res)=>
{
    const data = await Reastaurant.find();
    res.send(data);
})


customer.post('/edit/:hotel_name', async(req,res)=>
{
    const hotel_name = req.params.hotel_name;
    const new_menu = req.body['menu']
    const data = Reastaurant.findOne({name:hotel_name});
    const new_data = new Reastaurant({
        name:hotel_name,
        menu:new_menu,
        rating:data.rating,
        image_Url:data.image_Url
    })
    new_data.save();
})



customer.get('/menu/:name',async(req,res)=>
{
    const name = req.params.name;
    const data = await Reastaurant.find({name:name});
    res.send(data);
});

customer.post('/add_menu',(req,res)=>
{
    const data = req.body;
    const new_reastaurant = new Reastaurant(data);
    new_reastaurant.save();
    res.send("Added");
})


customer.post('/add_food/:id',async(req,res)=>
{
    const id = req.params.id;
    const data = req.body;
    const new_food = new Food(data);
})

customer.get('/sorted',async(req,res)=>{
    const data = await Reastaurant.find().sort({rating:-1});
    res.send(data);
})



customer.get('/menu/:id/:food_id',async(req,res)=>
{
    const id = req.params.id;
    const food_id = req.params.food_id;
    const data = await Reastaurant.findById(id);
    const food = data.menu.id(food_id);
    res.send(food);
});

customer.post('/rating/:food_name',(req,res)=>
{
    const food_name = req.params.id;
    const rating = req.body['rating'];
    const data = Reastaurant.findOne({menu:{$elemMatch:{name:food_name}}});
    data.rating = rating;
    res.send("Success")
    
})


module.exports = customer;