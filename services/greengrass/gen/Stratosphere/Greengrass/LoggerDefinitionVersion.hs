module Stratosphere.Greengrass.LoggerDefinitionVersion (
        module Exports, LoggerDefinitionVersion(..),
        mkLoggerDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.LoggerDefinitionVersion.LoggerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggerDefinitionVersion
  = LoggerDefinitionVersion {loggerDefinitionId :: (Value Prelude.Text),
                             loggers :: [LoggerProperty]}
mkLoggerDefinitionVersion ::
  Value Prelude.Text -> [LoggerProperty] -> LoggerDefinitionVersion
mkLoggerDefinitionVersion loggerDefinitionId loggers
  = LoggerDefinitionVersion
      {loggerDefinitionId = loggerDefinitionId, loggers = loggers}
instance ToResourceProperties LoggerDefinitionVersion where
  toResourceProperties LoggerDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::LoggerDefinitionVersion",
         properties = ["LoggerDefinitionId" JSON..= loggerDefinitionId,
                       "Loggers" JSON..= loggers]}
instance JSON.ToJSON LoggerDefinitionVersion where
  toJSON LoggerDefinitionVersion {..}
    = JSON.object
        ["LoggerDefinitionId" JSON..= loggerDefinitionId,
         "Loggers" JSON..= loggers]
instance Property "LoggerDefinitionId" LoggerDefinitionVersion where
  type PropertyType "LoggerDefinitionId" LoggerDefinitionVersion = Value Prelude.Text
  set newValue LoggerDefinitionVersion {..}
    = LoggerDefinitionVersion {loggerDefinitionId = newValue, ..}
instance Property "Loggers" LoggerDefinitionVersion where
  type PropertyType "Loggers" LoggerDefinitionVersion = [LoggerProperty]
  set newValue LoggerDefinitionVersion {..}
    = LoggerDefinitionVersion {loggers = newValue, ..}