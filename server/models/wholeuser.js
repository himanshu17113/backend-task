const mongoose = require('mongoose');

const dataSchema = new mongoose.Schema({
 
    //id for future devlopment
     id: {
    type: String,
    required: false,
  },

//     valid: {
//     type: String,
//     required: false,
//   },


    name: {
    type: String,
    required: true,
  },
  email: {
    type: String,
    required: true,
  },
  password: {
    type: String,
    required: true,
  },


  occupation: {
    type: String,
    required: false
  },

   experience : {
    type: String,
    required: false
  },

    writer: {
    type: String,
    required: false
  },

   explain: {
    type: String,
    required: false
  },

    location: {
    type: String,
    required: false
  },

    skills: {
    type: String,
    required: false
  },

   portfolio: {
    type: String,
    required: false
  },

   feedback: {
    type: String,
    required: false
  },

   cost: {
    type: String,
    required: false
  },
  
});

const Data = mongoose.model('Data', dataSchema);

module.exports = Data;
