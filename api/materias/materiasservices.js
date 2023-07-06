import dbconnection from "../../config/dbconnection.js";

const insertarMateria = (values,callBack)=>{
    const insertQuery = `
    INSERT INTO materias(materia) VALUES(?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}


export {
    insertarMateria
}