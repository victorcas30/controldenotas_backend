import dbconnection from '../../config/dbconnection.js';

const getUsers = (callBack) =>{
    const myQuery = 'SELECT idusuario,nombres,apellidos,UPPER(usuario) as usuario FROM usuarios';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const usersByDepto = (values,callBack) =>{
    const myQuery = 'SELECT idusuario,nombres,apellidos,UPPER(usuario) as usuario FROM usuarios WHERE departamento = ?';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}
const usersRecibenCorrespondencia = (callBack) =>{
    const myQuery = 'SELECT idusuario,nombres,apellidos,UPPER(usuario) as usuario FROM usuarios WHERE recibe_correspondencia = 1';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const usersAplicaReporte = (callBack) =>{
    const myQuery = 'SELECT idusuario,nombres,apellidos,UPPER(usuario) as usuario FROM usuarios WHERE aplica_reporte_trabajo_pendiente = 1';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const createUser = (values,callBack)=>{
    const insertQuery = "INSERT INTO usuarios(nombres,apellidos,usuario,password) VALUES(?,?,?,?)";
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const loginUser = (values,callBack)=>{
    const myLoginQuery = `
        SELECT 
            u.idusuario,
            u.nombres,
            u.apellidos,
            u.usuario,
            u.aplica_reporte_trabajo_pendiente,
            u.recibe_correspondencia,
            u.departamento as iddepto_pertenece,
            u.password,
            d.idcyr_departamento,
            d.nombre as departamento,
            d.jefe as idjefe_depto 
        FROM 
            usuarios u 
        INNER JOIN 
            cyr_departamentos d
        ON 
            u.departamento = d.idcyr_departamento
        WHERE 
            u.usuario = ?
        AND 
            u.activo = 1
    `;
    dbconnection.query(myLoginQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
           return callBack(null,result);
        }
    });
}




export {
    getUsers,
    createUser,
    loginUser,
    usersByDepto,
    usersRecibenCorrespondencia,
    usersAplicaReporte
};