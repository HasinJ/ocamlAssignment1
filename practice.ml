
let rec flatten2 x =
  match x with
  | [] -> []
  | (h::t) -> h::t ;;


let rec flatten l =
  match l with
  | [] -> []
  | []::t -> flatten t
  | (h::t)::t2 -> h::(flatten (t::t2));;

let rec flatten l =
  match l with
  | [] -> []
  | []::t -> flatten t
  | (h::t)::t2 -> (h::t)@(flatten t2);;

flatten ([[1;2;3];[4;3;2];[5;6;7]]);;
