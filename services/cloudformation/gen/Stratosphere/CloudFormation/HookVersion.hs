module Stratosphere.CloudFormation.HookVersion (
        module Exports, HookVersion(..), mkHookVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.HookVersion.LoggingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HookVersion
  = HookVersion {executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 loggingConfig :: (Prelude.Maybe LoggingConfigProperty),
                 schemaHandlerPackage :: (Value Prelude.Text),
                 typeName :: (Value Prelude.Text)}
mkHookVersion ::
  Value Prelude.Text -> Value Prelude.Text -> HookVersion
mkHookVersion schemaHandlerPackage typeName
  = HookVersion
      {schemaHandlerPackage = schemaHandlerPackage, typeName = typeName,
       executionRoleArn = Prelude.Nothing,
       loggingConfig = Prelude.Nothing}
instance ToResourceProperties HookVersion where
  toResourceProperties HookVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::HookVersion",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SchemaHandlerPackage" JSON..= schemaHandlerPackage,
                            "TypeName" JSON..= typeName]
                           (Prelude.catMaybes
                              [(JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig]))}
instance JSON.ToJSON HookVersion where
  toJSON HookVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SchemaHandlerPackage" JSON..= schemaHandlerPackage,
               "TypeName" JSON..= typeName]
              (Prelude.catMaybes
                 [(JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig])))
instance Property "ExecutionRoleArn" HookVersion where
  type PropertyType "ExecutionRoleArn" HookVersion = Value Prelude.Text
  set newValue HookVersion {..}
    = HookVersion {executionRoleArn = Prelude.pure newValue, ..}
instance Property "LoggingConfig" HookVersion where
  type PropertyType "LoggingConfig" HookVersion = LoggingConfigProperty
  set newValue HookVersion {..}
    = HookVersion {loggingConfig = Prelude.pure newValue, ..}
instance Property "SchemaHandlerPackage" HookVersion where
  type PropertyType "SchemaHandlerPackage" HookVersion = Value Prelude.Text
  set newValue HookVersion {..}
    = HookVersion {schemaHandlerPackage = newValue, ..}
instance Property "TypeName" HookVersion where
  type PropertyType "TypeName" HookVersion = Value Prelude.Text
  set newValue HookVersion {..}
    = HookVersion {typeName = newValue, ..}