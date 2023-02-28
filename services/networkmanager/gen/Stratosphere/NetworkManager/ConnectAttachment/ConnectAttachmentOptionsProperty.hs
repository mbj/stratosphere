module Stratosphere.NetworkManager.ConnectAttachment.ConnectAttachmentOptionsProperty (
        ConnectAttachmentOptionsProperty(..),
        mkConnectAttachmentOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectAttachmentOptionsProperty
  = ConnectAttachmentOptionsProperty {protocol :: (Prelude.Maybe (Value Prelude.Text))}
mkConnectAttachmentOptionsProperty ::
  ConnectAttachmentOptionsProperty
mkConnectAttachmentOptionsProperty
  = ConnectAttachmentOptionsProperty {protocol = Prelude.Nothing}
instance ToResourceProperties ConnectAttachmentOptionsProperty where
  toResourceProperties ConnectAttachmentOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::ConnectAttachment.ConnectAttachmentOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON ConnectAttachmentOptionsProperty where
  toJSON ConnectAttachmentOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "Protocol" ConnectAttachmentOptionsProperty where
  type PropertyType "Protocol" ConnectAttachmentOptionsProperty = Value Prelude.Text
  set newValue ConnectAttachmentOptionsProperty {}
    = ConnectAttachmentOptionsProperty
        {protocol = Prelude.pure newValue, ..}