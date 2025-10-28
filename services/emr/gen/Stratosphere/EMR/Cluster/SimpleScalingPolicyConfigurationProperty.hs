module Stratosphere.EMR.Cluster.SimpleScalingPolicyConfigurationProperty (
        SimpleScalingPolicyConfigurationProperty(..),
        mkSimpleScalingPolicyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimpleScalingPolicyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html>
    SimpleScalingPolicyConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-adjustmenttype>
                                              adjustmentType :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-cooldown>
                                              coolDown :: (Prelude.Maybe (Value Prelude.Integer)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-cluster-simplescalingpolicyconfiguration-scalingadjustment>
                                              scalingAdjustment :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimpleScalingPolicyConfigurationProperty ::
  Value Prelude.Integer -> SimpleScalingPolicyConfigurationProperty
mkSimpleScalingPolicyConfigurationProperty scalingAdjustment
  = SimpleScalingPolicyConfigurationProperty
      {haddock_workaround_ = (), scalingAdjustment = scalingAdjustment,
       adjustmentType = Prelude.Nothing, coolDown = Prelude.Nothing}
instance ToResourceProperties SimpleScalingPolicyConfigurationProperty where
  toResourceProperties SimpleScalingPolicyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.SimpleScalingPolicyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScalingAdjustment" JSON..= scalingAdjustment]
                           (Prelude.catMaybes
                              [(JSON..=) "AdjustmentType" Prelude.<$> adjustmentType,
                               (JSON..=) "CoolDown" Prelude.<$> coolDown]))}
instance JSON.ToJSON SimpleScalingPolicyConfigurationProperty where
  toJSON SimpleScalingPolicyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScalingAdjustment" JSON..= scalingAdjustment]
              (Prelude.catMaybes
                 [(JSON..=) "AdjustmentType" Prelude.<$> adjustmentType,
                  (JSON..=) "CoolDown" Prelude.<$> coolDown])))
instance Property "AdjustmentType" SimpleScalingPolicyConfigurationProperty where
  type PropertyType "AdjustmentType" SimpleScalingPolicyConfigurationProperty = Value Prelude.Text
  set newValue SimpleScalingPolicyConfigurationProperty {..}
    = SimpleScalingPolicyConfigurationProperty
        {adjustmentType = Prelude.pure newValue, ..}
instance Property "CoolDown" SimpleScalingPolicyConfigurationProperty where
  type PropertyType "CoolDown" SimpleScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue SimpleScalingPolicyConfigurationProperty {..}
    = SimpleScalingPolicyConfigurationProperty
        {coolDown = Prelude.pure newValue, ..}
instance Property "ScalingAdjustment" SimpleScalingPolicyConfigurationProperty where
  type PropertyType "ScalingAdjustment" SimpleScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue SimpleScalingPolicyConfigurationProperty {..}
    = SimpleScalingPolicyConfigurationProperty
        {scalingAdjustment = newValue, ..}