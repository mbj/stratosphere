module Stratosphere.IoTFleetWise.DecoderManifest.ObdInterfaceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ObdInterfaceProperty :: Prelude.Type
instance ToResourceProperties ObdInterfaceProperty
instance JSON.ToJSON ObdInterfaceProperty