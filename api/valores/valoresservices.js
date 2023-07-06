import dbconnection from "../../config/dbconnection.js";

const insertarValor = (values,callBack)=>{
    const insertQuery = `INSERT INTO valores(valor) VALUES(?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getValores = (callBack)=>{
    const myQuery = 'SELECT * FROM valores';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const getUnValor = (values,callBack) =>{
    const myQuery = 'SELECT idvalor,valor FROM valores WHERE idvalor = ?';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const updateValor= (values,callBack)=>{
    const updateQuery = `
        UPDATE valores 
            SET 
                valor='${values.valor}',
                eliminado='${values.eliminado}'
            WHERE idvalor = '${values.idvalor}';`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}


export {
    insertarValor,
    getValores,
    getUnValor,
    updateValor
}