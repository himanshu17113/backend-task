const Profile = require("../models/profile");

const setup = async (req, res) => {
try {
      const  {
        occupation, experience ,writer, explain,location,skills,portfolio,feedback, cost
      } = req.body
        let profile = new Profile({
             occupation : occupation,
              experience ,writer, explain,location,skills,portfolio,feedback, cost   
        });
            profile = await profile.save()
            
        res.json(profile)

} catch (e) {
    res.status(500).json({ error: e.message });
}
}

module.exports = {setup};