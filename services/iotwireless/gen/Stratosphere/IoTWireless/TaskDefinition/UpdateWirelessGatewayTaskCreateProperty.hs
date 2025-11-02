module Stratosphere.IoTWireless.TaskDefinition.UpdateWirelessGatewayTaskCreateProperty (
        module Exports, UpdateWirelessGatewayTaskCreateProperty(..),
        mkUpdateWirelessGatewayTaskCreateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskCreateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateWirelessGatewayTaskCreateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate.html>
    UpdateWirelessGatewayTaskCreateProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate.html#cfn-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate-lorawan>
                                             loRaWAN :: (Prelude.Maybe LoRaWANUpdateGatewayTaskCreateProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate.html#cfn-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate-updatedatarole>
                                             updateDataRole :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate.html#cfn-iotwireless-taskdefinition-updatewirelessgatewaytaskcreate-updatedatasource>
                                             updateDataSource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateWirelessGatewayTaskCreateProperty ::
  UpdateWirelessGatewayTaskCreateProperty
mkUpdateWirelessGatewayTaskCreateProperty
  = UpdateWirelessGatewayTaskCreateProperty
      {haddock_workaround_ = (), loRaWAN = Prelude.Nothing,
       updateDataRole = Prelude.Nothing,
       updateDataSource = Prelude.Nothing}
instance ToResourceProperties UpdateWirelessGatewayTaskCreateProperty where
  toResourceProperties UpdateWirelessGatewayTaskCreateProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::TaskDefinition.UpdateWirelessGatewayTaskCreate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
                            (JSON..=) "UpdateDataRole" Prelude.<$> updateDataRole,
                            (JSON..=) "UpdateDataSource" Prelude.<$> updateDataSource])}
instance JSON.ToJSON UpdateWirelessGatewayTaskCreateProperty where
  toJSON UpdateWirelessGatewayTaskCreateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
               (JSON..=) "UpdateDataRole" Prelude.<$> updateDataRole,
               (JSON..=) "UpdateDataSource" Prelude.<$> updateDataSource]))
instance Property "LoRaWAN" UpdateWirelessGatewayTaskCreateProperty where
  type PropertyType "LoRaWAN" UpdateWirelessGatewayTaskCreateProperty = LoRaWANUpdateGatewayTaskCreateProperty
  set newValue UpdateWirelessGatewayTaskCreateProperty {..}
    = UpdateWirelessGatewayTaskCreateProperty
        {loRaWAN = Prelude.pure newValue, ..}
instance Property "UpdateDataRole" UpdateWirelessGatewayTaskCreateProperty where
  type PropertyType "UpdateDataRole" UpdateWirelessGatewayTaskCreateProperty = Value Prelude.Text
  set newValue UpdateWirelessGatewayTaskCreateProperty {..}
    = UpdateWirelessGatewayTaskCreateProperty
        {updateDataRole = Prelude.pure newValue, ..}
instance Property "UpdateDataSource" UpdateWirelessGatewayTaskCreateProperty where
  type PropertyType "UpdateDataSource" UpdateWirelessGatewayTaskCreateProperty = Value Prelude.Text
  set newValue UpdateWirelessGatewayTaskCreateProperty {..}
    = UpdateWirelessGatewayTaskCreateProperty
        {updateDataSource = Prelude.pure newValue, ..}