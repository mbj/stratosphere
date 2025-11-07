module Stratosphere.ARCRegionSwitch.Plan.EcsCapacityIncreaseConfigurationProperty (
        module Exports, EcsCapacityIncreaseConfigurationProperty(..),
        mkEcsCapacityIncreaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.EcsUngracefulProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.ServiceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsCapacityIncreaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecscapacityincreaseconfiguration.html>
    EcsCapacityIncreaseConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecscapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ecscapacityincreaseconfiguration-capacitymonitoringapproach>
                                              capacityMonitoringApproach :: (Prelude.Maybe JSON.Object),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecscapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ecscapacityincreaseconfiguration-services>
                                              services :: [ServiceProperty],
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecscapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ecscapacityincreaseconfiguration-targetpercent>
                                              targetPercent :: (Prelude.Maybe (Value Prelude.Double)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecscapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ecscapacityincreaseconfiguration-timeoutminutes>
                                              timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ecscapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ecscapacityincreaseconfiguration-ungraceful>
                                              ungraceful :: (Prelude.Maybe EcsUngracefulProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsCapacityIncreaseConfigurationProperty ::
  [ServiceProperty] -> EcsCapacityIncreaseConfigurationProperty
mkEcsCapacityIncreaseConfigurationProperty services
  = EcsCapacityIncreaseConfigurationProperty
      {haddock_workaround_ = (), services = services,
       capacityMonitoringApproach = Prelude.Nothing,
       targetPercent = Prelude.Nothing, timeoutMinutes = Prelude.Nothing,
       ungraceful = Prelude.Nothing}
instance ToResourceProperties EcsCapacityIncreaseConfigurationProperty where
  toResourceProperties EcsCapacityIncreaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.EcsCapacityIncreaseConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Services" JSON..= services]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityMonitoringApproach"
                                 Prelude.<$> capacityMonitoringApproach,
                               (JSON..=) "TargetPercent" Prelude.<$> targetPercent,
                               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                               (JSON..=) "Ungraceful" Prelude.<$> ungraceful]))}
instance JSON.ToJSON EcsCapacityIncreaseConfigurationProperty where
  toJSON EcsCapacityIncreaseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Services" JSON..= services]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityMonitoringApproach"
                    Prelude.<$> capacityMonitoringApproach,
                  (JSON..=) "TargetPercent" Prelude.<$> targetPercent,
                  (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                  (JSON..=) "Ungraceful" Prelude.<$> ungraceful])))
instance Property "CapacityMonitoringApproach" EcsCapacityIncreaseConfigurationProperty where
  type PropertyType "CapacityMonitoringApproach" EcsCapacityIncreaseConfigurationProperty = JSON.Object
  set newValue EcsCapacityIncreaseConfigurationProperty {..}
    = EcsCapacityIncreaseConfigurationProperty
        {capacityMonitoringApproach = Prelude.pure newValue, ..}
instance Property "Services" EcsCapacityIncreaseConfigurationProperty where
  type PropertyType "Services" EcsCapacityIncreaseConfigurationProperty = [ServiceProperty]
  set newValue EcsCapacityIncreaseConfigurationProperty {..}
    = EcsCapacityIncreaseConfigurationProperty
        {services = newValue, ..}
instance Property "TargetPercent" EcsCapacityIncreaseConfigurationProperty where
  type PropertyType "TargetPercent" EcsCapacityIncreaseConfigurationProperty = Value Prelude.Double
  set newValue EcsCapacityIncreaseConfigurationProperty {..}
    = EcsCapacityIncreaseConfigurationProperty
        {targetPercent = Prelude.pure newValue, ..}
instance Property "TimeoutMinutes" EcsCapacityIncreaseConfigurationProperty where
  type PropertyType "TimeoutMinutes" EcsCapacityIncreaseConfigurationProperty = Value Prelude.Double
  set newValue EcsCapacityIncreaseConfigurationProperty {..}
    = EcsCapacityIncreaseConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}
instance Property "Ungraceful" EcsCapacityIncreaseConfigurationProperty where
  type PropertyType "Ungraceful" EcsCapacityIncreaseConfigurationProperty = EcsUngracefulProperty
  set newValue EcsCapacityIncreaseConfigurationProperty {..}
    = EcsCapacityIncreaseConfigurationProperty
        {ungraceful = Prelude.pure newValue, ..}