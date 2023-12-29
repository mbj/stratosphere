module Stratosphere.IoTWireless.MulticastGroup.LoRaWANProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoRaWANProperty :: Prelude.Type
instance ToResourceProperties LoRaWANProperty
instance Prelude.Eq LoRaWANProperty
instance Prelude.Show LoRaWANProperty
instance JSON.ToJSON LoRaWANProperty