import dbconnection from "../../config/dbconnection.js";

const createAlumno = (values,callBack)=>{
    const insertQuery = `
    INSERT INTO 
        alumnos(
        nombres,
        apellidos,
        celular,
        email
        ) VALUES(?,?,?,?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getAlumnos = (callBack)=>{
    const myQuery = 'SELECT * FROM alumnos';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

export {
    getAlumnos,
    createAlumno
}