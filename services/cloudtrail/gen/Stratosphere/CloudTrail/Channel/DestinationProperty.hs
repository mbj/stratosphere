module Stratosphere.CloudTrail.Channel.DestinationProperty (
        DestinationProperty(..), mkDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationProperty
  = DestinationProperty {location :: (Value Prelude.Text),
                         type' :: (Value Prelude.Text)}
mkDestinationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DestinationProperty
mkDestinationProperty location type'
  = DestinationProperty {location = location, type' = type'}
instance ToResourceProperties DestinationProperty where
  toResourceProperties DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Channel.Destination",
         supportsTags = Prelude.False,
         properties = ["Location" JSON..= location, "Type" JSON..= type']}
instance JSON.ToJSON DestinationProperty where
  toJSON DestinationProperty {..}
    = JSON.object ["Location" JSON..= location, "Type" JSON..= type']
instance Property "Location" DestinationProperty where
  type PropertyType "Location" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {..}
    = DestinationProperty {location = newValue, ..}
instance Property "Type" DestinationProperty where
  type PropertyType "Type" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {..}
    = DestinationProperty {type' = newValue, ..}