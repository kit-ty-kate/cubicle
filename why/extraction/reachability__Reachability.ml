(* This file has been generated from Why3 theory Reachability *)


let pre (x: Fol__FOL.t) : Fol__FOL.t =
  let res_cubes = 
    List.fold_left (fun acc sa ->
      let sys = wrap_system sa in
      pre_system sys :: acc
    ) [] (fol_to_cubes x)
  in
  cubes_to_fol res_cubes



let pre_star (x: Fol__FOL.t) : Fol__FOL.t =
  failwith "to be implemented" (* uninterpreted symbol *)

let reachable (init: Fol__FOL.t) (f: Fol__FOL.t) : bool =
  Fol__FOL.sat Fol__FOL.infix_et (pre_star f) init


