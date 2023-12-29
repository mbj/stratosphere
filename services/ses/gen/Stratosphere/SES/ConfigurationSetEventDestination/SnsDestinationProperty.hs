module Stratosphere.SES.ConfigurationSetEventDestination.SnsDestinationProperty (
        SnsDestinationProperty(..), mkSnsDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsDestinationProperty
  = SnsDestinationProperty {topicARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsDestinationProperty ::
  Value Prelude.Text -> SnsDestinationProperty
mkSnsDestinationProperty topicARN
  = SnsDestinationProperty {topicARN = topicARN}
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
  set newValue SnsDestinationProperty {}
    = SnsDestinationProperty {topicARN = newValue, ..}