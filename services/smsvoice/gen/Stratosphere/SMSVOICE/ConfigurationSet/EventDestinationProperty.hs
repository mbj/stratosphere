module Stratosphere.SMSVOICE.ConfigurationSet.EventDestinationProperty (
        module Exports, EventDestinationProperty(..),
        mkEventDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SMSVOICE.ConfigurationSet.CloudWatchLogsDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SMSVOICE.ConfigurationSet.KinesisFirehoseDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SMSVOICE.ConfigurationSet.SnsDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html>
    EventDestinationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-cloudwatchlogsdestination>
                              cloudWatchLogsDestination :: (Prelude.Maybe CloudWatchLogsDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-enabled>
                              enabled :: (Value Prelude.Bool),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-eventdestinationname>
                              eventDestinationName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-kinesisfirehosedestination>
                              kinesisFirehoseDestination :: (Prelude.Maybe KinesisFirehoseDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-matchingeventtypes>
                              matchingEventTypes :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-snsdestination>
                              snsDestination :: (Prelude.Maybe SnsDestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventDestinationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> EventDestinationProperty
mkEventDestinationProperty
  enabled
  eventDestinationName
  matchingEventTypes
  = EventDestinationProperty
      {haddock_workaround_ = (), enabled = enabled,
       eventDestinationName = eventDestinationName,
       matchingEventTypes = matchingEventTypes,
       cloudWatchLogsDestination = Prelude.Nothing,
       kinesisFirehoseDestination = Prelude.Nothing,
       snsDestination = Prelude.Nothing}
instance ToResourceProperties EventDestinationProperty where
  toResourceProperties EventDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::ConfigurationSet.EventDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled,
                            "EventDestinationName" JSON..= eventDestinationName,
                            "MatchingEventTypes" JSON..= matchingEventTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchLogsDestination"
                                 Prelude.<$> cloudWatchLogsDestination,
                               (JSON..=) "KinesisFirehoseDestination"
                                 Prelude.<$> kinesisFirehoseDestination,
                               (JSON..=) "SnsDestination" Prelude.<$> snsDestination]))}
instance JSON.ToJSON EventDestinationProperty where
  toJSON EventDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled,
               "EventDestinationName" JSON..= eventDestinationName,
               "MatchingEventTypes" JSON..= matchingEventTypes]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchLogsDestination"
                    Prelude.<$> cloudWatchLogsDestination,
                  (JSON..=) "KinesisFirehoseDestination"
                    Prelude.<$> kinesisFirehoseDestination,
                  (JSON..=) "SnsDestination" Prelude.<$> snsDestination])))
instance Property "CloudWatchLogsDestination" EventDestinationProperty where
  type PropertyType "CloudWatchLogsDestination" EventDestinationProperty = CloudWatchLogsDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {cloudWatchLogsDestination = Prelude.pure newValue, ..}
instance Property "Enabled" EventDestinationProperty where
  type PropertyType "Enabled" EventDestinationProperty = Value Prelude.Bool
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {enabled = newValue, ..}
instance Property "EventDestinationName" EventDestinationProperty where
  type PropertyType "EventDestinationName" EventDestinationProperty = Value Prelude.Text
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {eventDestinationName = newValue, ..}
instance Property "KinesisFirehoseDestination" EventDestinationProperty where
  type PropertyType "KinesisFirehoseDestination" EventDestinationProperty = KinesisFirehoseDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {kinesisFirehoseDestination = Prelude.pure newValue, ..}
instance Property "MatchingEventTypes" EventDestinationProperty where
  type PropertyType "MatchingEventTypes" EventDestinationProperty = ValueList Prelude.Text
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {matchingEventTypes = newValue, ..}
instance Property "SnsDestination" EventDestinationProperty where
  type PropertyType "SnsDestination" EventDestinationProperty = SnsDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {snsDestination = Prelude.pure newValue, ..}