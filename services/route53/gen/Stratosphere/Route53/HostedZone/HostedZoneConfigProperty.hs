module Stratosphere.Route53.HostedZone.HostedZoneConfigProperty (
        HostedZoneConfigProperty(..), mkHostedZoneConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostedZoneConfigProperty
  = HostedZoneConfigProperty {comment :: (Prelude.Maybe (Value Prelude.Text))}
mkHostedZoneConfigProperty :: HostedZoneConfigProperty
mkHostedZoneConfigProperty
  = HostedZoneConfigProperty {comment = Prelude.Nothing}
instance ToResourceProperties HostedZoneConfigProperty where
  toResourceProperties HostedZoneConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone.HostedZoneConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment])}
instance JSON.ToJSON HostedZoneConfigProperty where
  toJSON HostedZoneConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Comment" Prelude.<$> comment]))
instance Property "Comment" HostedZoneConfigProperty where
  type PropertyType "Comment" HostedZoneConfigProperty = Value Prelude.Text
  set newValue HostedZoneConfigProperty {}
    = HostedZoneConfigProperty {comment = Prelude.pure newValue, ..}