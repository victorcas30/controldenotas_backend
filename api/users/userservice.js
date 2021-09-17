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

const createUser = (values,callBack)=>{
    const insertQuery = "INSERT INTO usuarios(nombres,apellidos,user,password) VALUES(?,?,?,?)";
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(result);

    });
}


export {getUsers,createUser};