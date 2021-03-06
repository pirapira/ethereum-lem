chapter {* Generated by Lem from word8.lem. *}

theory "Word8Auxiliary" 

imports 
 	 Main "~~/src/HOL/Library/Code_Target_Numeral"
	 "Lem_pervasives" 
	 "Lem_word" 
	 "Word8" 

begin 


(****************************************************)
(*                                                  *)
(* Lemmata                                          *)
(*                                                  *)
(****************************************************)

lemma bs_to_w8_def_lemma:
" ((\<forall> seq.
   (case  resizeBitSeq (Some (( 8 :: nat))) seq of   BitSeq _ s b => W8 s b )
     = (\<lambda> w .  word_of_int (integerFromBitSeq w)) seq)) "
(* Theorem: bs_to_w8_def_lemma*)(* try *) by auto

lemma w8_to_bs_def_lemma:
" ((\<forall> s. \<forall> b.
   BitSeq (Some (( 8 :: nat))) s b =
     (\<lambda> w .  bitSeqFromInteger (Some 8) ( (sint w))) (W8 s b))) "
(* Theorem: w8_to_bs_def_lemma*)(* try *) by auto

lemma word8ToNat_def_lemma:
" ((\<forall> w.
   nat
     (abs
        (
           (integerFromBitSeq
              ((\<lambda> w .  bitSeqFromInteger (Some 8) ( (sint w))) w))))
     = unat w)) "
(* Theorem: word8ToNat_def_lemma*)(* try *) by auto

lemma word8ToInt_def_lemma:
" ((\<forall> w.
   
     (integerFromBitSeq
        ((\<lambda> w .  bitSeqFromInteger (Some 8) ( (sint w))) w)) = 
   sint w)) "
(* Theorem: word8ToInt_def_lemma*)(* try *) by auto

lemma word8FromInteger_def_lemma:
" ((\<forall> i.
   (\<lambda> w .  word_of_int (integerFromBitSeq w))
     (bitSeqFromInteger (Some (( 8 :: nat))) i) =
     (\<lambda> i .  word_of_int ( i)) i)) "
(* Theorem: word8FromInteger_def_lemma*)(* try *) by auto

lemma word8FromInt_def_lemma:
" ((\<forall> i.
   (\<lambda> w .  word_of_int (integerFromBitSeq w))
     (bitSeqFromInteger (Some (( 8 :: nat))) ( i)) = word_of_int i)) "
(* Theorem: word8FromInt_def_lemma*)(* try *) by auto

lemma word8FromBoollist_def_lemma:
" ((\<forall> lst.
   (case  bitSeqFromBoolList lst of
         None => (\<lambda> w .  word_of_int (integerFromBitSeq w))
                   (bitSeqFromInteger None (( 0 :: int)))
     | Some a => (\<lambda> w .  word_of_int (integerFromBitSeq w)) a
   ) = of_bl lst)) "
(* Theorem: word8FromBoollist_def_lemma*)(* try *) by auto

lemma boolListFromWord8_def_lemma:
" ((\<forall> w.
   boolListFrombitSeq (( 8 :: nat))
     ((\<lambda> w .  bitSeqFromInteger (Some 8) ( (sint w))) w) = to_bl w)) "
(* Theorem: boolListFromWord8_def_lemma*)(* try *) by auto

lemma word8FromNumeral_def_lemma:
" ((\<forall> w.
   (\<lambda> w .  word_of_int (integerFromBitSeq w))
     (bitSeqFromInteger None (( w :: int))) = ((word_of_int w) :: 8 word))) "
(* Theorem: word8FromNumeral_def_lemma*)(* try *) by auto

lemma w8Less_def_lemma:
" ((\<forall> bs1. \<forall> bs2.
   word8BinTest bitSeqLess bs1 bs2 = word_sless bs1 bs2)) "
(* Theorem: w8Less_def_lemma*)(* try *) by auto

lemma w8LessEqual_def_lemma:
" ((\<forall> bs1. \<forall> bs2.
   word8BinTest bitSeqLessEqual bs1 bs2 = word_sle bs1 bs2)) "
(* Theorem: w8LessEqual_def_lemma*)(* try *) by auto

lemma w8Greater_def_lemma:
" ((\<forall> bs1. \<forall> bs2.
   word8BinTest bitSeqGreater bs1 bs2 = word_sless bs2 bs1)) "
