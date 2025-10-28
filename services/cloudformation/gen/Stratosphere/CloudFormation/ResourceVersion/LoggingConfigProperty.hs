module Stratosphere.CloudFormation.ResourceVersion.LoggingConfigProperty (
        LoggingConfigProperty(..), mkLoggingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-resourceversion-loggingconfig.html>
    LoggingConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-resourceversion-loggingconfig.html#cfn-cloudformation-resourceversion-loggingconfig-loggroupname>
                           logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-resourceversion-loggingconfig.html#cfn-cloudformation-resourceversion-loggingconfig-logrolearn>
                           logRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigProperty :: LoggingConfigProperty
mkLoggingConfigProperty
  = LoggingConfigProperty
      {haddock_workaround_ = (), logGroupName = Prelude.Nothing,
       logRoleArn = Prelude.Nothing}
instance ToResourceProperties LoggingConfigProperty where
  toResourceProperties LoggingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::ResourceVersion.LoggingConfig",
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