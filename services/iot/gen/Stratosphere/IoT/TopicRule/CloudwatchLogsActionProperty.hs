module Stratosphere.IoT.TopicRule.CloudwatchLogsActionProperty (
        CloudwatchLogsActionProperty(..), mkCloudwatchLogsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudwatchLogsActionProperty
  = CloudwatchLogsActionProperty {batchMode :: (Prelude.Maybe (Value Prelude.Bool)),
                                  logGroupName :: (Value Prelude.Text),
                                  roleArn :: (Value Prelude.Text)}
mkCloudwatchLogsActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CloudwatchLogsActionProperty
mkCloudwatchLogsActionProperty logGroupName roleArn
  = CloudwatchLogsActionProperty
      {logGroupName = logGroupName, roleArn = roleArn,
       batchMode = Prelude.Nothing}
instance ToResourceProperties CloudwatchLogsActionProperty where
  toResourceProperties CloudwatchLogsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.CloudwatchLogsAction",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogGroupName" JSON..= logGroupName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes [(JSON..=) "BatchMode" Prelude.<$> batchMode]))}
instance JSON.ToJSON CloudwatchLogsActionProperty where
  toJSON CloudwatchLogsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogGroupName" JSON..= logGroupName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes [(JSON..=) "BatchMode" Prelude.<$> batchMode])))
instance Property "BatchMode" CloudwatchLogsActionProperty where
  type PropertyType "BatchMode" CloudwatchLogsActionProperty = Value Prelude.Bool
  set newValue CloudwatchLogsActionProperty {..}
    = CloudwatchLogsActionProperty
        {batchMode = Prelude.pure newValue, ..}
instance Property "LogGroupName" CloudwatchLogsActionProperty where
  type PropertyType "LogGroupName" CloudwatchLogsActionProperty = Value Prelude.Text
  set newValue CloudwatchLogsActionProperty {..}
    = CloudwatchLogsActionProperty {logGroupName = newValue, ..}
instance Property "RoleArn" CloudwatchLogsActionProperty where
  type PropertyType "RoleArn" CloudwatchLogsActionProperty = Value Prelude.Text
  set newValue CloudwatchLogsActionProperty {..}
    = CloudwatchLogsActionProperty {roleArn = newValue, ..}