(* Theorem: w8Greater_def_lemma*)(* try *) by auto

lemma w8GreaterEqual_def_lemma:
" ((\<forall> bs1. \<forall> bs2.
   word8BinTest bitSeqGreaterEqual bs1 bs2 = word_sle bs2 bs1)) "
(* Theorem: w8GreaterEqual_def_lemma*)(* try *) by auto

lemma w8Compare_def_lemma:
" ((\<forall> bs1. \<forall> bs2.
   word8BinTest bitSeqCompare bs1 bs2 =
     (genericCompare word_sless w8Eq bs1 bs2))) "
(* Theorem: w8Compare_def_lemma*)(* try *) by auto

lemma word8Negate_def_lemma:
" (( word8UnaryOp bitSeqNegate = (\<lambda> i. - i))) "
(* Theorem: word8Negate_def_lemma*)(* try *) by auto

lemma word8Succ_def_lemma:
" (( word8UnaryOp bitSeqSucc = (\<lambda> n. n + 1))) "
(* Theorem: word8Succ_def_lemma*)(* try *) by auto

lemma word8Pred_def_lemma:
" (( word8UnaryOp bitSeqPred = (\<lambda> n. n - 1))) "
(* Theorem: word8Pred_def_lemma*)(* try *) by auto

lemma word8Lnot_def_lemma:
" (( word8UnaryOp bitSeqNot = (\<lambda> w. (NOT w)))) "
(* Theorem: word8Lnot_def_lemma*)(* try *) by auto

lemma word8Add_def_lemma:
" (( word8BinOp bitSeqAdd = (op+))) "
(* Theorem: word8Add_def_lemma*)(* try *) by auto

lemma word8Minus_def_lemma:
" (( word8BinOp bitSeqMinus = (op-))) "
(* Theorem: word8Minus_def_lemma*)(* try *) by auto

lemma word8Mult_def_lemma:
" (( word8BinOp bitSeqMult = (op*))) "
(* Theorem: word8Mult_def_lemma*)(* try *) by auto

lemma word8IntegerDivision_def_lemma:
" (( word8BinOp bitSeqDiv = (op div))) "
(* Theorem: word8IntegerDivision_def_lemma*)(* try *) by auto

lemma word8Division_def_lemma:
" (( word8BinOp bitSeqDiv = (op div))) "
(* Theorem: word8Division_def_lemma*)(* try *) by auto

lemma word8Remainder_def_lemma:
" (( word8BinOp bitSeqMod = (op mod))) "
(* Theorem: word8Remainder_def_lemma*)(* try *) by auto

lemma word8Land_def_lemma:
" (( word8BinOp bitSeqAnd = (op AND))) "
(* Theorem: word8Land_def_lemma*)(* try *) by auto

lemma word8Lor_def_lemma:
" (( word8BinOp bitSeqOr = (op OR))) "
(* Theorem: word8Lor_def_lemma*)(* try *) by auto

lemma word8Lxor_def_lemma:
" (( word8BinOp bitSeqXor = (op XOR))) "
(* Theorem: word8Lxor_def_lemma*)(* try *) by auto

lemma word8Min_def_lemma:
" (( word8BinOp (bitSeqMin) = min)) "
(* Theorem: word8Min_def_lemma*)(* try *) by auto

lemma word8Max_def_lemma:
" (( word8BinOp (bitSeqMax) = max)) "
(* Theorem: word8Max_def_lemma*)(* try *) by auto

lemma word8Power_def_lemma:
" (( word8NatOp bitSeqPow = (op^))) "
(* Theorem: word8Power_def_lemma*)(* try *) by auto

lemma word8Asr_def_lemma:
" (( word8NatOp bitSeqArithmeticShiftRight = (op>>>))) "
(* Theorem: word8Asr_def_lemma*)(* try *) by auto

lemma word8Lsr_def_lemma:
" (( word8NatOp bitSeqLogicalShiftRight = (op>>))) "
(* Theorem: word8Lsr_def_lemma*)(* try *) by auto

lemma word8Lsl_def_lemma:
" (( word8NatOp bitSeqShiftLeft = (op<<))) "
(* Theorem: word8Lsl_def_lemma*)(* try *) by auto



end
