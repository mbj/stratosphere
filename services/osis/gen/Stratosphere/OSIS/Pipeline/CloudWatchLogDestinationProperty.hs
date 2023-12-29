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
  = CloudWatchLogDestinationProperty {logGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogDestinationProperty ::
  CloudWatchLogDestinationProperty
mkCloudWatchLogDestinationProperty
  = CloudWatchLogDestinationProperty {logGroup = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogDestinationProperty where
  toResourceProperties CloudWatchLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.CloudWatchLogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "LogGroup" Prelude.<$> logGroup])}
instance JSON.ToJSON CloudWatchLogDestinationProperty where
  toJSON CloudWatchLogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "LogGroup" Prelude.<$> logGroup]))
instance Property "LogGroup" CloudWatchLogDestinationProperty where
  type PropertyType "LogGroup" CloudWatchLogDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogDestinationProperty {}
    = CloudWatchLogDestinationProperty
        {logGroup = Prelude.pure newValue, ..}