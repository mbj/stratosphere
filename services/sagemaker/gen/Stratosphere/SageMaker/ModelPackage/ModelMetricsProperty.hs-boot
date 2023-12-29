module Stratosphere.SageMaker.ModelPackage.ModelMetricsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ModelMetricsProperty :: Prelude.Type
instance ToResourceProperties ModelMetricsProperty
instance Prelude.Eq ModelMetricsProperty
instance Prelude.Show ModelMetricsProperty
instance JSON.ToJSON ModelMetricsProperty