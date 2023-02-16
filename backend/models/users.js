const mongoose = require('mongoose');

const User_Orders = new mongoose.Schema({
    name:
    {
        type:String,
        required:true,
        unique:true
    },
    email:
    {
        type:String,
        required:true,
        unique:true,
    },
    password:
    {
        type:String,
        required:true,
    }
    
    
},{
    timestamps: true,
});

const Users = mongoose.model('users', User_Orders)

module.exports = Users