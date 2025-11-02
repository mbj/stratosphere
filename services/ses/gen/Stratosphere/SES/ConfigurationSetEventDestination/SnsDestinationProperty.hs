module Stratosphere.SES.ConfigurationSetEventDestination.SnsDestinationProperty (
        SnsDestinationProperty(..), mkSnsDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-snsdestination.html>
    SnsDestinationProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-snsdestination.html#cfn-ses-configurationseteventdestination-snsdestination-topicarn>
                            topicARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsDestinationProperty ::
  Value Prelude.Text -> SnsDestinationProperty
mkSnsDestinationProperty topicARN
  = SnsDestinationProperty
      {haddock_workaround_ = (), topicARN = topicARN}
instance ToResourceProperties SnsDestinationProperty where
  toResourceProperties SnsDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.SnsDestination",
         supportsTags = Prelude.False,
         properties = ["TopicARN" JSON..= topicARN]}
instance JSON.ToJSON SnsDestinationProperty where
  toJSON SnsDestinationProperty {..}
    = JSON.object ["TopicARN" JSON..= topicARN]
instance Property "TopicARN" SnsDestinationProperty where
  type PropertyType "TopicARN" SnsDestinationProperty = Value Prelude.Text
  set newValue SnsDestinationProperty {..}
    = SnsDestinationProperty {topicARN = newValue, ..}