import dbconnection from '../../config/dbconnection.js';
const recados = (values,callBack)=>{
    const myQuery = `INSERT INTO recados(recado,urgente,fecha_registro,id_user) VALUES(?,?,?,?);`;
    dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(error,result);
        }
    });
}

const myRecados = (values,callBack)=>{
   const {idusuario} = values; 
    const myQuery = `
        SELECT 
            r.id_recado, 
            r.id_user, 
            r.recado, 
            DATE_FORMAT(r.fecha_registro,'%d-%m-%Y') as fecha_registro, 
            DATE_FORMAT(r.fecha_registro,'%h:%i:%s %p') as hora_registro, 
            UPPER(r.estado) as estado, 
            r.fecha_asignado, 
            r.fecha_completado, 
            r.id_user_asigno, 
            r.activo, 
            r.urgente,
            UPPER(m.nombre) as mensajero
        FROM recados r
        LEFT JOIN mensajeros m ON r.idmensajero = m.idmensajero
        WHERE id_user = ${idusuario}
        AND r.activo = '1'
        AND r.estado != 'Finalizado';
    `;
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error,[]);
        }else{
            return callBack(null,result);
        }
    });
}

const asignarRecados = (callBack)=>{
    const myQuery = `
        SELECT 
            r.id_recado, 
            r.id_user, 
            r.recado, 
            DATE_FORMAT(r.fecha_registro,'%d-%m-%Y') as fecha_registro, 
            DATE_FORMAT(r.fecha_registro,'%h:%i:%s %p') as hora_registro, 
            UPPER(r.estado) as estado, 
            r.fecha_asignado, 
            r.fecha_completado, 
            r.id_user_asigno, 
            r.activo, 
            r.urgente,
            UPPER(m.nombre) as mensajero,
            UPPER(u.usuario) as usuario
        FROM recados r
        INNER JOIN usuarios u ON r.id_user = u.idusuario
        LEFT JOIN mensajeros m ON r.idmensajero = m.idmensajero
        WHERE r.activo = '1'
        AND r.estado != 'Finalizado';
     `;
     dbconnection.query(myQuery,(error,result)=>{
         if(error){
            return callBack(error,[]);
         }else{
            return callBack(null,result);
         }
     });
 }

const editarRecados = (values,callBack)=>{
    const {recado,urgente,idRecado} = values;
    const myQuery = `
        UPDATE 
            recados 
            SET 
            recado = '${recado}',
            urgente = ${urgente}
                WHERE 
                id_recado = ${idRecado} AND estado = '${'No Asignado'}';`;
    
                dbconnection.query(myQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(error,result);
        }
    });
}

const asignareliminarRecados = (values,callBack)=>{
    const {opcion,idRecado,urgente,idmensajero} = values;
    const myQuery  = `UPDATE recados SET idmensajero = '${idmensajero}',urgente = ${urgente}, estado='Asignado' WHERE id_recado = ${idRecado};`;
    const myQuery1 = `UPDATE recados SET activo = '0' WHERE id_recado = ${idRecado} AND estado = '${'No Asignado'}';`;
    const activeQuery = (opcion === "a") ? myQuery : myQuery1 ;
    dbconnection.query(activeQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);
        }else{
            return callBack(error,result);
        }
    });
}



export {
    recados,
    myRecados,
    editarRecados,
    asignarRecados,
    asignareliminarRecados
}