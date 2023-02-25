module Stratosphere.Greengrass.DeviceDefinition (
        module Exports, DeviceDefinition(..), mkDeviceDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.DeviceDefinition.DeviceDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceDefinition
  = DeviceDefinition {initialVersion :: (Prelude.Maybe DeviceDefinitionVersionProperty),
                      name :: (Value Prelude.Text),
                      tags :: (Prelude.Maybe JSON.Object)}
mkDeviceDefinition :: Value Prelude.Text -> DeviceDefinition
mkDeviceDefinition name
  = DeviceDefinition
      {name = name, initialVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DeviceDefinition where
  toResourceProperties DeviceDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::DeviceDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DeviceDefinition where
  toJSON DeviceDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" DeviceDefinition where
  type PropertyType "InitialVersion" DeviceDefinition = DeviceDefinitionVersionProperty
  set newValue DeviceDefinition {..}
    = DeviceDefinition {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" DeviceDefinition where
  type PropertyType "Name" DeviceDefinition = Value Prelude.Text
  set newValue DeviceDefinition {..}
    = DeviceDefinition {name = newValue, ..}
instance Property "Tags" DeviceDefinition where
  type PropertyType "Tags" DeviceDefinition = JSON.Object
  set newValue DeviceDefinition {..}
    = DeviceDefinition {tags = Prelude.pure newValue, ..}