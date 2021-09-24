import dbconnection from "../../config/dbconnection.js";

const getDepartments = (callBack)=>{
    const myQuery = 'SELECT idcyr_departamento,nombre FROM cyr_departamentos WHERE activo=1';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

export {getDepartments}