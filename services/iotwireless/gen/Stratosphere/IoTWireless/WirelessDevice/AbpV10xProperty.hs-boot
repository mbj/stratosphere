module Stratosphere.IoTWireless.WirelessDevice.AbpV10xProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AbpV10xProperty :: Prelude.Type
instance ToResourceProperties AbpV10xProperty
instance JSON.ToJSON AbpV10xProperty