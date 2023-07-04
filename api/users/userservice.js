import dbconnection from '../../config/dbconnection.js';

const getUnUsuario = (values,callBack) =>{
    const myQuery = 'SELECT idusuario,nombre,apellido,UPPER(usuario) as usuario FROM usuarios WHERE idusuario = ?';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const createUser = (values,callBack)=>{
    const insertQuery = `
    INSERT INTO 
        usuarios(
        nombre,
        apellido,
        usuario,
        password
        ) VALUES(?,?,?,?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const users = (callBack) =>{
    const myQuery = `
        SELECT 
            idusuario,
            UPPER(nombre) as nombre,
            UPPER(apellido) as apellido,
            UPPER(usuario) as usuario
        FROM usuarios`;
    dbconnection.query(myQuery,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateuser= (values,callBack)=>{
    const updateQuery = `
        UPDATE usuarios 
            SET 
                nombre='${values.nombre}',
                apellido='${values.apellido}',
                usuario='${values.usuario}'
            WHERE idusuario = ${values.idusuario};`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            console.log(error);
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
            nombre,
            apellido,
            usuario,
            password
        FROM 
            usuarios
        WHERE 
            usuario = ?
    `;
    dbconnection.query(myLoginQuery,values,(error,user)=>{
        if(error){
            return callBack(error,null);
        }else{
          console.log(user);
           return callBack(null,user);
        }
    });
}

export {
    createUser,
    loginUser,
    users,
    updateuser,
    getUnUsuario
};