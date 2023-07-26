import dbconnection from '../../config/dbconnection.js';

const crearMaestroService = async(values)=>{
    const crearMaestrosQuery = `INSERT INTO maestros(
        nombre, 
        apellido,
        direccion,
        dui,
        celular,
        correo,
        especialidad
    )VALUES(?,?,?,?,?,?,?)`;
    const result = await dbconnection.promise().query(crearMaestrosQuery,values);
    return result;
}

const getMaestrosServices = async()=>{
    const getMaestrosQuery = "SELECT * FROM maestros WHERE eliminado='0'";
    const [result] = await dbconnection.promise().query(getMaestrosQuery);
    return result;
}

const getUnMaestroServices = async(values)=>{
    const getUnMaestroQuery = "SELECT * FROM maestros WHERE idmaestro=?";
    const [result] = await dbconnection.promise().query(getUnMaestroQuery);
    return result;
}

const updateMaestroServices = async(values)=>{
    const updateMaestroQuery = `UPDATE maestros SET
        nombre=?, 
        apellido=?,
        direccion=?,
        dui=?,
        celular=?,
        correo=?,
        especialidad=?
        WHERE idmaestro=?
    `;
    const result = await dbconnection.promise().query(updateMaestroQuery,values);
    return result;
}

const deleteMaestroServices = async(values)=>{
    const deleteMaestroQuery = `UPDATE maestros SET eliminado='1' WHERE idmaestro=?`;
    const result = await dbconnection.promise().query(deleteMaestroQuery,values);
    return result;
}




export {
    crearMaestroService,
    getMaestrosServices,
    getUnMaestroServices,
    updateMaestroServices,
    deleteMaestroServices
}

