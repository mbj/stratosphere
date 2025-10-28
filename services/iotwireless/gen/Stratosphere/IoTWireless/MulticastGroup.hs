module Stratosphere.IoTWireless.MulticastGroup (
        module Exports, MulticastGroup(..), mkMulticastGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.MulticastGroup.LoRaWANProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MulticastGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html>
    MulticastGroup {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html#cfn-iotwireless-multicastgroup-associatewirelessdevice>
                    associateWirelessDevice :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html#cfn-iotwireless-multicastgroup-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html#cfn-iotwireless-multicastgroup-disassociatewirelessdevice>
                    disassociateWirelessDevice :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html#cfn-iotwireless-multicastgroup-lorawan>
                    loRaWAN :: LoRaWANProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html#cfn-iotwireless-multicastgroup-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-multicastgroup.html#cfn-iotwireless-multicastgroup-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastGroup :: LoRaWANProperty -> MulticastGroup
mkMulticastGroup loRaWAN
  = MulticastGroup
      {haddock_workaround_ = (), loRaWAN = loRaWAN,
       associateWirelessDevice = Prelude.Nothing,
       description = Prelude.Nothing,
       disassociateWirelessDevice = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MulticastGroup where
  toResourceProperties MulticastGroup {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::MulticastGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LoRaWAN" JSON..= loRaWAN]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociateWirelessDevice"
                                 Prelude.<$> associateWirelessDevice,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisassociateWirelessDevice"
                                 Prelude.<$> disassociateWirelessDevice,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MulticastGroup where
  toJSON MulticastGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LoRaWAN" JSON..= loRaWAN]
              (Prelude.catMaybes
                 [(JSON..=) "AssociateWirelessDevice"
                    Prelude.<$> associateWirelessDevice,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisassociateWirelessDevice"
                    Prelude.<$> disassociateWirelessDevice,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssociateWirelessDevice" MulticastGroup where
  type PropertyType "AssociateWirelessDevice" MulticastGroup = Value Prelude.Text
  set newValue MulticastGroup {..}
    = MulticastGroup
        {associateWirelessDevice = Prelude.pure newValue, ..}
instance Property "Description" MulticastGroup where
  type PropertyType "Description" MulticastGroup = Value Prelude.Text
  set newValue MulticastGroup {..}
    = MulticastGroup {description = Prelude.pure newValue, ..}
instance Property "DisassociateWirelessDevice" MulticastGroup where
  type PropertyType "DisassociateWirelessDevice" MulticastGroup = Value Prelude.Text
  set newValue MulticastGroup {..}
    = MulticastGroup
        {disassociateWirelessDevice = Prelude.pure newValue, ..}
instance Property "LoRaWAN" MulticastGroup where
  type PropertyType "LoRaWAN" MulticastGroup = LoRaWANProperty
  set newValue MulticastGroup {..}
    = MulticastGroup {loRaWAN = newValue, ..}
instance Property "Name" MulticastGroup where
  type PropertyType "Name" MulticastGroup = Value Prelude.Text
  set newValue MulticastGroup {..}
    = MulticastGroup {name = Prelude.pure newValue, ..}
instance Property "Tags" MulticastGroup where
  type PropertyType "Tags" MulticastGroup = [Tag]
  set newValue MulticastGroup {..}
    = MulticastGroup {tags = Prelude.pure newValue, ..}