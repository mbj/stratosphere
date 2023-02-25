module Stratosphere.DataPipeline.Pipeline.ParameterValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParameterValueProperty :: Prelude.Type
instance ToResourceProperties ParameterValueProperty
instance JSON.ToJSON ParameterValueProperty