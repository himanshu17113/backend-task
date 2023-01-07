const mongoose = require('mongoose');

const docmentSchema = new mongoose.Schema({
 
  // uid: {
  //           type: String,
  //           required: false
  //         },

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

const Docment = mongoose.model('Profile', docmentSchema);

module.exports = Docment;
