
import { getAlumnos,createAlumno,updateAlumno,getUnAlumno } from "./alumnosservice.js";

const createElAlumno = (req,res)=>{
    const values = Object.values(req.body);
    createAlumno(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al crear alumno'});
        }else{
            res.status(200).json({success:true,message:'Alumno creado'});
        }
    });
}

const getLosAlumnos = (req,res)=>{
    getAlumnos((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:errors});
        }else{
           return res.status(200).json({success:1,cyrDeparments:result});
        }
    });
}

const setUpdateAlumno = (req,res)=>{
    const values = req.body;
    updateAlumno(values,(error,results)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al actualizar alumno'});
        }else{
            res.status(200).json({success:true,message:'Cambios guardados'});
        }
    });
}

const getAlumno = (req,res) =>{
    const values = Object.values(req.params);
    getUnAlumno(values,(error,result)=>{
        if(error){
            res.status(500).json({success:false,message:'Error al procesar la solicitud'});
        }else{
            res.status(200).json({success:true,users:result});
        }
    });
}




export {
    createElAlumno,
    getLosAlumnos,
    setUpdateAlumno,
    getAlumno
};