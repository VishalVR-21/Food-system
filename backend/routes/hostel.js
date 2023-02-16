const Restaurant = require("../models/reastaurant")
const foods = require("../models/reastaurant")
const  express = require('express')
const owner = express.Router()
const port = 3000

owner.post('/edit/:hotel_name', async(req,res)=>
{
    const hotel_name = req.params.hotel_name;
    const new_menu = req.body['menu']
    const data = Restaurant.findOne({name:hotel_name});
    const new_data = new Restaurant({
        name:hotel_name,
        menu:new_menu,
        rating:data.rating,
        image_Url:data.image_Url
    })
    new_data.save();
})

owner.post('/add_food',(req,res)=>{
    const menu = 
})


module.exports = owner;