module Stratosphere.PinpointEmail.ConfigurationSetEventDestination.SnsDestinationProperty (
        SnsDestinationProperty(..), mkSnsDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsDestinationProperty
  = SnsDestinationProperty {topicArn :: (Value Prelude.Text)}
mkSnsDestinationProperty ::
  Value Prelude.Text -> SnsDestinationProperty
mkSnsDestinationProperty topicArn
  = SnsDestinationProperty {topicArn = topicArn}
instance ToResourceProperties SnsDestinationProperty where
  toResourceProperties SnsDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.SnsDestination",
         properties = ["TopicArn" JSON..= topicArn]}
instance JSON.ToJSON SnsDestinationProperty where
  toJSON SnsDestinationProperty {..}
    = JSON.object ["TopicArn" JSON..= topicArn]
instance Property "TopicArn" SnsDestinationProperty where
  type PropertyType "TopicArn" SnsDestinationProperty = Value Prelude.Text
  set newValue SnsDestinationProperty {}
    = SnsDestinationProperty {topicArn = newValue, ..}