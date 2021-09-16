import dbconnection from '../../config/dbconnection.js';

const getUsers = (callBack) =>{
    const myQuery = 'SELECT * from usuarios';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}


export {getUsers};