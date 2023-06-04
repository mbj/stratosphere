module Stratosphere.IoTWireless.WirelessDeviceImportTask.SidewalkProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SidewalkProperty :: Prelude.Type
instance ToResourceProperties SidewalkProperty
instance JSON.ToJSON SidewalkProperty