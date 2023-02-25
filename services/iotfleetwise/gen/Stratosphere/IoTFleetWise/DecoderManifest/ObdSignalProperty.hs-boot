module Stratosphere.IoTFleetWise.DecoderManifest.ObdSignalProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ObdSignalProperty :: Prelude.Type
instance ToResourceProperties ObdSignalProperty
instance JSON.ToJSON ObdSignalProperty