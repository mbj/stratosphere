module Stratosphere.MediaConnect.FlowOutput.VpcInterfaceAttachmentProperty (
        VpcInterfaceAttachmentProperty(..),
        mkVpcInterfaceAttachmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcInterfaceAttachmentProperty
  = VpcInterfaceAttachmentProperty {vpcInterfaceName :: (Prelude.Maybe (Value Prelude.Text))}
mkVpcInterfaceAttachmentProperty :: VpcInterfaceAttachmentProperty
mkVpcInterfaceAttachmentProperty
  = VpcInterfaceAttachmentProperty
      {vpcInterfaceName = Prelude.Nothing}
instance ToResourceProperties VpcInterfaceAttachmentProperty where
  toResourceProperties VpcInterfaceAttachmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput.VpcInterfaceAttachment",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VpcInterfaceName" Prelude.<$> vpcInterfaceName])}
instance JSON.ToJSON VpcInterfaceAttachmentProperty where
  toJSON VpcInterfaceAttachmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VpcInterfaceName" Prelude.<$> vpcInterfaceName]))
instance Property "VpcInterfaceName" VpcInterfaceAttachmentProperty where
  type PropertyType "VpcInterfaceName" VpcInterfaceAttachmentProperty = Value Prelude.Text
  set newValue VpcInterfaceAttachmentProperty {}
    = VpcInterfaceAttachmentProperty
        {vpcInterfaceName = Prelude.pure newValue, ..}