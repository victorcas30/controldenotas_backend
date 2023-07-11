import dbconnection from "../../config/dbconnection.js";

const insertarTrimestre = (values,callBack)=>{
    const insertQuery = `INSERT INTO trimestres(descripcion,year) VALUES(?,?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getTrimestres = (callBack)=>{
    const myQuery = 'SELECT * FROM trimestres WHERE eliminado="0"';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const getUnTrimestre = (values,callBack) =>{
    const myQuery = 'SELECT idtrimestre,descripcion,year,eliminado FROM trimestres WHERE idtrimestre = ? AND eliminado=0';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateTrimestre = (values,callBack)=>{
    const updateQuery = `
        UPDATE trimestres 
            SET 
                descripcion='${values.descripcion}',
                year='${values.year}'
            WHERE idtrimestre = '${values.idtrimestre}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const deleteTrimestre= (values,callBack)=>{
    const updateQuery = `
        UPDATE trimestres 
            SET 
                eliminado='1'
            WHERE idtrimestre = '${values.idtrimestre}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}


export {
    insertarTrimestre,
    getTrimestres,
    getUnTrimestre,
    updateTrimestre,
    deleteTrimestre
}