module Stratosphere.IoTWireless.WirelessDevice.OtaaV11Property where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OtaaV11Property :: Prelude.Type
instance ToResourceProperties OtaaV11Property
instance JSON.ToJSON OtaaV11Property