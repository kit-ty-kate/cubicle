(**************************************************************************)
(*                                                                        *)
(*                              Cubicle                                   *)
(*                                                                        *)
(*                       Copyright (C) 2011-2013                          *)
(*                                                                        *)
(*                  Sylvain Conchon and Alain Mebsout                     *)
(*                       Universite Paris-Sud 11                          *)
(*                                                                        *)
(*                                                                        *)
(*  This file is distributed under the terms of the Apache Software       *)
(*  License version 2.0                                                   *)
(*                                                                        *)
(**************************************************************************)

val cpt_delete : int ref

val new_node : Node.t -> unit

val fixpoint : Node.t -> int list -> unit

val restart : unit -> unit

val remaining : (unit -> int * int) -> unit

val delete : int -> unit

val candidate : Node.t -> unit

val print_report : safe:bool -> Node.t list -> Node.t list -> unit

val error_trace : Ast.t_system -> Node.t -> unit