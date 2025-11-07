module Stratosphere.SageMaker.Cluster.CapacitySizeConfigProperty (
        CapacitySizeConfigProperty(..), mkCapacitySizeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacitySizeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-capacitysizeconfig.html>
    CapacitySizeConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-capacitysizeconfig.html#cfn-sagemaker-cluster-capacitysizeconfig-type>
                                type' :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-capacitysizeconfig.html#cfn-sagemaker-cluster-capacitysizeconfig-value>
                                value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacitySizeConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> CapacitySizeConfigProperty
mkCapacitySizeConfigProperty type' value
  = CapacitySizeConfigProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties CapacitySizeConfigProperty where
  toResourceProperties CapacitySizeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.CapacitySizeConfig",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON CapacitySizeConfigProperty where
  toJSON CapacitySizeConfigProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" CapacitySizeConfigProperty where
  type PropertyType "Type" CapacitySizeConfigProperty = Value Prelude.Text
  set newValue CapacitySizeConfigProperty {..}
    = CapacitySizeConfigProperty {type' = newValue, ..}
instance Property "Value" CapacitySizeConfigProperty where
  type PropertyType "Value" CapacitySizeConfigProperty = Value Prelude.Integer
  set newValue CapacitySizeConfigProperty {..}
    = CapacitySizeConfigProperty {value = newValue, ..}