module Stratosphere.CodeBuild.Fleet.TargetTrackingScalingConfigurationProperty (
        TargetTrackingScalingConfigurationProperty(..),
        mkTargetTrackingScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-targettrackingscalingconfiguration.html>
    TargetTrackingScalingConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-targettrackingscalingconfiguration.html#cfn-codebuild-fleet-targettrackingscalingconfiguration-metrictype>
                                                metricType :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-targettrackingscalingconfiguration.html#cfn-codebuild-fleet-targettrackingscalingconfiguration-targetvalue>
                                                targetValue :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingScalingConfigurationProperty ::
  TargetTrackingScalingConfigurationProperty
mkTargetTrackingScalingConfigurationProperty
  = TargetTrackingScalingConfigurationProperty
      {haddock_workaround_ = (), metricType = Prelude.Nothing,
       targetValue = Prelude.Nothing}
instance ToResourceProperties TargetTrackingScalingConfigurationProperty where
  toResourceProperties
    TargetTrackingScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.TargetTrackingScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MetricType" Prelude.<$> metricType,
                            (JSON..=) "TargetValue" Prelude.<$> targetValue])}
instance JSON.ToJSON TargetTrackingScalingConfigurationProperty where
  toJSON TargetTrackingScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MetricType" Prelude.<$> metricType,
               (JSON..=) "TargetValue" Prelude.<$> targetValue]))
instance Property "MetricType" TargetTrackingScalingConfigurationProperty where
  type PropertyType "MetricType" TargetTrackingScalingConfigurationProperty = Value Prelude.Text
  set newValue TargetTrackingScalingConfigurationProperty {..}
    = TargetTrackingScalingConfigurationProperty
        {metricType = Prelude.pure newValue, ..}
instance Property "TargetValue" TargetTrackingScalingConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingScalingConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingScalingConfigurationProperty {..}
    = TargetTrackingScalingConfigurationProperty
        {targetValue = Prelude.pure newValue, ..}