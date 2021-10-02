import dbconnection from "../../config/dbconnection.js";

const correspondenceReceived = (values,callBack) =>{
    const myInsertQuery = `INSERT INTO correspondencia_recibida(
    fecharegistro,
    fechasellodocumento,
    fechasellocyr,
    horasellocyr,
    recibidopor,
    asegurado,
    referencia,
    fechavencimientorenov,
    procedencia,
    aseg_remi,
    entregadoa,
    formadeingreso) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)`;
    dbconnection.query(myInsertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}



export {correspondenceReceived};