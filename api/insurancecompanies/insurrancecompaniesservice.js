import dbconnection from "../../config/dbconnection.js";

const getInsuranceCompanies = (callBack) =>{
    const myQuery = 'SELECT idaseguradora,nombre FROM aseguradoras WHERE activa=1';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(null,result);
        }
    });
}

export {getInsuranceCompanies};