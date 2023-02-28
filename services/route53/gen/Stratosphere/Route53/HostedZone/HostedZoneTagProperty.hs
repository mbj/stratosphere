module Stratosphere.Route53.HostedZone.HostedZoneTagProperty (
        HostedZoneTagProperty(..), mkHostedZoneTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostedZoneTagProperty
  = HostedZoneTagProperty {key :: (Value Prelude.Text),
                           value :: (Value Prelude.Text)}
mkHostedZoneTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> HostedZoneTagProperty
mkHostedZoneTagProperty key value
  = HostedZoneTagProperty {key = key, value = value}
instance ToResourceProperties HostedZoneTagProperty where
  toResourceProperties HostedZoneTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone.HostedZoneTag",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON HostedZoneTagProperty where
  toJSON HostedZoneTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" HostedZoneTagProperty where
  type PropertyType "Key" HostedZoneTagProperty = Value Prelude.Text
  set newValue HostedZoneTagProperty {..}
    = HostedZoneTagProperty {key = newValue, ..}
instance Property "Value" HostedZoneTagProperty where
  type PropertyType "Value" HostedZoneTagProperty = Value Prelude.Text
  set newValue HostedZoneTagProperty {..}
    = HostedZoneTagProperty {value = newValue, ..}