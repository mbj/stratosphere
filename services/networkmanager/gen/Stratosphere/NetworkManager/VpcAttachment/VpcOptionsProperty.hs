module Stratosphere.NetworkManager.VpcAttachment.VpcOptionsProperty (
        VpcOptionsProperty(..), mkVpcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html>
    VpcOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html#cfn-networkmanager-vpcattachment-vpcoptions-appliancemodesupport>
                        applianceModeSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-vpcattachment-vpcoptions.html#cfn-networkmanager-vpcattachment-vpcoptions-ipv6support>
                        ipv6Support :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOptionsProperty :: VpcOptionsProperty
mkVpcOptionsProperty
  = VpcOptionsProperty
      {haddock_workaround_ = (), applianceModeSupport = Prelude.Nothing,
       ipv6Support = Prelude.Nothing}
instance ToResourceProperties VpcOptionsProperty where
  toResourceProperties VpcOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::VpcAttachment.VpcOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
                            (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support])}
instance JSON.ToJSON VpcOptionsProperty where
  toJSON VpcOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplianceModeSupport" Prelude.<$> applianceModeSupport,
               (JSON..=) "Ipv6Support" Prelude.<$> ipv6Support]))
instance Property "ApplianceModeSupport" VpcOptionsProperty where
  type PropertyType "ApplianceModeSupport" VpcOptionsProperty = Value Prelude.Bool
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty
        {applianceModeSupport = Prelude.pure newValue, ..}
instance Property "Ipv6Support" VpcOptionsProperty where
  type PropertyType "Ipv6Support" VpcOptionsProperty = Value Prelude.Bool
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty {ipv6Support = Prelude.pure newValue, ..}