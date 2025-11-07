module Stratosphere.ARCRegionSwitch.Plan.Ec2AsgCapacityIncreaseConfigurationProperty (
        module Exports, Ec2AsgCapacityIncreaseConfigurationProperty(..),
        mkEc2AsgCapacityIncreaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.AsgProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.Ec2UngracefulProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ec2AsgCapacityIncreaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration.html>
    Ec2AsgCapacityIncreaseConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration-asgs>
                                                 asgs :: [AsgProperty],
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration-capacitymonitoringapproach>
                                                 capacityMonitoringApproach :: (Prelude.Maybe JSON.Object),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration-targetpercent>
                                                 targetPercent :: (Prelude.Maybe (Value Prelude.Double)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration-timeoutminutes>
                                                 timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration.html#cfn-arcregionswitch-plan-ec2asgcapacityincreaseconfiguration-ungraceful>
                                                 ungraceful :: (Prelude.Maybe Ec2UngracefulProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEc2AsgCapacityIncreaseConfigurationProperty ::
  [AsgProperty] -> Ec2AsgCapacityIncreaseConfigurationProperty
mkEc2AsgCapacityIncreaseConfigurationProperty asgs
  = Ec2AsgCapacityIncreaseConfigurationProperty
      {haddock_workaround_ = (), asgs = asgs,
       capacityMonitoringApproach = Prelude.Nothing,
       targetPercent = Prelude.Nothing, timeoutMinutes = Prelude.Nothing,
       ungraceful = Prelude.Nothing}
instance ToResourceProperties Ec2AsgCapacityIncreaseConfigurationProperty where
  toResourceProperties
    Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Ec2AsgCapacityIncreaseConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Asgs" JSON..= asgs]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityMonitoringApproach"
                                 Prelude.<$> capacityMonitoringApproach,
                               (JSON..=) "TargetPercent" Prelude.<$> targetPercent,
                               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                               (JSON..=) "Ungraceful" Prelude.<$> ungraceful]))}
instance JSON.ToJSON Ec2AsgCapacityIncreaseConfigurationProperty where
  toJSON Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Asgs" JSON..= asgs]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityMonitoringApproach"
                    Prelude.<$> capacityMonitoringApproach,
                  (JSON..=) "TargetPercent" Prelude.<$> targetPercent,
                  (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                  (JSON..=) "Ungraceful" Prelude.<$> ungraceful])))
instance Property "Asgs" Ec2AsgCapacityIncreaseConfigurationProperty where
  type PropertyType "Asgs" Ec2AsgCapacityIncreaseConfigurationProperty = [AsgProperty]
  set newValue Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = Ec2AsgCapacityIncreaseConfigurationProperty {asgs = newValue, ..}
instance Property "CapacityMonitoringApproach" Ec2AsgCapacityIncreaseConfigurationProperty where
  type PropertyType "CapacityMonitoringApproach" Ec2AsgCapacityIncreaseConfigurationProperty = JSON.Object
  set newValue Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = Ec2AsgCapacityIncreaseConfigurationProperty
        {capacityMonitoringApproach = Prelude.pure newValue, ..}
instance Property "TargetPercent" Ec2AsgCapacityIncreaseConfigurationProperty where
  type PropertyType "TargetPercent" Ec2AsgCapacityIncreaseConfigurationProperty = Value Prelude.Double
  set newValue Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = Ec2AsgCapacityIncreaseConfigurationProperty
        {targetPercent = Prelude.pure newValue, ..}
instance Property "TimeoutMinutes" Ec2AsgCapacityIncreaseConfigurationProperty where
  type PropertyType "TimeoutMinutes" Ec2AsgCapacityIncreaseConfigurationProperty = Value Prelude.Double
  set newValue Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = Ec2AsgCapacityIncreaseConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}
instance Property "Ungraceful" Ec2AsgCapacityIncreaseConfigurationProperty where
  type PropertyType "Ungraceful" Ec2AsgCapacityIncreaseConfigurationProperty = Ec2UngracefulProperty
  set newValue Ec2AsgCapacityIncreaseConfigurationProperty {..}
    = Ec2AsgCapacityIncreaseConfigurationProperty
        {ungraceful = Prelude.pure newValue, ..}