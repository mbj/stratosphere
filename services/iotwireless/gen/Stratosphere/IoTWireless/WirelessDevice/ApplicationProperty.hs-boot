module Stratosphere.IoTWireless.WirelessDevice.ApplicationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApplicationProperty :: Prelude.Type
instance ToResourceProperties ApplicationProperty
instance Prelude.Eq ApplicationProperty
instance Prelude.Show ApplicationProperty
instance JSON.ToJSON ApplicationProperty