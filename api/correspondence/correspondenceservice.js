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
        UPDATE correspondencia_recibida SET estado=2,fecha_recibida_jefe_depto='${fecharecibida}' WHERE idcorrespondencia_recibida = ${idcorrespondencia};
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
        cr.estado IN (3,4)
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
        asig.idasignacion,
        asig.idusuario as iduserasignado,
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
        cr.estado IN (3,4)
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
    const {idasignacion,iduserantes,iduserhoy,fechareasignacion} = values;
   /* const myQuerys = `
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${5},'${fechaaprobacion}',${idusuario});
        UPDATE correspondencia_recibida SET estado= 5 WHERE idcorrespondencia_recibida= ${idcorrespondencia};
        UPDATE asignaciones SET fechaaprobadacobros = '${fechaaprobacion}'  WHERE idcorrespondencia= ${idcorrespondencia};
    `;*/
    const myQuerys = `
        INSERT INTO reasignaciones(idasignacion,iduserantes,iduserhoy,fechareasignacion) VALUES(${idasignacion},${iduserantes},${iduserhoy},'${fechareasignacion}');
        UPDATE asignaciones SET idusuario = ${iduserhoy}  WHERE idasignacion= ${idasignacion};
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
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${singleVals[0]},${4},'${singleVals[12]}',${singleVals[11]});
        UPDATE correspondencia_recibida SET estado=4 WHERE idcorrespondencia_recibida= ${singleVals[0]};
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
        asig.idasignacion,
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

const correspondenceInRoute = (values,callBack)=>{
    const myQuery = `
        SELECT
        cr.idcorrespondencia_recibida as id, 
        UPPER(td.descripcion) as tipodocumento,
        DATE_FORMAT(cr.fecha_ingreso_sistema,'%d-%m-%Y') as fecha_ingreso_sistema,
        DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%Y') as fechasellodocumento,
        DATE_FORMAT(cr.fechasellocyr,'%d-%m-%Y') as fechasellocyr,
        DATE_FORMAT(asig.fechaasignacion,'%d-%m-%Y') as fechaasignacion,
        asig.fechaasignacion as fechaasignacioncomplete,
        asig.fechadespachadacobros,
        cr.horasellocyr,
        UPPER(us.usuario) as usuario,
        UPPER(cr.asegurado) as asegurado,
        UPPER(cr.referencia) as referencia,
        DATE_FORMAT(fechavencimientorenov,'%d-%m-%Y') as fechavencimientorenov,
        UPPER(cr.procedencia) as procedencia,
        UPPER(cr.aseg_remi) as aseg_remi,
        UPPER(ase.nombre) as aseguradora,
        UPPER(de.nombre) as entregadoa,
        UPPER(m.nombre) as mensajero,
        cr.estado,
        UPPER(cr.formadeingreso) as formadeingreso
    FROM 
        correspondencia_recibida cr
    
    INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    INNER JOIN asignaciones asig on asig.idcorrespondencia = cr.idcorrespondencia_recibida
    INNER JOIN usuarios us on us.idusuario = asig.idusuario
    INNER JOIN correspondenciaenviada ce on asig.idcorrespondencia = ce.idcorrespondencia
    INNER JOIN mensajeros m on m.idmensajero = ce.idmensajero
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    
    WHERE 
        cr.eliminado = 0
    AND 
        cr.estado IN (6)
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

const finishCorrespondence = (values,callBack)=>{
    const {idusuario,idcorrespondencia,fechafinalizada} = values;
    const myQuerys = `
        INSERT INTO vida_estado_correspondencia(idcorrespondencia,estado,fecharegistro,idusuarioaccion) VALUES(${idcorrespondencia},${7},'${fechafinalizada}',${idusuario});
        UPDATE correspondencia_recibida SET estado= 7 WHERE idcorrespondencia_recibida= ${idcorrespondencia};
        UPDATE asignaciones SET fechafinalizada = '${fechafinalizada}'  WHERE idcorrespondencia= ${idcorrespondencia};
    `;
    dbconnection.query(myQuerys,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const editMensajeroCorrespondence = (values,callBack)=>{
    const {idcorrespondencia,idmensajero} = values;
    const myQuery = `UPDATE correspondenciaenviada SET idmensajero=${idmensajero} WHERE idcorrespondencia= ${idcorrespondencia};`;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(null,result);
        }
    });
}

