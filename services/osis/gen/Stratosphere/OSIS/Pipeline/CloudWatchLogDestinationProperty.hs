module Stratosphere.OSIS.Pipeline.CloudWatchLogDestinationProperty (
        CloudWatchLogDestinationProperty(..),
        mkCloudWatchLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-cloudwatchlogdestination.html>
    CloudWatchLogDestinationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-cloudwatchlogdestination.html#cfn-osis-pipeline-cloudwatchlogdestination-loggroup>
                                      logGroup :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogDestinationProperty ::
  Value Prelude.Text -> CloudWatchLogDestinationProperty
mkCloudWatchLogDestinationProperty logGroup
  = CloudWatchLogDestinationProperty
      {haddock_workaround_ = (), logGroup = logGroup}
instance ToResourceProperties CloudWatchLogDestinationProperty where
  toResourceProperties CloudWatchLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.CloudWatchLogDestination",
         supportsTags = Prelude.False,
         properties = ["LogGroup" JSON..= logGroup]}
instance JSON.ToJSON CloudWatchLogDestinationProperty where
  toJSON CloudWatchLogDestinationProperty {..}
    = JSON.object ["LogGroup" JSON..= logGroup]
instance Property "LogGroup" CloudWatchLogDestinationProperty where
  type PropertyType "LogGroup" CloudWatchLogDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogDestinationProperty {..}
    = CloudWatchLogDestinationProperty {logGroup = newValue, ..}