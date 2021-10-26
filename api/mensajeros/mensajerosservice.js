import dbconnection from "../../config/dbconnection.js";

const mensajeros = (callBack) =>{
    const myQuery = 'SELECT idmensajero,nombre,usuario FROM mensajeros';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

export{
    mensajeros
}