const reporteCorrespondenciaPendiente1 = () =>{
    let users = {};
    const myQueryUsers = `
        SELECT 
            idusuario,
            UPPER(nombres) as nombres,
            UPPER(apellidos) as apellidos,
            UPPER(usuario) as usuario,
            UPPER(d.nombre) as departamento
        FROM 
            usuarios u 
        INNER JOIN 
            cyr_departamentos d ON d.idcyr_departamento = u.departamento
        WHERE 
            aplica_reporte_trabajo_pendiente = 1
        `;
     dbconnection.promise().query(myQueryUsers).then(([result,fields])=>{
        let corres = {};
        for(let res of result){
            const myQueryCorrespondence = `
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
                cr.aseg_remi as aseg_remi,
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
                asig.idusuario = ${res.idusuario}
            AND 
                cr.eliminado = 0
            AND 
                cr.estado IN (3,4)
            ORDER BY 
                fechaasignacioncomplete ASC
            `;
            dbconnection.promise().query(myQueryCorrespondence).then(([rows,fields])=>{
               return {...res,asignaciones:rows};
            }).then(dd=>{
              corres = {...dd};
            })
        }
    }).then(ss=>{

        return corres;
    }
        
    )
  

    //callBack(false,users);
  
}

const reporteCorrespondenciaPendienste = (callBack) =>{
    reporteCorrespondenciaPendiente1().then(c=>{
       return callBack(false,c);
    });
}


