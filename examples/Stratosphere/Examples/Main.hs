module Stratosphere.Examples.Main (main, templates) where

import Data.Foldable (traverse_)
import Prelude
import Stratosphere

import qualified Data.ByteString.Lazy.Char8             as BS
import qualified Data.List                              as List
import qualified Stratosphere.Examples.AutoScalingGroup as AutoScalingGroup
import qualified Stratosphere.Examples.RDSMasterReplica as RDSMasterReplica
import qualified Stratosphere.Examples.S3Copy           as S3Copy
import qualified Stratosphere.Examples.SimpleEC2        as SimpleEC2
import qualified Stratosphere.Examples.SimpleLambda     as SimpleLambda
import qualified System.Environment                     as System
import qualified System.Exit                            as System
import qualified System.IO                              as System

main :: IO ()
main =
  System.getArgs >>= \case
    ["list"]        -> listTemplates
    ["print", name] -> printTemplate name
    _other          -> dieUsage

listTemplates :: IO ()
listTemplates = traverse_ (System.putStrLn . fst) templates

printTemplate :: String -> IO ()
printTemplate
  = maybe (System.die "Template not found") (BS.putStrLn . encodeTemplate)
  . (flip List.lookup) templates


dieUsage :: IO ()
dieUsage = do
  programName <- System.getProgName

  System.die $
    "Usage: " <> programName <> "list|print [" <> List.intercalate "," (fst <$> templates) <> "]"

templates :: [(String, Template)]
templates =
  [ ( "auto-scaling-group", AutoScalingGroup.template)
  , ( "rds-master-replica", RDSMasterReplica.template)
  , ( "s3-copy",            S3Copy.template)
  , ( "simple-lambda",      SimpleLambda.template)
  , ( "simple-ec2",         SimpleEC2.template)
  ]
