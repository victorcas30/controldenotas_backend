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

const correspondenceAsignedToUser = (values,callBack)=>{
    const myQuery = `
        SELECT
        cr.idcorrespondencia_recibida as id, 
        UPPER(td.descripcion) as tipodocumento,
        DATE_FORMAT(cr.fecha_ingreso_sistema,'%d-%m-%Y') as fecha_ingreso_sistema,
        DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%Y') as fechasellodocumento,
        DATE_FORMAT(cr.fechasellocyr,'%d-%m-%Y') as fechasellocyr,
        DATE_FORMAT(asig.fechaasignacion,'%d-%m-%Y') as fechaasignacion,
        asig.fechaasignacion as fechaasignacioncomplete,
        cr.horasellocyr,
        UPPER(us.nombres) as recibidopor,
        UPPER(cr.asegurado) as asegurado,
        UPPER(cr.referencia) as referencia,
        DATE_FORMAT(fechavencimientorenov,'%d-%m-%Y') as fechavencimientorenov,
        UPPER(cr.procedencia) as procedencia,
        UPPER(cr.aseg_remi) as aseg_remi,
        UPPER(ase.nombre) as aseguradora,
        UPPER(de.nombre) as entregadoa,
        cr.estado,
        UPPER(cr.formadeingreso) as formadeingreso
    FROM 
        correspondencia_recibida cr
    
    INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
    INNER JOIN usuarios us on us.idusuario = cr.recibidopor
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    INNER JOIN asignaciones asig on asig.idcorrespondencia = cr.idcorrespondencia_recibida
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    WHERE 
        asig.idusuario = ?
    AND 
        cr.eliminado = 0
    AND 
        cr.estado IN (3,4,5)
    ORDER BY 
        fechaasignacioncomplete ASC
    `;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(error,result);
        }
    });
}

const requestApproval = (values,callBack)=>{
    const {idusuario,idcorrespondencia,fechasolicitud} = values;
    const myQuerys = `
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${4},'${fechasolicitud}',${idusuario});
        UPDATE correspondencia_recibida SET estado= 4 WHERE idcorrespondencia_recibida = ${idcorrespondencia};
    `;
    dbconnection.query(myQuerys,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const correspondenceToApproval = (values,callBack)=>{
    const myQuery = `
        SELECT
        cr.idcorrespondencia_recibida as id, 
        UPPER(td.descripcion) as tipodocumento,
        DATE_FORMAT(cr.fecha_ingreso_sistema,'%d-%m-%Y') as fecha_ingreso_sistema,
        DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%Y') as fechasellodocumento,
        DATE_FORMAT(cr.fechasellocyr,'%d-%m-%Y') as fechasellocyr,
        DATE_FORMAT(asig.fechaasignacion,'%d-%m-%Y') as fechaasignacion,
        asig.fechaasignacion as fechaasignacioncomplete,
        cr.horasellocyr,
        UPPER(us.nombres) as asignado_a,
        UPPER(cr.asegurado) as asegurado,
        UPPER(cr.referencia) as referencia,
        DATE_FORMAT(fechavencimientorenov,'%d-%m-%Y') as fechavencimientorenov,
        UPPER(cr.procedencia) as procedencia,
        UPPER(cr.aseg_remi) as aseg_remi,
        UPPER(ase.nombre) as aseguradora,
        UPPER(de.nombre) as entregadoa,
        cr.estado,
        de.idcyr_departamento as iddepartamento,
        UPPER(cr.formadeingreso) as formadeingreso
    FROM 
        correspondencia_recibida cr
    
    INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    INNER JOIN asignaciones asig on asig.idcorrespondencia = cr.idcorrespondencia_recibida
    INNER JOIN usuarios us on us.idusuario = asig.idusuario
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    WHERE 
        de.idcyr_departamento = ?
    AND 
        asig.idusuario = ?
    AND 
        cr.eliminado = 0
    AND 
        cr.estado = ?
    ORDER BY 
        fechaasignacioncomplete ASC
    `;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(error,result);
        }
    });
}