const getUsersToReport = (callBack) =>{
    const myQueryUsers = `
    SELECT 
        idusuario,
        UPPER(nombres) as nombres,
        UPPER(apellidos) as apellidos,
        UPPER(usuario) as usuario,
        UPPER(d.nombre) as departamento
    FROM 
        usuarios u 
    INNER JOIN 
        cyr_departamentos d ON d.idcyr_departamento = u.departamento
    WHERE 
        aplica_reporte_trabajo_pendiente = 1
    `;
    
    dbconnection.query(myQueryUsers,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const getCorresPending = (callBack) =>{
    const myQueryCorrespondence = `
    SELECT
        asig.idusuario,
        UPPER(cr.procedencia) as procedencia,
        cr.aseg_remi as aseg_remi,
        UPPER(ase.nombre) as aseguradora,
        cr.formadeingreso,
        DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%y') as fechasellodocumento,
        DATE_FORMAT(cr.fecha_ingreso_sistema,'%d-%m-%y') as fecha_ingreso_sistema,
        DATEDIFF(cr.fecha_ingreso_sistema,cr.fechasellodocumento) as d1,
        DATE_FORMAT(cr.fecha_recibida_jefe_depto,'%d-%m-%y') as fecha_recib_jd,
        DATEDIFF(cr.fecha_recibida_jefe_depto,cr.fecha_ingreso_sistema) as d2,
        DATE_FORMAT(asig.fechaasignacion,'%d-%m-%y') as fechaasignacion,
        DATEDIFF(asig.fechaasignacion,cr.fecha_ingreso_sistema) as d3,
        UPPER(cr.asegurado) as asegurado,
        UPPER(cr.referencia) as referencia,
        DATE_FORMAT(cr.fechavencimientorenov,'%d-%m-%y') as fechavencimientorenov,
        DATEDIFF(cr.fechavencimientorenov,curdate()) as diasv,
        cr.aseg_remi,
        DATEDIFF(curdate(),asig.fechaasignacion) as dias_asig,
        DATEDIFF(curdate(),cr.fecha_ingreso_sistema) as total_dias
    FROM 
        correspondencia_recibida cr
    INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
    INNER JOIN usuarios us on us.idusuario = cr.recibidopor
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    INNER JOIN asignaciones asig on asig.idcorrespondencia = cr.idcorrespondencia_recibida
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    WHERE  
        cr.eliminado = 0
    AND 
        cr.estado IN (3,4)
    ORDER BY 
        fechaasignacion ASC
    `;
    
    dbconnection.query(myQueryCorrespondence,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const reporteCorrespondenciaPendiente = (callBack) =>{
    let data = {};
    getUsersToReport((error1,users)=>{
        getCorresPending((error2,corres)=>{
            if(!error1 && !error2){
                data = users.map(u=>{
                    let cor = [];
                    let mid = [];
                    cor = corres.filter(c => c.idusuario===u.idusuario);
                    mid = cor.map(cc=>{
                        delete cc.idusuario
                        let fi = cc.formadeingreso === "fisico" ? '(F) -  ':'(E) -  '; 
                        return {
                            fechasellodocumento:cc.fechasellodocumento,
                            fecha_ingreso_sistema:cc.fecha_ingreso_sistema,
                            d1:cc.d1,
                            fecha_recib_jd:cc.fecha_recib_jd,
                            d2:cc.d2,
                            fechaasignacion:cc.fechaasignacion,
                            d3:cc.d3,
                            asegurado:cc.asegurado,
                            referencia: `${fi} ${cc.referencia}`,
                            fechavencimientorenov:cc.fechavencimientorenov,
                            diasv:cc.diasv,
                            remitente:(cc.procedencia==="ASEGURADORA")?cc.aseguradora:cc.aseg_remi.toUpperCase(),
                            dias_asig:cc.dias_asig,
                            total_dias:cc.total_dias
                        };
                    });
                    return {...u,asignaciones:mid};
                });
                return callBack(false,data);
            }else{
                console.log(error2);
                return callBack(true,[]);
            }
        });
    })
}

const correspondenciaRecibida = (values,callBack) =>{
    const myQueryCorrespondence = `
    SELECT
        UPPER(CONCAT(us.nombres,' ',us.apellidos)) as recibidopor,
        UPPER(de.nombre) as departamento,
        UPPER(cr.asegurado) as asegurado,
        cr.formadeingreso,
        '' as firma_recibido,
        UPPER(cr.referencia) as referencia,
        UPPER(ase.nombre) as aseguradora,
        cr.aseg_remi,
        UPPER(cr.procedencia) as procedencia
    FROM 
        correspondencia_recibida cr
    INNER JOIN usuarios us on us.idusuario = cr.recibidopor
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    WHERE  
        cr.eliminado = 0
    AND DATE_FORMAT(cr.fecha_ingreso_sistema,'%Y-%m-%d')='${values[0]}'
    AND DATE_FORMAT(fecha_ingreso_sistema,'%p') = '${values[1]}'
    ORDER BY 
        cr.fecha_ingreso_sistema ASC
    `;
    
    dbconnection.query(myQueryCorrespondence,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const setcorrespondenciaRecibida = (values,callBack) =>{
    correspondenciaRecibida(values,(error,corres)=>{
        if(!error){
            let mid = [];
            mid = corres.map(cc=>{
                let fi = cc.formadeingreso === "fisico" ? '(F) -  ':'(E) -  '; 
                return {
                    recibidopor:cc.recibidopor,
                    departamento:cc.departamento,
                    asegurado:cc.asegurado,
                    firma_recibido:cc.firma_recibido,
                    referencia:`${fi} ${cc.referencia}`,
                    remitente:(cc.procedencia==="ASEGURADORA")?cc.aseguradora:cc.aseg_remi.toUpperCase()
                } 
            });
            return callBack(false,mid);
        }else{
            console.log(error);
            return callBack(true,[]);
        }
    });
}

const corresPendingByUserReport = (values,callBack) =>{
    const myQueryCorrespondence = `
    SELECT
        asig.idusuario,
        UPPER(cr.procedencia) as procedencia,
        cr.aseg_remi as aseg_remi,
        UPPER(ase.nombre) as aseguradora,
        cr.formadeingreso,
        DATE_FORMAT(cr.fechasellodocumento,'%d-%m-%y') as fechasellodocumento,
        DATE_FORMAT(cr.fecha_ingreso_sistema,'%d-%m-%y') as fecha_ingreso_sistema,
        DATEDIFF(cr.fecha_ingreso_sistema,cr.fechasellodocumento) as d1,
        DATE_FORMAT(cr.fecha_recibida_jefe_depto,'%d-%m-%y') as fecha_recib_jd,
        DATEDIFF(cr.fecha_recibida_jefe_depto,cr.fecha_ingreso_sistema) as d2,
        DATE_FORMAT(asig.fechaasignacion,'%d-%m-%y') as fechaasignacion,
        DATEDIFF(asig.fechaasignacion,cr.fecha_ingreso_sistema) as d3,
        UPPER(cr.asegurado) as asegurado,
        UPPER(cr.referencia) as referencia,
        DATE_FORMAT(cr.fechavencimientorenov,'%d-%m-%y') as fechavencimientorenov,
        DATEDIFF(cr.fechavencimientorenov,curdate()) as diasv,
        cr.aseg_remi,
        DATEDIFF(curdate(),asig.fechaasignacion) as dias_asig,
        DATEDIFF(curdate(),cr.fecha_ingreso_sistema) as total_dias
    FROM 
        correspondencia_recibida cr
    INNER JOIN tipo_documentos td on td.idtipo = cr.tipodocumento
    INNER JOIN usuarios us on us.idusuario = cr.recibidopor
    INNER JOIN cyr_departamentos de on de.idcyr_departamento = cr.entregadoa
    INNER JOIN asignaciones asig on asig.idcorrespondencia = cr.idcorrespondencia_recibida
    LEFT  JOIN aseguradoras ase on ase.idaseguradora = cr.aseg_remi
    WHERE  
        cr.eliminado = 0
    AND 
        cr.estado IN (3,4)
    AND 
        asig.idusuario = ${values[0]}
    ORDER BY 
        fechaasignacion ASC
    `;
    
    dbconnection.query(myQueryCorrespondence,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const getCorresPendingByUserReport = (values,callBack) =>{
    corresPendingByUserReport(values,(error,corres)=>{
        if(!error){
            let mid = [];
            mid = corres.map(cc=>{
                let fi = cc.formadeingreso === "fisico" ? '(F) -  ':'(E) -  '; 
                return {
                    fechasellodocumento:cc.fechasellodocumento,
                    fecha_ingreso_sistema:cc.fecha_ingreso_sistema,
                    d1:cc.d1,
                    fecha_recib_jd:cc.fecha_recib_jd,
                    d2:cc.d2,
                    fechaasignacion:cc.fechaasignacion,
                    d3:cc.d3,
                    asegurado:cc.asegurado,
                    referencia: `${fi} ${cc.referencia}`,
                    fechavencimientorenov:cc.fechavencimientorenov,
                    diasv:cc.diasv,
                    remitente:(cc.procedencia==="ASEGURADORA")?cc.aseguradora:cc.aseg_remi.toUpperCase(),
                    dias_asig:cc.dias_asig,
                    total_dias:cc.total_dias
                };
            });
            return callBack(false,mid);
        }else{
            return callBack(true,[]);
        }
    });
}

const accesosbyrol = (values,callBack) =>{
    const queryopcionesyaccesosrol = `
        SELECT o.idopcion,o.nombre,o.icon,o.path FROM opciones o;
        SELECT o.idopcion,o.nombre,o.icon,o.path FROM opciones o
        INNER JOIN accesos a on a.idopcion = o.idopcion
        WHERE a.idrol = ?;
    `;
    dbconnection.query(queryopcionesyaccesosrol,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const procesaraccesos = (values,callBack) =>{
    accesosbyrol(values,(error,accesos)=>{
        if(!error){
            const myAccess = accesos[0].map(acc =>{
                let existe = (accesos[1].find(op => op.idopcion === acc.idopcion)) ? true : false;
                return{
                    idopcion:acc.idopcion,
                    nombre: acc.nombre,
                    icon: acc.icon,
                    path: acc.path,
                    existe:existe
                }
            });
            return callBack(false,myAccess);
        }else{
            return callBack(true,[]);
        }
    });
}

const addDeleteAccess = (values,callBack)=>{
    const queryAdd    = `INSERT INTO accesos(idrol,idopcion) VALUES(?,?)`;
    const queryDelete = `DELETE FROM accesos WHERE idrol=? AND idopcion=?`;
    const myQuery = (values[2]) ? queryAdd : queryDelete ;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(error,result);
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
    sendCorrespondence,
    correspondenceInRoute,
    finishCorrespondence,
    editMensajeroCorrespondence,
    reporteCorrespondenciaPendiente,
    setcorrespondenciaRecibida,
    getUsersToReport,
    getCorresPendingByUserReport,
    procesaraccesos,
    addDeleteAccess
};