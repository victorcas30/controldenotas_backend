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
            cr.idcorrespondencia_recibida as id, 
            UPPER(td.descripcion) as tipodocumento,
            DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%Y') as fechasellodocumento,
            DATE_FORMAT(cr.fechasellocyr,'%d-%m-%Y') as fechasellocyr,
            cr.horasellocyr,
            UPPER(us.nombres) as recibidopor,
            UPPER(cr.asegurado) as asegurado,
            UPPER(cr.referencia) as referencia,
            DATE_FORMAT(fechavencimientorenov,'%d-%m-%Y') as fechavencimientorenov,
            UPPER(cr.procedencia) as procedencia,
            UPPER(cr.aseg_remi) as aseg_remi,
            UPPER(ase.nombre) as aseguradora,
            UPPER(de.nombre) as entregadoa,
            UPPER(cr.formadeingreso) as formadeingreso
        FROM 
            correspondencia_recibida cr
        INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
        INNER JOIN usuarios us on us.idusuario = cr.recibidopor
        INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
        LEFT JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
        WHERE 
            idusuarioregistra = ?
        AND eliminado = 0
    `;

    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(null,result);
        }
    });
}

const recieviedCorresponseById = (values,callBack) =>{
    const myQuery = `
        SELECT
            tipodocumento,
            DATE_FORMAT(fechasellodocumento,'%Y-%m-%d') as fechasellodocumento,
            DATE_FORMAT(fechasellocyr,'%Y-%m-%d') as fechasellocyr,
            horasellocyr,
            recibidopor,
            asegurado,
            referencia,
            DATE_FORMAT(fechavencimientorenov,'%Y-%m-%d') as fechavencimientorenov,
            procedencia,
            aseg_remi,
            entregadoa,
            formadeingreso
        FROM 
            correspondencia_recibida 
        WHERE 
            idcorrespondencia_recibida = ? AND recibidajefe = 0
    `;

    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(null,result);
        }
    });
}

const editCorrespondenceById = (values,callBack)=>{
    const myQuery = `
        UPDATE 
            correspondencia_recibida
        SET
            tipodocumento         = ?,
            fechasellodocumento   = ?,
            fechasellocyr         = ?,
            horasellocyr          = ?,
            recibidopor           = ?,
            asegurado             = ?,
            referencia            = ?,
            fechavencimientorenov = ?,
            procedencia           = ?,
            aseg_remi             = ?,
            entregadoa            = ?,
            formadeingreso        = ?  
        WHERE idcorrespondencia_recibida = ?
    `;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(error,result);
        }
    });
}

const deleteCorrespondence = (values,callBack)=>{
    const myQuery = `
        UPDATE 
            correspondencia_recibida
        SET 
            eliminado = 1
        WHERE 
            idcorrespondencia_recibida = ?
        AND
            recibidajefe = 0
    `;

    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(error,result);
        }
    });
}





export {correspondenceReceived,recieviedCorresponseByUser,recieviedCorresponseById,editCorrespondenceById,deleteCorrespondence};