const approveCorrespondence = (values,callBack)=>{
    const {idusuario,idcorrespondencia,fechaaprobacion} = values;
    const myQuerys = `
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${5},'${fechaaprobacion}',${idusuario});
        UPDATE correspondencia_recibida SET estado= 5 WHERE idcorrespondencia_recibida= ${idcorrespondencia};
        UPDATE asignaciones SET fechaaprobadacobros = '${fechaaprobacion}'  WHERE idcorrespondencia= ${idcorrespondencia};
    `;
    dbconnection.query(myQuerys,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const correspondenceSend = (values,callBack) =>{
    const myvals = {...values,cbdevoluciondocs:(values?.cbdevoluciondocs === "" ||values?.cbdevoluciondocs === false ) ? 0:1,cbcc:(values?.cbcc ===false) ? 0:1,cbrutaespecial:(values?.cbrutaespecial===false) ? 0:1,};
    const singleVals = Object.values(values);
    const myInsertQuery = `
        INSERT INTO correspondenciaenviada(
            idcorrespondencia,
            asegurado,
            referencia,
            destino,
            aseguradora,
            cbdevoluciondocs,
            cbcc,
            cbrutaespecial,
            atencion,
            destino_otro,
            comentario,
            idusuario,
            fecharegistro
        ) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?);
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${singleVals[0]},${6},'${singleVals[12]}',${singleVals[11]});
        UPDATE correspondencia_recibida SET estado=6 WHERE idcorrespondencia_recibida= ${singleVals[0]};
    `;
    dbconnection.query(myInsertQuery,singleVals,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}


const correspondenceToApprovalCobros = (values,callBack)=>{
    const myQuery = `
        SELECT
        cr.idcorrespondencia_recibida as id, 
        UPPER(td.descripcion) as tipodocumento,
        DATE_FORMAT(cr.fecha_ingreso_sistema,'%d-%m-%Y') as fecha_ingreso_sistema,
        DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%Y') as fechasellodocumento,
        DATE_FORMAT(cr.fechasellocyr,'%d-%m-%Y') as fechasellocyr,
        DATE_FORMAT(asig.fechaasignacion,'%d-%m-%Y') as fechaasignacion,
        asig.fechaasignacion as fechaasignacioncomplete,
        cr.horasellocyr,
        UPPER(us.nombres) as asignado_a,
        UPPER(us.usuario) as usuario,
        UPPER(cr.asegurado) as asegurado,
        UPPER(cr.referencia) as referencia,
        DATE_FORMAT(fechavencimientorenov,'%d-%m-%Y') as fechavencimientorenov,
        UPPER(cr.procedencia) as procedencia,
        UPPER(cr.aseg_remi) as aseg_remi,
        UPPER(ase.nombre) as aseguradora,
        UPPER(de.nombre) as entregadoa,
        cr.estado,
        de.idcyr_departamento as iddepartamento,
        UPPER(cr.formadeingreso) as formadeingreso
    FROM 
        correspondencia_recibida cr
    
    INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    INNER JOIN asignaciones asig on asig.idcorrespondencia = cr.idcorrespondencia_recibida
    INNER JOIN usuarios us on us.idusuario = asig.idusuario
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    
    WHERE 
        cr.eliminado = 0
    `;

    const myQuery2 = `
        AND 
        de.idcyr_departamento = ${values[0]}
    `;

    const myQuery3 = `
        AND 
        us.idusuario = ${values[1]}
    `;

    const myQuery4 = `
    AND 
        cr.estado IN (4,5)
    ORDER BY 
        fechaasignacioncomplete ASC
    `;
    let miCuery = myQuery+((values[0] != "0") ? myQuery2:'')+((values[1] != "0") ? myQuery3:'')+myQuery4;

    dbconnection.query(miCuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(error,result);
        }
    });
}

const sendCorrespondence = (values,callBack)=>{
    const {idusuario,idcorrespondencia,fechaaprobacion,idmensajero} = values;
    const myQuerys = `
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${6},'${fechaaprobacion}',${idusuario});
        UPDATE correspondencia_recibida SET estado= 6 WHERE idcorrespondencia_recibida= ${idcorrespondencia};
        UPDATE correspondenciaenviada SET idmensajero=${idmensajero} WHERE idcorrespondencia= ${idcorrespondencia};
        UPDATE asignaciones SET fechadespachadacobros = '${fechaaprobacion}'  WHERE idcorrespondencia= ${idcorrespondencia};
    `;
    dbconnection.query(myQuerys,values,(error,result)=>{
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
    returnCorrespondenceToanohterDepartment,
    correspondenceAsignedToUser,
    requestApproval,
    correspondenceToApproval,
    approveCorrespondence,
    correspondenceSend,
    correspondenceToApprovalCobros,
    sendCorrespondence
};