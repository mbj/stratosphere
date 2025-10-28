module Stratosphere.CloudTrail.Channel.DestinationProperty (
        DestinationProperty(..), mkDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-channel-destination.html>
    DestinationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-channel-destination.html#cfn-cloudtrail-channel-destination-location>
                         location :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-channel-destination.html#cfn-cloudtrail-channel-destination-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DestinationProperty
mkDestinationProperty location type'
  = DestinationProperty
      {haddock_workaround_ = (), location = location, type' = type'}
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