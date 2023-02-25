module Stratosphere.EC2.Instance.ElasticInferenceAcceleratorProperty (
        ElasticInferenceAcceleratorProperty(..),
        mkElasticInferenceAcceleratorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticInferenceAcceleratorProperty
  = ElasticInferenceAcceleratorProperty {count :: (Prelude.Maybe (Value Prelude.Integer)),
                                         type' :: (Value Prelude.Text)}
mkElasticInferenceAcceleratorProperty ::
  Value Prelude.Text -> ElasticInferenceAcceleratorProperty
mkElasticInferenceAcceleratorProperty type'
  = ElasticInferenceAcceleratorProperty
      {type' = type', count = Prelude.Nothing}
instance ToResourceProperties ElasticInferenceAcceleratorProperty where
  toResourceProperties ElasticInferenceAcceleratorProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.ElasticInferenceAccelerator",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count]))}
instance JSON.ToJSON ElasticInferenceAcceleratorProperty where
  toJSON ElasticInferenceAcceleratorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count])))
instance Property "Count" ElasticInferenceAcceleratorProperty where
  type PropertyType "Count" ElasticInferenceAcceleratorProperty = Value Prelude.Integer
  set newValue ElasticInferenceAcceleratorProperty {..}
    = ElasticInferenceAcceleratorProperty
        {count = Prelude.pure newValue, ..}
instance Property "Type" ElasticInferenceAcceleratorProperty where
  type PropertyType "Type" ElasticInferenceAcceleratorProperty = Value Prelude.Text
  set newValue ElasticInferenceAcceleratorProperty {..}
    = ElasticInferenceAcceleratorProperty {type' = newValue, ..}