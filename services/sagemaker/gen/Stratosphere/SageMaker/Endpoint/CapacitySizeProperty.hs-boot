module Stratosphere.SageMaker.Endpoint.CapacitySizeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CapacitySizeProperty :: Prelude.Type
instance ToResourceProperties CapacitySizeProperty
instance JSON.ToJSON CapacitySizeProperty