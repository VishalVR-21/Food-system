const express  = require('express');
const Users = require("../models/users");
const jwt = require("jsonwebtoken");
const bcrypt = require('bcrypt')


const admin = express.Router();



var hashing;

admin.post('/register',async(req,res)=>
{
    const name = req.body['name'];
    const password = req.body['password'];
    const email = req.body['email'];
     console.log(req.body);
    console.log(name,email,password)
    if(name=="" || email=="" || password=="")
    {
        console.log("nothing must be empty");
    }
    else
    {
        const data = Users.find({name:name}).then(async (data,erros)=>
        {
            if(data.body!=null)
        {
            console.log("users already exists");
            console.log(data.body)

        }
        else
        {
            var new_password =  await bcrypt.hash(password,5);
            console.log(new_password);
            var new_user = new Users({name:name,email:email,password:new_password});
            new_user.save();
        }
        res.send("User created")
        })
    }
})
 var SECRET_KEY ="123123123"

admin.post('/login',async(req,res)=>
{
    const {email,password} = req.body;
    if(email=="" || password=="")
    {
        console.log("nothing must be empty");
    }
    else{
        const user = await Users.findOne({email:email});
        console.log(user)
        if(user!=null)
        {
            const comparision = await bcrypt.compareSync(password,user.password);
            console.log(comparision)
            if(comparision)
            {
                console.log("password are correct");
                var signin= jwt.sign(email,SECRET_KEY);
                res.cookie('cookie',email);
            }

        }
        else
        {
        res.send("no data");
        }
    }

})




module.exports = admin