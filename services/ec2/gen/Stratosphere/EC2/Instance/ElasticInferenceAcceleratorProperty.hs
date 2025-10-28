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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html>
    ElasticInferenceAcceleratorProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-count>
                                         count :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-type>
                                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticInferenceAcceleratorProperty ::
  Value Prelude.Text -> ElasticInferenceAcceleratorProperty
mkElasticInferenceAcceleratorProperty type'
  = ElasticInferenceAcceleratorProperty
      {haddock_workaround_ = (), type' = type', count = Prelude.Nothing}
instance ToResourceProperties ElasticInferenceAcceleratorProperty where
  toResourceProperties ElasticInferenceAcceleratorProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.ElasticInferenceAccelerator",
         supportsTags = Prelude.False,
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