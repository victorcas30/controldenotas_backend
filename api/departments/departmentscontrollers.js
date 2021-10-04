import { getDepartments } from "./departmentsservice.js";

const getCyrDepartments = (req,res)=>{
    getDepartments((errors,result)=>{
        if(errors){
            return res.status(500).json({success:false,message:error});
        }else{
           return res.status(200).json({success:1,cyrDeparments:result});
        }
    });
}

export {getCyrDepartments};