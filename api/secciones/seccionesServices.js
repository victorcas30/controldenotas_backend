import dbconnection from "../../config/dbconnection.js";

const insertarSeccion = (values,callBack)=>{
    const insertQuery = `INSERT INTO secciones(descripcion) VALUES(?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getSecciones = (callBack)=>{
    const myQuery = 'SELECT * FROM secciones WHERE eliminado="0"';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const getUnaSeccion = (values,callBack) =>{
    const myQuery = 'SELECT idseccion,descripcion,eliminado FROM secciones WHERE idseccion = ? AND eliminado=0';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateSeccion = (values,callBack)=>{
    const updateQuery = `
        UPDATE secciones 
            SET 
                descripcion='${values.descripcion}'
            WHERE idseccion = '${values.idseccion}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const deleteSeccion= (values,callBack)=>{
    const updateQuery = `
        UPDATE secciones 
            SET 
                eliminado='1'
            WHERE idseccion = '${values.idseccion}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}


export {
    insertarSeccion,
    getSecciones,
    getUnaSeccion,
    updateSeccion,
    deleteSeccion
}