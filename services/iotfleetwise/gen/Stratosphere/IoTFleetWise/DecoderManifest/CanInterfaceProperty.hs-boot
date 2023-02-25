module Stratosphere.IoTFleetWise.DecoderManifest.CanInterfaceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CanInterfaceProperty :: Prelude.Type
instance ToResourceProperties CanInterfaceProperty
instance JSON.ToJSON CanInterfaceProperty