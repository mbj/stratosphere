module Stratosphere.GroundStation.Config.SpectrumConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SpectrumConfigProperty :: Prelude.Type
instance ToResourceProperties SpectrumConfigProperty
instance JSON.ToJSON SpectrumConfigProperty