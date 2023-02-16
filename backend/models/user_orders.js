const mongoose = require('mongoose');
const Order = require("./order")

const user_ordersSchema = new mongoose.Schema({
    name:{
        type:String,
        required:true,
    },
    orders:
    {
        type:[Order.schema],
        required:true,
    },
    carts:
    {
        type:[Order.schema],
        required:true,
    }
},{
    timestamps: true,
});

const User_orders = mongoose.model('user_orders', user_ordersSchema)

module.exports = User_orders