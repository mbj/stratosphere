module Stratosphere.NetworkFirewall.Firewall.AvailabilityZoneMappingProperty (
        AvailabilityZoneMappingProperty(..),
        mkAvailabilityZoneMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailabilityZoneMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewall-availabilityzonemapping.html>
    AvailabilityZoneMappingProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewall-availabilityzonemapping.html#cfn-networkfirewall-firewall-availabilityzonemapping-availabilityzone>
                                     availabilityZone :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailabilityZoneMappingProperty ::
  Value Prelude.Text -> AvailabilityZoneMappingProperty
mkAvailabilityZoneMappingProperty availabilityZone
  = AvailabilityZoneMappingProperty
      {haddock_workaround_ = (), availabilityZone = availabilityZone}
instance ToResourceProperties AvailabilityZoneMappingProperty where
  toResourceProperties AvailabilityZoneMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::Firewall.AvailabilityZoneMapping",
         supportsTags = Prelude.False,
         properties = ["AvailabilityZone" JSON..= availabilityZone]}
instance JSON.ToJSON AvailabilityZoneMappingProperty where
  toJSON AvailabilityZoneMappingProperty {..}
    = JSON.object ["AvailabilityZone" JSON..= availabilityZone]
instance Property "AvailabilityZone" AvailabilityZoneMappingProperty where
  type PropertyType "AvailabilityZone" AvailabilityZoneMappingProperty = Value Prelude.Text
  set newValue AvailabilityZoneMappingProperty {..}
    = AvailabilityZoneMappingProperty {availabilityZone = newValue, ..}