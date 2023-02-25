module Stratosphere.IoTWireless.TaskDefinition (
        module Exports, TaskDefinition(..), mkTaskDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskEntryProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.TaskDefinition.UpdateWirelessGatewayTaskCreateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TaskDefinition
  = TaskDefinition {autoCreateTasks :: (Value Prelude.Bool),
                    loRaWANUpdateGatewayTaskEntry :: (Prelude.Maybe LoRaWANUpdateGatewayTaskEntryProperty),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag]),
                    taskDefinitionType :: (Prelude.Maybe (Value Prelude.Text)),
                    update :: (Prelude.Maybe UpdateWirelessGatewayTaskCreateProperty)}
mkTaskDefinition :: Value Prelude.Bool -> TaskDefinition
mkTaskDefinition autoCreateTasks
  = TaskDefinition
      {autoCreateTasks = autoCreateTasks,
       loRaWANUpdateGatewayTaskEntry = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing,
       taskDefinitionType = Prelude.Nothing, update = Prelude.Nothing}
instance ToResourceProperties TaskDefinition where
  toResourceProperties TaskDefinition {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::TaskDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoCreateTasks" JSON..= autoCreateTasks]
                           (Prelude.catMaybes
                              [(JSON..=) "LoRaWANUpdateGatewayTaskEntry"
                                 Prelude.<$> loRaWANUpdateGatewayTaskEntry,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TaskDefinitionType" Prelude.<$> taskDefinitionType,
                               (JSON..=) "Update" Prelude.<$> update]))}
instance JSON.ToJSON TaskDefinition where
  toJSON TaskDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoCreateTasks" JSON..= autoCreateTasks]
              (Prelude.catMaybes
                 [(JSON..=) "LoRaWANUpdateGatewayTaskEntry"
                    Prelude.<$> loRaWANUpdateGatewayTaskEntry,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TaskDefinitionType" Prelude.<$> taskDefinitionType,
                  (JSON..=) "Update" Prelude.<$> update])))
instance Property "AutoCreateTasks" TaskDefinition where
  type PropertyType "AutoCreateTasks" TaskDefinition = Value Prelude.Bool
  set newValue TaskDefinition {..}
    = TaskDefinition {autoCreateTasks = newValue, ..}
instance Property "LoRaWANUpdateGatewayTaskEntry" TaskDefinition where
  type PropertyType "LoRaWANUpdateGatewayTaskEntry" TaskDefinition = LoRaWANUpdateGatewayTaskEntryProperty
  set newValue TaskDefinition {..}
    = TaskDefinition
        {loRaWANUpdateGatewayTaskEntry = Prelude.pure newValue, ..}
instance Property "Name" TaskDefinition where
  type PropertyType "Name" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {name = Prelude.pure newValue, ..}
instance Property "Tags" TaskDefinition where
  type PropertyType "Tags" TaskDefinition = [Tag]
  set newValue TaskDefinition {..}
    = TaskDefinition {tags = Prelude.pure newValue, ..}
instance Property "TaskDefinitionType" TaskDefinition where
  type PropertyType "TaskDefinitionType" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {taskDefinitionType = Prelude.pure newValue, ..}
instance Property "Update" TaskDefinition where
  type PropertyType "Update" TaskDefinition = UpdateWirelessGatewayTaskCreateProperty
  set newValue TaskDefinition {..}
    = TaskDefinition {update = Prelude.pure newValue, ..}