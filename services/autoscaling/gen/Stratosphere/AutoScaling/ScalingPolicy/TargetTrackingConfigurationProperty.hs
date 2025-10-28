module Stratosphere.AutoScaling.ScalingPolicy.TargetTrackingConfigurationProperty (
        module Exports, TargetTrackingConfigurationProperty(..),
        mkTargetTrackingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.CustomizedMetricSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredefinedMetricSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html>
    TargetTrackingConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-customizedmetricspecification>
                                         customizedMetricSpecification :: (Prelude.Maybe CustomizedMetricSpecificationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-disablescalein>
                                         disableScaleIn :: (Prelude.Maybe (Value Prelude.Bool)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-predefinedmetricspecification>
                                         predefinedMetricSpecification :: (Prelude.Maybe PredefinedMetricSpecificationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-targetvalue>
                                         targetValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingConfigurationProperty ::
  Value Prelude.Double -> TargetTrackingConfigurationProperty
mkTargetTrackingConfigurationProperty targetValue
  = TargetTrackingConfigurationProperty
      {haddock_workaround_ = (), targetValue = targetValue,
       customizedMetricSpecification = Prelude.Nothing,
       disableScaleIn = Prelude.Nothing,
       predefinedMetricSpecification = Prelude.Nothing}
instance ToResourceProperties TargetTrackingConfigurationProperty where
  toResourceProperties TargetTrackingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.TargetTrackingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetValue" JSON..= targetValue]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomizedMetricSpecification"
                                 Prelude.<$> customizedMetricSpecification,
                               (JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                               (JSON..=) "PredefinedMetricSpecification"
                                 Prelude.<$> predefinedMetricSpecification]))}
instance JSON.ToJSON TargetTrackingConfigurationProperty where
  toJSON TargetTrackingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetValue" JSON..= targetValue]
              (Prelude.catMaybes
                 [(JSON..=) "CustomizedMetricSpecification"
                    Prelude.<$> customizedMetricSpecification,
                  (JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                  (JSON..=) "PredefinedMetricSpecification"
                    Prelude.<$> predefinedMetricSpecification])))
instance Property "CustomizedMetricSpecification" TargetTrackingConfigurationProperty where
  type PropertyType "CustomizedMetricSpecification" TargetTrackingConfigurationProperty = CustomizedMetricSpecificationProperty
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {customizedMetricSpecification = Prelude.pure newValue, ..}
instance Property "DisableScaleIn" TargetTrackingConfigurationProperty where
  type PropertyType "DisableScaleIn" TargetTrackingConfigurationProperty = Value Prelude.Bool
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {disableScaleIn = Prelude.pure newValue, ..}
instance Property "PredefinedMetricSpecification" TargetTrackingConfigurationProperty where
  type PropertyType "PredefinedMetricSpecification" TargetTrackingConfigurationProperty = PredefinedMetricSpecificationProperty
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty
        {predefinedMetricSpecification = Prelude.pure newValue, ..}
instance Property "TargetValue" TargetTrackingConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingConfigurationProperty {..}
    = TargetTrackingConfigurationProperty {targetValue = newValue, ..}