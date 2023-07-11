import dbconnection from "../../config/dbconnection.js";

const insertarInasistencia = (values,callBack)=>{
    const insertQuery = `INSERT INTO inasistencias(descripcion) VALUES(?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getInasistencias = (callBack)=>{
    const myQuery = 'SELECT * FROM inasistencias WHERE eliminado="0"';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const getUnaInasistencia = (values,callBack) =>{
    const myQuery = 'SELECT idinasistencia,descripcion,eliminado FROM inasistencias WHERE idinasistencia = ?';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateInasistencia= (values,callBack)=>{
    const updateQuery = `
        UPDATE inasistencias 
            SET 
                descripcion='${values.descripcion}'
            WHERE idinasistencia = '${values.idinasistencia}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const deleteInasistencia= (values,callBack)=>{
    const updateQuery = `
        UPDATE inasistencias 
            SET 
                eliminado='1'
            WHERE idinasistencia = '${values.idinasistencia}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}




export {
    insertarInasistencia,
    getInasistencias,
    getUnaInasistencia,
    updateInasistencia,
    deleteInasistencia
}