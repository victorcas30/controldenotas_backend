import dbconnection from '../../config/dbconnection.js';

const getUsers = (callBack) =>{
    const myQuery = 'SELECT idusuario,nombres,apellidos,usuario FROM usuarios';
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
        idusuario,
        nombres,
        apellidos,
        usuario,
        aplica_reporte_trabajo_pendiente,
        recibe correspondencia,
        departamento,
        password 
    FROM 
        usuarios 
    WHERE 
        usuario = ?
    AND 
        activo = 1`;
    dbconnection.query(myLoginQuery,values,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
           return callBack(null,result);
        }
    });
}




export {getUsers,createUser,loginUser};