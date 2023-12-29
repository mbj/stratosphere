module Stratosphere.EC2.LaunchTemplate.ElasticGpuSpecificationProperty (
        ElasticGpuSpecificationProperty(..),
        mkElasticGpuSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticGpuSpecificationProperty
  = ElasticGpuSpecificationProperty {type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticGpuSpecificationProperty ::
  ElasticGpuSpecificationProperty
mkElasticGpuSpecificationProperty
  = ElasticGpuSpecificationProperty {type' = Prelude.Nothing}
instance ToResourceProperties ElasticGpuSpecificationProperty where
  toResourceProperties ElasticGpuSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.ElasticGpuSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ElasticGpuSpecificationProperty where
  toJSON ElasticGpuSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" ElasticGpuSpecificationProperty where
  type PropertyType "Type" ElasticGpuSpecificationProperty = Value Prelude.Text
  set newValue ElasticGpuSpecificationProperty {}
    = ElasticGpuSpecificationProperty
        {type' = Prelude.pure newValue, ..}