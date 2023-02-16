const express = require('express');
const app = express();
const port = 3000
const food = require('./models/food');
const Orders = require('./models/order')
const mongoose = require('mongoose');
const Restaurant =require('./models/reastaurant')
const User_orders = require('./models/user_orders');
const admin = require('./routes/admin');
const Users = require("./models/users")

// Connect MongoDB at default port 27017.


app.use(express.json());
const connection= async()=>
{
mongoose.connect('mongodb+srv://Vishal:1@cluster0.idr4cs7.mongodb.net/?retryWrites=true&w=majority', {
}, (err) => {
    if (!err) {
        console.log('MongoDB Connection Succeeded.')
    } else {
        console.log('Error in DB connection: ' + err)
    }
});
}
app.use('/admin',admin);



        
    
app.get('/s',async(req,res)=>
{
    var data
    try{
        data = await food.find({ });

        res.json(data)
    }catch(err)
    {
        console.log("eroor");

    }
})




app.get('/insert',(req,res)=>
{
    data = new food({name:"vishal",availibilty:true,price:5,no_start:3,});
    data.save().then((data,err)=>
    {
        if(err)
        {
            console.log("Error")
        }
        else
        {
            console.log("connected success")
        }
    });
    res.send("Created succesfully")
})

if(mongoose.connection.readyState==1)
{
    console.log("the server is runnings")
}

app.get('/', (req, res) => res.send('Hello World!'))
app.listen(port, () => {
    connection();
    console.log(`Example app listening on port ${port}!`)}) 