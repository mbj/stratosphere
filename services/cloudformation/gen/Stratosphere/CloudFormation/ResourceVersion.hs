module Stratosphere.CloudFormation.ResourceVersion (
        module Exports, ResourceVersion(..), mkResourceVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.ResourceVersion.LoggingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceVersion
  = ResourceVersion {executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                     loggingConfig :: (Prelude.Maybe LoggingConfigProperty),
                     schemaHandlerPackage :: (Value Prelude.Text),
                     typeName :: (Value Prelude.Text)}
mkResourceVersion ::
  Value Prelude.Text -> Value Prelude.Text -> ResourceVersion
mkResourceVersion schemaHandlerPackage typeName
  = ResourceVersion
      {schemaHandlerPackage = schemaHandlerPackage, typeName = typeName,
       executionRoleArn = Prelude.Nothing,
       loggingConfig = Prelude.Nothing}
instance ToResourceProperties ResourceVersion where
  toResourceProperties ResourceVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ResourceVersion",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SchemaHandlerPackage" JSON..= schemaHandlerPackage,
                            "TypeName" JSON..= typeName]
                           (Prelude.catMaybes
                              [(JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig]))}
instance JSON.ToJSON ResourceVersion where
  toJSON ResourceVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SchemaHandlerPackage" JSON..= schemaHandlerPackage,
               "TypeName" JSON..= typeName]
              (Prelude.catMaybes
                 [(JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig])))
instance Property "ExecutionRoleArn" ResourceVersion where
  type PropertyType "ExecutionRoleArn" ResourceVersion = Value Prelude.Text
  set newValue ResourceVersion {..}
    = ResourceVersion {executionRoleArn = Prelude.pure newValue, ..}
instance Property "LoggingConfig" ResourceVersion where
  type PropertyType "LoggingConfig" ResourceVersion = LoggingConfigProperty
  set newValue ResourceVersion {..}
    = ResourceVersion {loggingConfig = Prelude.pure newValue, ..}
instance Property "SchemaHandlerPackage" ResourceVersion where
  type PropertyType "SchemaHandlerPackage" ResourceVersion = Value Prelude.Text
  set newValue ResourceVersion {..}
    = ResourceVersion {schemaHandlerPackage = newValue, ..}
instance Property "TypeName" ResourceVersion where
  type PropertyType "TypeName" ResourceVersion = Value Prelude.Text
  set newValue ResourceVersion {..}
    = ResourceVersion {typeName = newValue, ..}