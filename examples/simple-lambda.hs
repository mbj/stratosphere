{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens
import qualified Data.ByteString.Lazy.Char8 as B
import Data.Text (Text)
import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate myTemplate

myTemplate :: Template
myTemplate =
  template
  [ lambda ]
  & description ?~ "Lambda example"
  & formatVersion ?~ "2010-09-09"

lambda :: Resource
lambda =
  resource "LambdaFunction" $
  LambdaFunctionProperties $
  lambdaFunction 
    lambdaCode 
    "index.handler" 
    "arn:aws:iam::910653408535:role/MyLambdaBasicExecutionRole" 
    "nodejs4.3"

lambdaCode :: LambdaFunctionCode
lambdaCode = lambdaFunctionCode 
  & lfcZipFile ?~ code

code :: Val Text
code = "\
\ exports.handler = function(event, context, callback) { \
\  console.log(\"value1 = \" + event.key1); \
\  console.log(\"value2 = \" + event.key2); \
\  callback(null, \"some success message\"); \
\ } \
\ "
