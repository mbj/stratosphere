module Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricsSourceProperty :: Prelude.Type
instance ToResourceProperties MetricsSourceProperty
instance JSON.ToJSON MetricsSourceProperty