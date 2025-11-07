module Stratosphere.PCS.ComputeNodeGroup.ScalingConfigurationProperty (
        ScalingConfigurationProperty(..), mkScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-scalingconfiguration.html>
    ScalingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-scalingconfiguration.html#cfn-pcs-computenodegroup-scalingconfiguration-maxinstancecount>
                                  maxInstanceCount :: (Value Prelude.Integer),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-scalingconfiguration.html#cfn-pcs-computenodegroup-scalingconfiguration-mininstancecount>
                                  minInstanceCount :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingConfigurationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ScalingConfigurationProperty
mkScalingConfigurationProperty maxInstanceCount minInstanceCount
  = ScalingConfigurationProperty
      {haddock_workaround_ = (), maxInstanceCount = maxInstanceCount,
       minInstanceCount = minInstanceCount}
instance ToResourceProperties ScalingConfigurationProperty where
  toResourceProperties ScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::ComputeNodeGroup.ScalingConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxInstanceCount" JSON..= maxInstanceCount,
                       "MinInstanceCount" JSON..= minInstanceCount]}
instance JSON.ToJSON ScalingConfigurationProperty where
  toJSON ScalingConfigurationProperty {..}
    = JSON.object
        ["MaxInstanceCount" JSON..= maxInstanceCount,
         "MinInstanceCount" JSON..= minInstanceCount]
instance Property "MaxInstanceCount" ScalingConfigurationProperty where
  type PropertyType "MaxInstanceCount" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty {maxInstanceCount = newValue, ..}
instance Property "MinInstanceCount" ScalingConfigurationProperty where
  type PropertyType "MinInstanceCount" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty {minInstanceCount = newValue, ..}