import dbconnection from "../../config/dbconnection.js";
const documentstype = (callBack)=>{
    const myQuery = `SELECT idtipo,descripcion FROM tipo_documentos WHERE activo=1`;
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error,null);
        }else{
            return callBack(error,result);
        }
    });
}

export {documentstype};
