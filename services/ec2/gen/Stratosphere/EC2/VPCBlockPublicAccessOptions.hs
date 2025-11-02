module Stratosphere.EC2.VPCBlockPublicAccessOptions (
        VPCBlockPublicAccessOptions(..), mkVPCBlockPublicAccessOptions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCBlockPublicAccessOptions
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcblockpublicaccessoptions.html>
    VPCBlockPublicAccessOptions {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcblockpublicaccessoptions.html#cfn-ec2-vpcblockpublicaccessoptions-internetgatewayblockmode>
                                 internetGatewayBlockMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCBlockPublicAccessOptions ::
  Value Prelude.Text -> VPCBlockPublicAccessOptions
mkVPCBlockPublicAccessOptions internetGatewayBlockMode
  = VPCBlockPublicAccessOptions
      {haddock_workaround_ = (),
       internetGatewayBlockMode = internetGatewayBlockMode}
instance ToResourceProperties VPCBlockPublicAccessOptions where
  toResourceProperties VPCBlockPublicAccessOptions {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCBlockPublicAccessOptions",
         supportsTags = Prelude.False,
         properties = ["InternetGatewayBlockMode"
                         JSON..= internetGatewayBlockMode]}
instance JSON.ToJSON VPCBlockPublicAccessOptions where
  toJSON VPCBlockPublicAccessOptions {..}
    = JSON.object
        ["InternetGatewayBlockMode" JSON..= internetGatewayBlockMode]
instance Property "InternetGatewayBlockMode" VPCBlockPublicAccessOptions where
  type PropertyType "InternetGatewayBlockMode" VPCBlockPublicAccessOptions = Value Prelude.Text
  set newValue VPCBlockPublicAccessOptions {..}
    = VPCBlockPublicAccessOptions
        {internetGatewayBlockMode = newValue, ..}