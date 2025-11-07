module Stratosphere.APS.Scraper.CloudWatchLogDestinationProperty (
        CloudWatchLogDestinationProperty(..),
        mkCloudWatchLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-cloudwatchlogdestination.html>
    CloudWatchLogDestinationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-cloudwatchlogdestination.html#cfn-aps-scraper-cloudwatchlogdestination-loggrouparn>
                                      logGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogDestinationProperty ::
  CloudWatchLogDestinationProperty
mkCloudWatchLogDestinationProperty
  = CloudWatchLogDestinationProperty
      {haddock_workaround_ = (), logGroupArn = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogDestinationProperty where
  toResourceProperties CloudWatchLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.CloudWatchLogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn])}
instance JSON.ToJSON CloudWatchLogDestinationProperty where
  toJSON CloudWatchLogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupArn" Prelude.<$> logGroupArn]))
instance Property "LogGroupArn" CloudWatchLogDestinationProperty where
  type PropertyType "LogGroupArn" CloudWatchLogDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogDestinationProperty {..}
    = CloudWatchLogDestinationProperty
        {logGroupArn = Prelude.pure newValue, ..}