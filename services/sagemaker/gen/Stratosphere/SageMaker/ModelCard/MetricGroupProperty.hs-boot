module Stratosphere.SageMaker.ModelCard.MetricGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricGroupProperty :: Prelude.Type
instance ToResourceProperties MetricGroupProperty
instance JSON.ToJSON MetricGroupProperty