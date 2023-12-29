module Stratosphere.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskEntryProperty (
        module Exports, LoRaWANUpdateGatewayTaskEntryProperty(..),
        mkLoRaWANUpdateGatewayTaskEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.TaskDefinition.LoRaWANGatewayVersionProperty as Exports
import Stratosphere.ResourceProperties
data LoRaWANUpdateGatewayTaskEntryProperty
  = LoRaWANUpdateGatewayTaskEntryProperty {currentVersion :: (Prelude.Maybe LoRaWANGatewayVersionProperty),
                                           updateVersion :: (Prelude.Maybe LoRaWANGatewayVersionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANUpdateGatewayTaskEntryProperty ::
  LoRaWANUpdateGatewayTaskEntryProperty
mkLoRaWANUpdateGatewayTaskEntryProperty
  = LoRaWANUpdateGatewayTaskEntryProperty
      {currentVersion = Prelude.Nothing, updateVersion = Prelude.Nothing}
instance ToResourceProperties LoRaWANUpdateGatewayTaskEntryProperty where
  toResourceProperties LoRaWANUpdateGatewayTaskEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::TaskDefinition.LoRaWANUpdateGatewayTaskEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                            (JSON..=) "UpdateVersion" Prelude.<$> updateVersion])}
instance JSON.ToJSON LoRaWANUpdateGatewayTaskEntryProperty where
  toJSON LoRaWANUpdateGatewayTaskEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
               (JSON..=) "UpdateVersion" Prelude.<$> updateVersion]))
instance Property "CurrentVersion" LoRaWANUpdateGatewayTaskEntryProperty where
  type PropertyType "CurrentVersion" LoRaWANUpdateGatewayTaskEntryProperty = LoRaWANGatewayVersionProperty
  set newValue LoRaWANUpdateGatewayTaskEntryProperty {..}
    = LoRaWANUpdateGatewayTaskEntryProperty
        {currentVersion = Prelude.pure newValue, ..}
instance Property "UpdateVersion" LoRaWANUpdateGatewayTaskEntryProperty where
  type PropertyType "UpdateVersion" LoRaWANUpdateGatewayTaskEntryProperty = LoRaWANGatewayVersionProperty
  set newValue LoRaWANUpdateGatewayTaskEntryProperty {..}
    = LoRaWANUpdateGatewayTaskEntryProperty
        {updateVersion = Prelude.pure newValue, ..}