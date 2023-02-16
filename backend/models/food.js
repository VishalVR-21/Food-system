
const mongoose = require('mongoose');

const Foods = new mongoose.Schema({
    name:{
                type:String,
                required:true
            },
            price:
            {
                type:Number,
                required:true
            },
            imageUrl:
            {
                type:String,
            },
            availibilty:
            {
                type:Boolean,
                default:false
            },
            no_start:
            {
                type:Number,
                default:1
            }
},{
    timestamps: true,
});

const food = mongoose.model('food', Foods)
module.exports= food
