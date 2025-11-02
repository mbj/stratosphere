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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html>
    ElasticGpuSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html#cfn-ec2-instance-elasticgpuspecification-type>
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticGpuSpecificationProperty ::
  Value Prelude.Text -> ElasticGpuSpecificationProperty
mkElasticGpuSpecificationProperty type'
  = ElasticGpuSpecificationProperty
      {haddock_workaround_ = (), type' = type'}
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
  set newValue ElasticGpuSpecificationProperty {..}
    = ElasticGpuSpecificationProperty {type' = newValue, ..}