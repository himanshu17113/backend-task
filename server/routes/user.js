const express = require("express");
const Data = require("../models/wholeuser");

userRouter = express.Router()

userRouter.post("/signup", async (req, res) => {
try {
      const  {
        id,email,password,name,
        occupation, experience ,writer, explain,location,skills,portfolio,feedback, cost
      } = req.body
        let data = new Data({
            id,
         //   valid,
                email:email,
                password:password,
                name:name,
             occupation : occupation,
              experience ,writer, explain,location,skills,portfolio,feedback, cost   
        });
            data = await data.save()
            
        res.json(data)

} catch (e) {
    res.status(500).json({ error: e.message });
}
});


module.exports = userRouter
