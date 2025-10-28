module Stratosphere.Route53.HostedZone.VPCProperty (
        VPCProperty(..), mkVPCProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-vpc.html>
    VPCProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-vpc.html#cfn-route53-hostedzone-vpc-vpcid>
                 vPCId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-vpc.html#cfn-route53-hostedzone-vpc-vpcregion>
                 vPCRegion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCProperty ::
  Value Prelude.Text -> Value Prelude.Text -> VPCProperty
mkVPCProperty vPCId vPCRegion
  = VPCProperty
      {haddock_workaround_ = (), vPCId = vPCId, vPCRegion = vPCRegion}
instance ToResourceProperties VPCProperty where
  toResourceProperties VPCProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::HostedZone.VPC",
         supportsTags = Prelude.False,
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