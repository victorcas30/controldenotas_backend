import dbconnection from "../../config/dbconnection.js";

const insertarMateria = (values,callBack)=>{
    const insertQuery = `INSERT INTO materias(materia) VALUES(?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getMaterias = (callBack)=>{
    const myQuery = 'SELECT * FROM materias';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const getUnaMateria = (values,callBack) =>{
    const myQuery = 'SELECT idmateria,materia FROM materias WHERE idmateria = ? AND eliminado=0';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateMateria= (values,callBack)=>{
    const updateQuery = `
        UPDATE materias 
            SET 
                materia='${values.materia}',
                eliminado='${values.eliminado}'
            WHERE idmateria = '${values.idmateria}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}


export {
    insertarMateria,
    getMaterias,
    getUnaMateria,
    updateMateria
}