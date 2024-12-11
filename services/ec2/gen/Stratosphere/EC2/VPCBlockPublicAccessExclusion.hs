module Stratosphere.EC2.VPCBlockPublicAccessExclusion (
        VPCBlockPublicAccessExclusion(..), mkVPCBlockPublicAccessExclusion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPCBlockPublicAccessExclusion
  = VPCBlockPublicAccessExclusion {internetGatewayExclusionMode :: (Value Prelude.Text),
                                   subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                   tags :: (Prelude.Maybe [Tag]),
                                   vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCBlockPublicAccessExclusion ::
  Value Prelude.Text -> VPCBlockPublicAccessExclusion
mkVPCBlockPublicAccessExclusion internetGatewayExclusionMode
  = VPCBlockPublicAccessExclusion
      {internetGatewayExclusionMode = internetGatewayExclusionMode,
       subnetId = Prelude.Nothing, tags = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties VPCBlockPublicAccessExclusion where
  toResourceProperties VPCBlockPublicAccessExclusion {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCBlockPublicAccessExclusion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InternetGatewayExclusionMode"
                              JSON..= internetGatewayExclusionMode]
                           (Prelude.catMaybes
                              [(JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON VPCBlockPublicAccessExclusion where
  toJSON VPCBlockPublicAccessExclusion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InternetGatewayExclusionMode"
                 JSON..= internetGatewayExclusionMode]
              (Prelude.catMaybes
                 [(JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "InternetGatewayExclusionMode" VPCBlockPublicAccessExclusion where
  type PropertyType "InternetGatewayExclusionMode" VPCBlockPublicAccessExclusion = Value Prelude.Text
  set newValue VPCBlockPublicAccessExclusion {..}
    = VPCBlockPublicAccessExclusion
        {internetGatewayExclusionMode = newValue, ..}
instance Property "SubnetId" VPCBlockPublicAccessExclusion where
  type PropertyType "SubnetId" VPCBlockPublicAccessExclusion = Value Prelude.Text
  set newValue VPCBlockPublicAccessExclusion {..}
    = VPCBlockPublicAccessExclusion
        {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" VPCBlockPublicAccessExclusion where
  type PropertyType "Tags" VPCBlockPublicAccessExclusion = [Tag]
  set newValue VPCBlockPublicAccessExclusion {..}
    = VPCBlockPublicAccessExclusion {tags = Prelude.pure newValue, ..}
instance Property "VpcId" VPCBlockPublicAccessExclusion where
  type PropertyType "VpcId" VPCBlockPublicAccessExclusion = Value Prelude.Text
  set newValue VPCBlockPublicAccessExclusion {..}
    = VPCBlockPublicAccessExclusion {vpcId = Prelude.pure newValue, ..}