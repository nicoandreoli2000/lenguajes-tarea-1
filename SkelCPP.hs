-- File generated by the BNF Converter (bnfc 2.9.5).

-- Templates for pattern matching on abstract syntax

{-# OPTIONS_GHC -fno-warn-unused-matches #-}

module SkelCPP where

import Prelude (($), Either(..), String, (++), Show, show)
import qualified AbsCPP

type Err = Either String
type Result = Err String

failure :: Show a => a -> Result
failure x = Left $ "Undefined case: " ++ show x

transIncludePath :: AbsCPP.IncludePath -> Result
transIncludePath x = case x of
  AbsCPP.IncludePath string -> failure x

transId :: AbsCPP.Id -> Result
transId x = case x of
  AbsCPP.Id string -> failure x

transProgram :: AbsCPP.Program -> Result
transProgram x = case x of
  AbsCPP.PDefs includes defs -> failure x

transInclude :: AbsCPP.Include -> Result
transInclude x = case x of
  AbsCPP.Include includepath -> failure x

transDef :: AbsCPP.Def -> Result
transDef x = case x of
  AbsCPP.DFun type_ id args stms -> failure x

transArg :: AbsCPP.Arg -> Result
transArg x = case x of
  AbsCPP.ADecl type_ id -> failure x

transStm :: AbsCPP.Stm -> Result
transStm x = case x of
  AbsCPP.SExp exp -> failure x
  AbsCPP.SDecls type_ ids -> failure x
  AbsCPP.SInit type_ id exp -> failure x
  AbsCPP.SReturn exp -> failure x
  AbsCPP.SReturnVoid -> failure x
  AbsCPP.SWhile exp stm -> failure x
  AbsCPP.SBlock stms -> failure x
  AbsCPP.SIfElse exp stm1 stm2 -> failure x

transExp :: AbsCPP.Exp -> Result
transExp x = case x of
  AbsCPP.ETrue -> failure x
  AbsCPP.EFalse -> failure x
  AbsCPP.EInt integer -> failure x
  AbsCPP.EDouble double -> failure x
  AbsCPP.EString string -> failure x
  AbsCPP.EId id -> failure x
  AbsCPP.EApp id exps -> failure x
  AbsCPP.EPIncr exp -> failure x
  AbsCPP.EPDecr exp -> failure x
  AbsCPP.EIncr exp -> failure x
  AbsCPP.EDecr exp -> failure x
  AbsCPP.ETimes exp1 exp2 -> failure x
  AbsCPP.EDiv exp1 exp2 -> failure x
  AbsCPP.EPlus exp1 exp2 -> failure x
  AbsCPP.EMinus exp1 exp2 -> failure x
  AbsCPP.ELt exp1 exp2 -> failure x
  AbsCPP.EGt exp1 exp2 -> failure x
  AbsCPP.ELtEq exp1 exp2 -> failure x
  AbsCPP.EGtEq exp1 exp2 -> failure x
  AbsCPP.EEq exp1 exp2 -> failure x
  AbsCPP.ENEq exp1 exp2 -> failure x
  AbsCPP.EAnd exp1 exp2 -> failure x
  AbsCPP.EOr exp1 exp2 -> failure x
  AbsCPP.EAss exp1 exp2 -> failure x
  AbsCPP.ETyped exp type_ -> failure x

transType :: AbsCPP.Type -> Result
transType x = case x of
  AbsCPP.Type_bool -> failure x
  AbsCPP.Type_int -> failure x
  AbsCPP.Type_double -> failure x
  AbsCPP.Type_void -> failure x
  AbsCPP.Type_string -> failure x
