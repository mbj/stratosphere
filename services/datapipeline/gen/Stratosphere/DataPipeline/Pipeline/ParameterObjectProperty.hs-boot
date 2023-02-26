module Stratosphere.DataPipeline.Pipeline.ParameterObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParameterObjectProperty :: Prelude.Type
instance ToResourceProperties ParameterObjectProperty
instance JSON.ToJSON ParameterObjectProperty