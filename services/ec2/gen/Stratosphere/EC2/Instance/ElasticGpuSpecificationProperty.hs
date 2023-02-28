module Stratosphere.EC2.Instance.ElasticGpuSpecificationProperty (
        ElasticGpuSpecificationProperty(..),
        mkElasticGpuSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticGpuSpecificationProperty
  = ElasticGpuSpecificationProperty {type' :: (Value Prelude.Text)}
mkElasticGpuSpecificationProperty ::
  Value Prelude.Text -> ElasticGpuSpecificationProperty
mkElasticGpuSpecificationProperty type'
  = ElasticGpuSpecificationProperty {type' = type'}
instance ToResourceProperties ElasticGpuSpecificationProperty where
  toResourceProperties ElasticGpuSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.ElasticGpuSpecification",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON ElasticGpuSpecificationProperty where
  toJSON ElasticGpuSpecificationProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" ElasticGpuSpecificationProperty where
  type PropertyType "Type" ElasticGpuSpecificationProperty = Value Prelude.Text
  set newValue ElasticGpuSpecificationProperty {}
    = ElasticGpuSpecificationProperty {type' = newValue, ..}