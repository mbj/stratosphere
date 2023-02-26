module Stratosphere.EC2.Instance.ElasticInferenceAcceleratorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ElasticInferenceAcceleratorProperty :: Prelude.Type
instance ToResourceProperties ElasticInferenceAcceleratorProperty
instance JSON.ToJSON ElasticInferenceAcceleratorProperty