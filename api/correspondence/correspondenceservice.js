import dbconnection from "../../config/dbconnection.js";

/*const correspondenceReceived = (values,callBack) =>{
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
}*/
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
        const insertId = result.insertId;
        const MyValues = [insertId,1,values[12],values[13]];
        const myOtherQuery = `
            INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(?,?,?,?)`;
        dbconnection.query(myOtherQuery,MyValues,(error1,result1)=>{
            if(error || error1){
                return callBack(error+''+error1,result);
            }else{
                return callBack(null,result);
            }
        });
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
        AND 
            eliminado = 0
        AND 
            estado = 1
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
            idcorrespondencia_recibida = ? AND estado = 1
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
        estado = 1
    `;

    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(error,result);
        }
    });
}

const recieviedCorresponseByDepto = (values,callBack) =>{
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
            UPPER(cr.formadeingreso) as formadeingreso,
            DATE_FORMAT(fecha_ingreso_sistema,'%d-%m-%Y') as fecha_ingreso_sistema,
            cr.estado
        FROM 
            correspondencia_recibida cr

        INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
        INNER JOIN usuarios us on us.idusuario = cr.recibidopor
        INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
        LEFT JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
        WHERE 
            cr.entregadoa = ?
        AND 
            cr.eliminado = 0
        AND 
            cr.estado IN (1,2)
    `;

    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(null,result);
        }
    });
}

const asignCorrespondence = (values,callBack)=>{
    const {idusuario,idcorrespondencia,fechaasignacion,idusuarioasigna} = values;
    const myQuery = `
        INSERT INTO asignaciones(idusuario,idcorrespondencia,fechaasignacion,idusuarioasigna) VALUES(${idusuario},${idcorrespondencia},'${fechaasignacion}',${idusuarioasigna});
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${3},'${fechaasignacion}',${idusuarioasigna});
        UPDATE correspondencia_recibida SET estado=3 WHERE idcorrespondencia_recibida = ${idcorrespondencia};
    `;
    dbconnection.query(myQuery,values,(error,result) =>{
        if(error){
            console.log(error);
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const receiveCorrespondence = (values,callBack)=>{
    const {idusuario,idcorrespondencia,fecharecibida} = values;
    const myQuerys = `
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${2},'${fecharecibida}',${idusuario});
        UPDATE correspondencia_recibida SET estado=2 WHERE idcorrespondencia_recibida = ${idcorrespondencia};
    `;
    dbconnection.query(myQuerys,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const returnCorrespondenceToanohterDepartment = (values,callBack) =>{
    const myQuery = `UPDATE correspondencia_recibida SET entregadoa = ? WHERE idcorrespondencia_recibida = ?`;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}


export {
    correspondenceReceived,
    recieviedCorresponseByUser,
    recieviedCorresponseById,
    editCorrespondenceById,
    deleteCorrespondence,
    recieviedCorresponseByDepto,
    asignCorrespondence,
    receiveCorrespondence,
    returnCorrespondenceToanohterDepartment
};