const mongoose = require('mongoose');
const food  = require("./food")

const reastaurantSchema = new mongoose.Schema({
    image_Url:
    {
        type:String,
        required:true
    },
    name:
    {
        type:String,
        required:true,
    },
    address:
    {
        type:String,
        required:true,
    },
    rating:
    {
        type:Number,
        default:1
    },
    menu:
    {
        type:[food.schema],
        required:true,
    }
},
);

const Reastaurant = mongoose.model('reastaurant', reastaurantSchema)

module.exports = Reastaurant