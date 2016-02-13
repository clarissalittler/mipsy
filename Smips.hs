module Smips where

{-
  a very simplified MIPS just for the purpose of playing around with pipelining and scheduling and other things.
  I'm definitely not caring about layout of bits and the like here, just data flow to help me understand scheduling and assembly optimizations
-}

type Register = Int
type Label = String

data Smips = Add Register Register Register
           | AddI Register Register Int
           | Sub Register Register Register
           | SubI Register Register Int
           | Load Register Register Int
           | Store Register Register Int
           | And Register Register Register
           | AndI Register Register Int
           | Or Register Register Register
           | OrI Register Register Int
           | Label Label
           | Jmp Label
           | JEq Register Register Label
           | JNEq Register Register Label
           | AddD Register Register Register
           | MultD Register Register Register
           | SubD Register Register Register
           | DivD Register Register Register
           deriving (Eq,Show)
-- we'll give it a proper show instance later but by default lets just use this one
