module Stratosphere.SageMaker.ModelPackage.DriftCheckBiasProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DriftCheckBiasProperty :: Prelude.Type
instance ToResourceProperties DriftCheckBiasProperty
instance JSON.ToJSON DriftCheckBiasProperty