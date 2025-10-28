module Stratosphere.IoT.TopicRuleDestination.HttpUrlDestinationSummaryProperty (
        HttpUrlDestinationSummaryProperty(..),
        mkHttpUrlDestinationSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpUrlDestinationSummaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-httpurldestinationsummary.html>
    HttpUrlDestinationSummaryProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-httpurldestinationsummary.html#cfn-iot-topicruledestination-httpurldestinationsummary-confirmationurl>
                                       confirmationUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpUrlDestinationSummaryProperty ::
  HttpUrlDestinationSummaryProperty
mkHttpUrlDestinationSummaryProperty
  = HttpUrlDestinationSummaryProperty
      {haddock_workaround_ = (), confirmationUrl = Prelude.Nothing}
instance ToResourceProperties HttpUrlDestinationSummaryProperty where
  toResourceProperties HttpUrlDestinationSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRuleDestination.HttpUrlDestinationSummary",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfirmationUrl" Prelude.<$> confirmationUrl])}
instance JSON.ToJSON HttpUrlDestinationSummaryProperty where
  toJSON HttpUrlDestinationSummaryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfirmationUrl" Prelude.<$> confirmationUrl]))
instance Property "ConfirmationUrl" HttpUrlDestinationSummaryProperty where
  type PropertyType "ConfirmationUrl" HttpUrlDestinationSummaryProperty = Value Prelude.Text
  set newValue HttpUrlDestinationSummaryProperty {..}
    = HttpUrlDestinationSummaryProperty
        {confirmationUrl = Prelude.pure newValue, ..}