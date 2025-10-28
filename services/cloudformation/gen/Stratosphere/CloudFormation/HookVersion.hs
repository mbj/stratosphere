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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hookversion.html>
    HookVersion {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hookversion.html#cfn-cloudformation-hookversion-executionrolearn>
                 executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hookversion.html#cfn-cloudformation-hookversion-loggingconfig>
                 loggingConfig :: (Prelude.Maybe LoggingConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hookversion.html#cfn-cloudformation-hookversion-schemahandlerpackage>
                 schemaHandlerPackage :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-hookversion.html#cfn-cloudformation-hookversion-typename>
                 typeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHookVersion ::
  Value Prelude.Text -> Value Prelude.Text -> HookVersion
mkHookVersion schemaHandlerPackage typeName
  = HookVersion
      {haddock_workaround_ = (),
       schemaHandlerPackage = schemaHandlerPackage, typeName = typeName,
       executionRoleArn = Prelude.Nothing,
       loggingConfig = Prelude.Nothing}
instance ToResourceProperties HookVersion where
  toResourceProperties HookVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::HookVersion",
         supportsTags = Prelude.False,
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