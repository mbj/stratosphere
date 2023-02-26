module Stratosphere.GroundStation.Config.UplinkSpectrumConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UplinkSpectrumConfigProperty :: Prelude.Type
instance ToResourceProperties UplinkSpectrumConfigProperty
instance JSON.ToJSON UplinkSpectrumConfigProperty