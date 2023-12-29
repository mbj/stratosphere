module Stratosphere.NetworkManager.VpcAttachment.VpcOptionsProperty (
        VpcOptionsProperty(..), mkVpcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOptionsProperty
  = VpcOptionsProperty {applianceModeSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                        ipv6Support :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOptionsProperty :: VpcOptionsProperty
mkVpcOptionsProperty
  = VpcOptionsProperty
      {applianceModeSupport = Prelude.Nothing,
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