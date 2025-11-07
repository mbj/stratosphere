module Stratosphere.APS.Workspace.CloudWatchLogDestinationProperty (
        CloudWatchLogDestinationProperty(..),
        mkCloudWatchLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-cloudwatchlogdestination.html>
    CloudWatchLogDestinationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-cloudwatchlogdestination.html#cfn-aps-workspace-cloudwatchlogdestination-loggrouparn>
                                      logGroupArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogDestinationProperty ::
  Value Prelude.Text -> CloudWatchLogDestinationProperty
mkCloudWatchLogDestinationProperty logGroupArn
  = CloudWatchLogDestinationProperty
      {haddock_workaround_ = (), logGroupArn = logGroupArn}
instance ToResourceProperties CloudWatchLogDestinationProperty where
  toResourceProperties CloudWatchLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.CloudWatchLogDestination",
         supportsTags = Prelude.False,
         properties = ["LogGroupArn" JSON..= logGroupArn]}
instance JSON.ToJSON CloudWatchLogDestinationProperty where
  toJSON CloudWatchLogDestinationProperty {..}
    = JSON.object ["LogGroupArn" JSON..= logGroupArn]
instance Property "LogGroupArn" CloudWatchLogDestinationProperty where
  type PropertyType "LogGroupArn" CloudWatchLogDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogDestinationProperty {..}
    = CloudWatchLogDestinationProperty {logGroupArn = newValue, ..}