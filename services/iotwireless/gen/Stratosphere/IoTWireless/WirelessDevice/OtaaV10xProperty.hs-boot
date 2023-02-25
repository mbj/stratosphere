module Stratosphere.IoTWireless.WirelessDevice.OtaaV10xProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OtaaV10xProperty :: Prelude.Type
instance ToResourceProperties OtaaV10xProperty
instance JSON.ToJSON OtaaV10xProperty