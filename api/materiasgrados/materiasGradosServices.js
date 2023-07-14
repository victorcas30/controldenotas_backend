import dbconnection from "../../config/dbconnection.js";

const insertarGradoConMaterias = async(data)=>{
    try{
       await dbconnection.promise().beginTransaction();
       
        const insertQuery = `INSERT INTO materiasgrados(idgrado,idmateria) VALUES(?,?)`;
        const promesasInsert = data.materias.map(idmateria=>{
            const values = [data.idgrado,idmateria];
            return dbconnection.promise().execute(insertQuery,values);
        });
        await Promise.all(promesasInsert);
        dbconnection.promise().commit();
    }catch(error){
        dbconnection.promise().rollback();
    }finally{
        dbconnection.close();
    }
}


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
    insertarGradoConMaterias,
    insertarGrado,
    getGrados,
    getUnGrado,
    updateGrado,
    deleteGrado
}