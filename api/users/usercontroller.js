import { getUsers,createUser } from "./userservice.js";


const getUsuarios = (req,res) =>{
    getUsers((error,result)=>{
        if(error){
            console.log(error);
            return;
        }
        return res.json({success:1,users:result});
    });
}

const createUsuario = (req,res)=>{
    const values = Object.values(req.body);
    createUser(values,(error,results)=>{
        if(error){
            console.log(error); 
            return;
        }
        return res.json({success:'ok',data:results});
    });
}


export {getUsuarios,createUsuario};

