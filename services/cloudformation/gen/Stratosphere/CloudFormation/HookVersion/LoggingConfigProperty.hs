module Stratosphere.CloudFormation.HookVersion.LoggingConfigProperty (
        LoggingConfigProperty(..), mkLoggingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigProperty
  = LoggingConfigProperty {logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                           logRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkLoggingConfigProperty :: LoggingConfigProperty
mkLoggingConfigProperty
  = LoggingConfigProperty
      {logGroupName = Prelude.Nothing, logRoleArn = Prelude.Nothing}
instance ToResourceProperties LoggingConfigProperty where
  toResourceProperties LoggingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::HookVersion.LoggingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                            (JSON..=) "LogRoleArn" Prelude.<$> logRoleArn])}
instance JSON.ToJSON LoggingConfigProperty where
  toJSON LoggingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupName" Prelude.<$> logGroupName,
               (JSON..=) "LogRoleArn" Prelude.<$> logRoleArn]))
instance Property "LogGroupName" LoggingConfigProperty where
  type PropertyType "LogGroupName" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty {logGroupName = Prelude.pure newValue, ..}
instance Property "LogRoleArn" LoggingConfigProperty where
  type PropertyType "LogRoleArn" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty {logRoleArn = Prelude.pure newValue, ..}