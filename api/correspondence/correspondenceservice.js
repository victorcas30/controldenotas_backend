import dbconnection from "../../config/dbconnection.js";

const correspondenceReceived = (values,callBack) =>{
    const myInsertQuery = `INSERT INTO correspondencia_recibida(
    tipodocumento,
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
    formadeingreso,
    fecha_ingreso_sistema,
    idusuarioregistra
    ) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)`;
    dbconnection.query(myInsertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const recieviedCorresponseByUser = (values,callBack) =>{
    const myQuery = `
        SELECT 
            tipodocumento,
            DATE_FORMAT(fechasellodocumento,'%d-%m-%Y') as fechasellodocumento,
            DATE_FORMAT(fechasellocyr,'%d-%m-%Y') as fechasellocyr,
            horasellocyr,
            recibidopor,
            asegurado,
            referencia,
            DATE_FORMAT(fechavencimientorenov,'%d-%m-%Y') as fechavencimientorenov,
            procedencia,
            aseg_remi,
            entregadoa,
            formadeingreso
        FROM 
            correspondencia_recibida
        WHERE 
            idusuarioregistra = ?
    `;

    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(null,result);
        }
    });
}



export {correspondenceReceived,recieviedCorresponseByUser};