import { getUsers } from "./userservice.js";


const getUsuarios = (req,res) =>{
    getUsers((error,result)=>{
        if(error){
            console.log(error);
            return;
        }
        return res.json({success:1,users:result});
    });
}

export {getUsuarios};

