import dbconnection from "../../config/dbconnection.js";

const insertarGrado = (values,callBack)=>{
    const insertQuery = `INSERT INTO grados(descripcion) VALUES(?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getGrados = (callBack)=>{
    const myQuery = 'SELECT * FROM grados WHERE eliminado="0"';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const getUnGrado = (values,callBack) =>{
    const myQuery = 'SELECT idgrado,descripcion,eliminado FROM grados WHERE idgrado = ? AND eliminado=0';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateGrado = (values,callBack)=>{
    const updateQuery = `
        UPDATE grados 
            SET 
                descripcion='${values.descripcion}'
            WHERE idgrado = '${values.idgrado}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const deleteGrado= (values,callBack)=>{
    const updateQuery = `
        UPDATE grados 
            SET 
                eliminado='1'
            WHERE idgrado = '${values.idgrado}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}


export {
    insertarGrado,
    getGrados,
    getUnGrado,
    updateGrado,
    deleteGrado
}