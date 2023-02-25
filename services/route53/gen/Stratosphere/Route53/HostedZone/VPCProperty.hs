module Stratosphere.Route53.HostedZone.VPCProperty (
        VPCProperty(..), mkVPCProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCProperty
  = VPCProperty {vPCId :: (Value Prelude.Text),
                 vPCRegion :: (Value Prelude.Text)}
mkVPCProperty ::
  Value Prelude.Text -> Value Prelude.Text -> VPCProperty
mkVPCProperty vPCId vPCRegion
  = VPCProperty {vPCId = vPCId, vPCRegion = vPCRegion}
instance ToResourceProperties VPCProperty where
  toResourceProperties VPCProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone.VPC",
         properties = ["VPCId" JSON..= vPCId,
                       "VPCRegion" JSON..= vPCRegion]}
instance JSON.ToJSON VPCProperty where
  toJSON VPCProperty {..}
    = JSON.object
        ["VPCId" JSON..= vPCId, "VPCRegion" JSON..= vPCRegion]
instance Property "VPCId" VPCProperty where
  type PropertyType "VPCId" VPCProperty = Value Prelude.Text
  set newValue VPCProperty {..} = VPCProperty {vPCId = newValue, ..}
instance Property "VPCRegion" VPCProperty where
  type PropertyType "VPCRegion" VPCProperty = Value Prelude.Text
  set newValue VPCProperty {..}
    = VPCProperty {vPCRegion = newValue, ..}