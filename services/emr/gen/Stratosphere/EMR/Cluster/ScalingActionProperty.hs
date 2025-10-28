module Stratosphere.EMR.Cluster.ScalingActionProperty (
        module Exports, ScalingActionProperty(..), mkScalingActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.SimpleScalingPolicyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html>
    ScalingActionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html#cfn-elasticmapreduce-cluster-scalingaction-market>
                           market :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html#cfn-elasticmapreduce-cluster-scalingaction-simplescalingpolicyconfiguration>
                           simpleScalingPolicyConfiguration :: SimpleScalingPolicyConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingActionProperty ::
  SimpleScalingPolicyConfigurationProperty -> ScalingActionProperty
mkScalingActionProperty simpleScalingPolicyConfiguration
  = ScalingActionProperty
      {haddock_workaround_ = (),
       simpleScalingPolicyConfiguration = simpleScalingPolicyConfiguration,
       market = Prelude.Nothing}
instance ToResourceProperties ScalingActionProperty where
  toResourceProperties ScalingActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ScalingAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SimpleScalingPolicyConfiguration"
                              JSON..= simpleScalingPolicyConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Market" Prelude.<$> market]))}
instance JSON.ToJSON ScalingActionProperty where
  toJSON ScalingActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SimpleScalingPolicyConfiguration"
                 JSON..= simpleScalingPolicyConfiguration]
              (Prelude.catMaybes [(JSON..=) "Market" Prelude.<$> market])))
instance Property "Market" ScalingActionProperty where
  type PropertyType "Market" ScalingActionProperty = Value Prelude.Text
  set newValue ScalingActionProperty {..}
    = ScalingActionProperty {market = Prelude.pure newValue, ..}
instance Property "SimpleScalingPolicyConfiguration" ScalingActionProperty where
  type PropertyType "SimpleScalingPolicyConfiguration" ScalingActionProperty = SimpleScalingPolicyConfigurationProperty
  set newValue ScalingActionProperty {..}
    = ScalingActionProperty
        {simpleScalingPolicyConfiguration = newValue, ..}