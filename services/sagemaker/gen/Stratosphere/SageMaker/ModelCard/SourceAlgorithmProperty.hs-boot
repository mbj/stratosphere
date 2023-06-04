module Stratosphere.SageMaker.ModelCard.SourceAlgorithmProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceAlgorithmProperty :: Prelude.Type
instance ToResourceProperties SourceAlgorithmProperty
instance JSON.ToJSON SourceAlgorithmProperty