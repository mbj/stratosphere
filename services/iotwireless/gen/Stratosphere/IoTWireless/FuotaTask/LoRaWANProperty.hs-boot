module Stratosphere.IoTWireless.FuotaTask.LoRaWANProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoRaWANProperty :: Prelude.Type
instance ToResourceProperties LoRaWANProperty
instance JSON.ToJSON LoRaWANProperty