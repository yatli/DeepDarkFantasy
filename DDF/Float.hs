module DDF.Float (module DDF.Float, module DDF.DBI) where

import DDF.DBI
import qualified GHC.Float as M

class DBI r => Float r where
  float :: M.Float -> r h M.Float
  floatZero :: r h M.Float
  floatZero = float 0
  floatOne :: r h M.Float
  floatOne = float 1
  floatPlus :: r h (M.Float -> M.Float -> M.Float)
  floatMinus :: r h (M.Float -> M.Float -> M.Float)
  floatMult :: r h (M.Float -> M.Float -> M.Float)
  floatDivide :: r h (M.Float -> M.Float -> M.Float)
  floatExp :: r h (M.Float -> M.Float)
