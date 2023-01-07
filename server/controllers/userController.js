const User = require("../models/user");
//const { model } = require("mongoose");

const signup = async (req , res) =>{
      try {
            const { name, email, password } = req.body;
        
            //let user = await User.findOne({ email });
        let user = await User.findOne({ email: email });
        
            if (!user) {
              user = new User({
                email:email,
                password:password,
                name:name,
              });
              user = await user.save();
            }
         //const token = jwt.sign({ id: user._id }, "passwordKey");
        //   res.json({ user : user, token });
          res.json({ user : user});
          } catch (e) {
            res.status(500).json({ error: e.message });
          }

}


const signin = async(req , res) =>{

 try {
            const {  email  } = req.body;
        
            //let user = await User.findOne({ email });
        let user = await User.findOne({ email: email });
        
        (err,user)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            res.json(user)   
        }
    },   
         //const token = jwt.sign({ id: user._id }, "passwordKey");
        //   res.json({ user : user, token });
          res.json({ user : user});
          } catch (e) {
            res.status(500).json({ error: e.message });
          }
      
}

module.exports = {signin,signup};