module Stratosphere.Greengrass.LoggerDefinition.LoggerDefinitionVersionProperty (
        module Exports, LoggerDefinitionVersionProperty(..),
        mkLoggerDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.LoggerDefinition.LoggerProperty as Exports
import Stratosphere.ResourceProperties
data LoggerDefinitionVersionProperty
  = LoggerDefinitionVersionProperty {loggers :: [LoggerProperty]}
mkLoggerDefinitionVersionProperty ::
  [LoggerProperty] -> LoggerDefinitionVersionProperty
mkLoggerDefinitionVersionProperty loggers
  = LoggerDefinitionVersionProperty {loggers = loggers}
instance ToResourceProperties LoggerDefinitionVersionProperty where
  toResourceProperties LoggerDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::LoggerDefinition.LoggerDefinitionVersion",
         properties = ["Loggers" JSON..= loggers]}
instance JSON.ToJSON LoggerDefinitionVersionProperty where
  toJSON LoggerDefinitionVersionProperty {..}
    = JSON.object ["Loggers" JSON..= loggers]
instance Property "Loggers" LoggerDefinitionVersionProperty where
  type PropertyType "Loggers" LoggerDefinitionVersionProperty = [LoggerProperty]
  set newValue LoggerDefinitionVersionProperty {}
    = LoggerDefinitionVersionProperty {loggers = newValue, ..}