module Stratosphere.Location.TrackerConsumer (
        TrackerConsumer(..), mkTrackerConsumer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrackerConsumer
  = TrackerConsumer {consumerArn :: (Value Prelude.Text),
                     trackerName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrackerConsumer ::
  Value Prelude.Text -> Value Prelude.Text -> TrackerConsumer
mkTrackerConsumer consumerArn trackerName
  = TrackerConsumer
      {consumerArn = consumerArn, trackerName = trackerName}
instance ToResourceProperties TrackerConsumer where
  toResourceProperties TrackerConsumer {..}
    = ResourceProperties
        {awsType = "AWS::Location::TrackerConsumer",
         supportsTags = Prelude.False,
         properties = ["ConsumerArn" JSON..= consumerArn,
                       "TrackerName" JSON..= trackerName]}
instance JSON.ToJSON TrackerConsumer where
  toJSON TrackerConsumer {..}
    = JSON.object
        ["ConsumerArn" JSON..= consumerArn,
         "TrackerName" JSON..= trackerName]
instance Property "ConsumerArn" TrackerConsumer where
  type PropertyType "ConsumerArn" TrackerConsumer = Value Prelude.Text
  set newValue TrackerConsumer {..}
    = TrackerConsumer {consumerArn = newValue, ..}
instance Property "TrackerName" TrackerConsumer where
  type PropertyType "TrackerName" TrackerConsumer = Value Prelude.Text
  set newValue TrackerConsumer {..}
    = TrackerConsumer {trackerName = newValue, ..}