module Stratosphere.IoTWireless.TaskDefinition.LoRaWANUpdateGatewayTaskCreateProperty (
        module Exports, LoRaWANUpdateGatewayTaskCreateProperty(..),
        mkLoRaWANUpdateGatewayTaskCreateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.TaskDefinition.LoRaWANGatewayVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANUpdateGatewayTaskCreateProperty
  = LoRaWANUpdateGatewayTaskCreateProperty {currentVersion :: (Prelude.Maybe LoRaWANGatewayVersionProperty),
                                            sigKeyCrc :: (Prelude.Maybe (Value Prelude.Integer)),
                                            updateSignature :: (Prelude.Maybe (Value Prelude.Text)),
                                            updateVersion :: (Prelude.Maybe LoRaWANGatewayVersionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANUpdateGatewayTaskCreateProperty ::
  LoRaWANUpdateGatewayTaskCreateProperty
mkLoRaWANUpdateGatewayTaskCreateProperty
  = LoRaWANUpdateGatewayTaskCreateProperty
      {currentVersion = Prelude.Nothing, sigKeyCrc = Prelude.Nothing,
       updateSignature = Prelude.Nothing, updateVersion = Prelude.Nothing}
instance ToResourceProperties LoRaWANUpdateGatewayTaskCreateProperty where
  toResourceProperties LoRaWANUpdateGatewayTaskCreateProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::TaskDefinition.LoRaWANUpdateGatewayTaskCreate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                            (JSON..=) "SigKeyCrc" Prelude.<$> sigKeyCrc,
                            (JSON..=) "UpdateSignature" Prelude.<$> updateSignature,
                            (JSON..=) "UpdateVersion" Prelude.<$> updateVersion])}
instance JSON.ToJSON LoRaWANUpdateGatewayTaskCreateProperty where
  toJSON LoRaWANUpdateGatewayTaskCreateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
               (JSON..=) "SigKeyCrc" Prelude.<$> sigKeyCrc,
               (JSON..=) "UpdateSignature" Prelude.<$> updateSignature,
               (JSON..=) "UpdateVersion" Prelude.<$> updateVersion]))
instance Property "CurrentVersion" LoRaWANUpdateGatewayTaskCreateProperty where
  type PropertyType "CurrentVersion" LoRaWANUpdateGatewayTaskCreateProperty = LoRaWANGatewayVersionProperty
  set newValue LoRaWANUpdateGatewayTaskCreateProperty {..}
    = LoRaWANUpdateGatewayTaskCreateProperty
        {currentVersion = Prelude.pure newValue, ..}
instance Property "SigKeyCrc" LoRaWANUpdateGatewayTaskCreateProperty where
  type PropertyType "SigKeyCrc" LoRaWANUpdateGatewayTaskCreateProperty = Value Prelude.Integer
  set newValue LoRaWANUpdateGatewayTaskCreateProperty {..}
    = LoRaWANUpdateGatewayTaskCreateProperty
        {sigKeyCrc = Prelude.pure newValue, ..}
instance Property "UpdateSignature" LoRaWANUpdateGatewayTaskCreateProperty where
  type PropertyType "UpdateSignature" LoRaWANUpdateGatewayTaskCreateProperty = Value Prelude.Text
  set newValue LoRaWANUpdateGatewayTaskCreateProperty {..}
    = LoRaWANUpdateGatewayTaskCreateProperty
        {updateSignature = Prelude.pure newValue, ..}
instance Property "UpdateVersion" LoRaWANUpdateGatewayTaskCreateProperty where
  type PropertyType "UpdateVersion" LoRaWANUpdateGatewayTaskCreateProperty = LoRaWANGatewayVersionProperty
  set newValue LoRaWANUpdateGatewayTaskCreateProperty {..}
    = LoRaWANUpdateGatewayTaskCreateProperty
        {updateVersion = Prelude.pure newValue, ..}