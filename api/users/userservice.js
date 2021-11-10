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



const users = (callBack) =>{
    const myQuery = `
        SELECT 
            idusuario,
            UPPER(nombres) as nombres,
            UPPER(apellidos) as apellidos,
            UPPER(usuario) as usuario,
            idrol, 
            departamento,
            recibe_correspondencia,
            aplica_reporte_trabajo_pendiente,
            activo
        FROM usuarios`;
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const loginUser = (values,callBack)=>{
    const myLoginQuery = `
        SELECT 
            u.idusuario,
            u.idrol,
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
    dbconnection.query(myLoginQuery,values,(error,user)=>{
        const queryAccesos = `SELECT o.idopcion,o.nombre,o.icon,o.path FROM opciones o INNER JOIN accesos a ON a.idopcion=o.idopcion WHERE a.idrol = ${user[0].idrol};`;
        dbconnection.query(queryAccesos,values,(error1,accesos)=>{
            if(error || error1){
                return callBack(error+' '+error1,null);
            }else{
               const userInfo = {...user,accesos:accesos}
               return callBack(null,userInfo);
            }

        }); 
       
    });
}

const opcion = (values,callBack)=>{
    const insertQuery = "INSERT INTO opciones(nombre,icon,path) VALUES(?,?,?)";
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const opciones = (callBack) =>{
    const myQuery = 'SELECT idopcion,nombre,icon,path FROM opciones';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateopcion = (values,callBack)=>{
    const updateQuery = "UPDATE opciones SET nombre=?,icon=?,path=? WHERE idopcion = ?";
    dbconnection.query(updateQuery,values,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const rol = (values,callBack)=>{
    const insertQuery = "INSERT INTO roles(nombre) VALUES(?)";
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const roles = (callBack) =>{
    const myQuery = 'SELECT idrol,nombre FROM roles';
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateRol = (values,callBack)=>{
    const updateQuery = "UPDATE roles SET nombre=? WHERE idrol = ?";
    dbconnection.query(updateQuery,values,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}




export {
    getUsers,
    createUser,
    loginUser,
    usersByDepto,
    usersRecibenCorrespondencia,
    usersAplicaReporte,
    users,
    opcion,
    opciones,
    updateopcion,
    rol,
    roles,
    updateRol
};