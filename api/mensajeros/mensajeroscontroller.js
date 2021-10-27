import { mensajeros } from "./mensajerosservice.js";

const getMensajeros = (req,res) =>{
    mensajeros((error,result)=>{
        if(error){
            console.log(error);
            return;
        }
        return res.json({success:1,mensajeros:result});
    });
}

export {
    getMensajeros
}