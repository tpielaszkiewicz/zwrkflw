
module.exports = (srv) => {
    srv.after('SAVE', 'Requests', async (result, req) => {
        console.log('SAVING!');
    });
}