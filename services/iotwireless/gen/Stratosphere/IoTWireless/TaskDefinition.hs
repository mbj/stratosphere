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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html>
    TaskDefinition {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html#cfn-iotwireless-taskdefinition-autocreatetasks>
                    autoCreateTasks :: (Value Prelude.Bool),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html#cfn-iotwireless-taskdefinition-lorawanupdategatewaytaskentry>
                    loRaWANUpdateGatewayTaskEntry :: (Prelude.Maybe LoRaWANUpdateGatewayTaskEntryProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html#cfn-iotwireless-taskdefinition-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html#cfn-iotwireless-taskdefinition-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html#cfn-iotwireless-taskdefinition-taskdefinitiontype>
                    taskDefinitionType :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-taskdefinition.html#cfn-iotwireless-taskdefinition-update>
                    update :: (Prelude.Maybe UpdateWirelessGatewayTaskCreateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.True,
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