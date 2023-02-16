const mongoose = require('mongoose');
const restaurant = require('./reastaurant')
const foods = require('./food')

const orderSchema = new mongoose.Schema({
   restaurant:
   {
    type:restaurant.schema,
    required:true,
   },
   food:
   {
    type:foods.schema,
    required:true
   },
   date:
   {
    type:Date,
    default:Date.now,
   },
   quantity:
   {
    type:Number,
    default:1,
   }
},{
    timestamps: true,
});

const Order = mongoose.model('order', orderSchema)

module.exports = Order