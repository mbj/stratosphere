module Stratosphere.ARCRegionSwitch.Plan.EksResourceScalingConfigurationProperty (
        module Exports, EksResourceScalingConfigurationProperty(..),
        mkEksResourceScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.EksClusterProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.EksResourceScalingUngracefulProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.KubernetesResourceTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksResourceScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html>
    EksResourceScalingConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-capacitymonitoringapproach>
                                             capacityMonitoringApproach :: (Prelude.Maybe JSON.Object),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-eksclusters>
                                             eksClusters :: (Prelude.Maybe [EksClusterProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-kubernetesresourcetype>
                                             kubernetesResourceType :: KubernetesResourceTypeProperty,
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-scalingresources>
                                             scalingResources :: (Prelude.Maybe JSON.Object),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-targetpercent>
                                             targetPercent :: (Prelude.Maybe (Value Prelude.Double)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-timeoutminutes>
                                             timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-eksresourcescalingconfiguration.html#cfn-arcregionswitch-plan-eksresourcescalingconfiguration-ungraceful>
                                             ungraceful :: (Prelude.Maybe EksResourceScalingUngracefulProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksResourceScalingConfigurationProperty ::
  KubernetesResourceTypeProperty
  -> EksResourceScalingConfigurationProperty
mkEksResourceScalingConfigurationProperty kubernetesResourceType
  = EksResourceScalingConfigurationProperty
      {haddock_workaround_ = (),
       kubernetesResourceType = kubernetesResourceType,
       capacityMonitoringApproach = Prelude.Nothing,
       eksClusters = Prelude.Nothing, scalingResources = Prelude.Nothing,
       targetPercent = Prelude.Nothing, timeoutMinutes = Prelude.Nothing,
       ungraceful = Prelude.Nothing}
instance ToResourceProperties EksResourceScalingConfigurationProperty where
  toResourceProperties EksResourceScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.EksResourceScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KubernetesResourceType" JSON..= kubernetesResourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityMonitoringApproach"
                                 Prelude.<$> capacityMonitoringApproach,
                               (JSON..=) "EksClusters" Prelude.<$> eksClusters,
                               (JSON..=) "ScalingResources" Prelude.<$> scalingResources,
                               (JSON..=) "TargetPercent" Prelude.<$> targetPercent,
                               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                               (JSON..=) "Ungraceful" Prelude.<$> ungraceful]))}
instance JSON.ToJSON EksResourceScalingConfigurationProperty where
  toJSON EksResourceScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KubernetesResourceType" JSON..= kubernetesResourceType]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityMonitoringApproach"
                    Prelude.<$> capacityMonitoringApproach,
                  (JSON..=) "EksClusters" Prelude.<$> eksClusters,
                  (JSON..=) "ScalingResources" Prelude.<$> scalingResources,
                  (JSON..=) "TargetPercent" Prelude.<$> targetPercent,
                  (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                  (JSON..=) "Ungraceful" Prelude.<$> ungraceful])))
instance Property "CapacityMonitoringApproach" EksResourceScalingConfigurationProperty where
  type PropertyType "CapacityMonitoringApproach" EksResourceScalingConfigurationProperty = JSON.Object
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {capacityMonitoringApproach = Prelude.pure newValue, ..}
instance Property "EksClusters" EksResourceScalingConfigurationProperty where
  type PropertyType "EksClusters" EksResourceScalingConfigurationProperty = [EksClusterProperty]
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {eksClusters = Prelude.pure newValue, ..}
instance Property "KubernetesResourceType" EksResourceScalingConfigurationProperty where
  type PropertyType "KubernetesResourceType" EksResourceScalingConfigurationProperty = KubernetesResourceTypeProperty
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {kubernetesResourceType = newValue, ..}
instance Property "ScalingResources" EksResourceScalingConfigurationProperty where
  type PropertyType "ScalingResources" EksResourceScalingConfigurationProperty = JSON.Object
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {scalingResources = Prelude.pure newValue, ..}
instance Property "TargetPercent" EksResourceScalingConfigurationProperty where
  type PropertyType "TargetPercent" EksResourceScalingConfigurationProperty = Value Prelude.Double
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {targetPercent = Prelude.pure newValue, ..}
instance Property "TimeoutMinutes" EksResourceScalingConfigurationProperty where
  type PropertyType "TimeoutMinutes" EksResourceScalingConfigurationProperty = Value Prelude.Double
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}
instance Property "Ungraceful" EksResourceScalingConfigurationProperty where
  type PropertyType "Ungraceful" EksResourceScalingConfigurationProperty = EksResourceScalingUngracefulProperty
  set newValue EksResourceScalingConfigurationProperty {..}
    = EksResourceScalingConfigurationProperty
        {ungraceful = Prelude.pure newValue, ..}