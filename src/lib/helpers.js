const Handlebars = require('handlebars');
const bcrypt = require('bcryptjs');
const helpers = {};

helpers.encryptPassword = async (password) => {
    const salt = await bcrypt.genSalt(10);
    const hash = bcrypt.hash(password, salt);
    return hash
}

helpers.matchPassword = async (password, savedPassword) => {
    try {
        console.log(password)
        console.log(savedPassword)
        return await bcrypt.compare(password, savedPassword);
    } catch (e) {
        console.log(e);
    }
}

Handlebars.registerHelper('eq', function (a, b, options) {
    return a === b ? options.fn(this) : options.inverse(this);
});

module.exports = helpers;