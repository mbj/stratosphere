module Stratosphere.EC2.EC2Fleet (
        module Exports, EC2Fleet(..), mkEC2Fleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.FleetLaunchTemplateConfigRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.OnDemandOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.SpotOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.TagSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.TargetCapacitySpecificationRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EC2Fleet
  = EC2Fleet {context :: (Prelude.Maybe (Value Prelude.Text)),
              excessCapacityTerminationPolicy :: (Prelude.Maybe (Value Prelude.Text)),
              launchTemplateConfigs :: [FleetLaunchTemplateConfigRequestProperty],
              onDemandOptions :: (Prelude.Maybe OnDemandOptionsRequestProperty),
              replaceUnhealthyInstances :: (Prelude.Maybe (Value Prelude.Bool)),
              spotOptions :: (Prelude.Maybe SpotOptionsRequestProperty),
              tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
              targetCapacitySpecification :: TargetCapacitySpecificationRequestProperty,
              terminateInstancesWithExpiration :: (Prelude.Maybe (Value Prelude.Bool)),
              type' :: (Prelude.Maybe (Value Prelude.Text)),
              validFrom :: (Prelude.Maybe (Value Prelude.Text)),
              validUntil :: (Prelude.Maybe (Value Prelude.Text))}
mkEC2Fleet ::
  [FleetLaunchTemplateConfigRequestProperty]
  -> TargetCapacitySpecificationRequestProperty -> EC2Fleet
mkEC2Fleet launchTemplateConfigs targetCapacitySpecification
  = EC2Fleet
      {launchTemplateConfigs = launchTemplateConfigs,
       targetCapacitySpecification = targetCapacitySpecification,
       context = Prelude.Nothing,
       excessCapacityTerminationPolicy = Prelude.Nothing,
       onDemandOptions = Prelude.Nothing,
       replaceUnhealthyInstances = Prelude.Nothing,
       spotOptions = Prelude.Nothing, tagSpecifications = Prelude.Nothing,
       terminateInstancesWithExpiration = Prelude.Nothing,
       type' = Prelude.Nothing, validFrom = Prelude.Nothing,
       validUntil = Prelude.Nothing}
instance ToResourceProperties EC2Fleet where
  toResourceProperties EC2Fleet {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LaunchTemplateConfigs" JSON..= launchTemplateConfigs,
                            "TargetCapacitySpecification" JSON..= targetCapacitySpecification]
                           (Prelude.catMaybes
                              [(JSON..=) "Context" Prelude.<$> context,
                               (JSON..=) "ExcessCapacityTerminationPolicy"
                                 Prelude.<$> excessCapacityTerminationPolicy,
                               (JSON..=) "OnDemandOptions" Prelude.<$> onDemandOptions,
                               (JSON..=) "ReplaceUnhealthyInstances"
                                 Prelude.<$> replaceUnhealthyInstances,
                               (JSON..=) "SpotOptions" Prelude.<$> spotOptions,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "TerminateInstancesWithExpiration"
                                 Prelude.<$> terminateInstancesWithExpiration,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "ValidFrom" Prelude.<$> validFrom,
                               (JSON..=) "ValidUntil" Prelude.<$> validUntil]))}
instance JSON.ToJSON EC2Fleet where
  toJSON EC2Fleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LaunchTemplateConfigs" JSON..= launchTemplateConfigs,
               "TargetCapacitySpecification" JSON..= targetCapacitySpecification]
              (Prelude.catMaybes
                 [(JSON..=) "Context" Prelude.<$> context,
                  (JSON..=) "ExcessCapacityTerminationPolicy"
                    Prelude.<$> excessCapacityTerminationPolicy,
                  (JSON..=) "OnDemandOptions" Prelude.<$> onDemandOptions,
                  (JSON..=) "ReplaceUnhealthyInstances"
                    Prelude.<$> replaceUnhealthyInstances,
                  (JSON..=) "SpotOptions" Prelude.<$> spotOptions,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "TerminateInstancesWithExpiration"
                    Prelude.<$> terminateInstancesWithExpiration,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "ValidFrom" Prelude.<$> validFrom,
                  (JSON..=) "ValidUntil" Prelude.<$> validUntil])))
instance Property "Context" EC2Fleet where
  type PropertyType "Context" EC2Fleet = Value Prelude.Text
  set newValue EC2Fleet {..}
    = EC2Fleet {context = Prelude.pure newValue, ..}
instance Property "ExcessCapacityTerminationPolicy" EC2Fleet where
  type PropertyType "ExcessCapacityTerminationPolicy" EC2Fleet = Value Prelude.Text
  set newValue EC2Fleet {..}
    = EC2Fleet
        {excessCapacityTerminationPolicy = Prelude.pure newValue, ..}
instance Property "LaunchTemplateConfigs" EC2Fleet where
  type PropertyType "LaunchTemplateConfigs" EC2Fleet = [FleetLaunchTemplateConfigRequestProperty]
  set newValue EC2Fleet {..}
    = EC2Fleet {launchTemplateConfigs = newValue, ..}
instance Property "OnDemandOptions" EC2Fleet where
  type PropertyType "OnDemandOptions" EC2Fleet = OnDemandOptionsRequestProperty
  set newValue EC2Fleet {..}
    = EC2Fleet {onDemandOptions = Prelude.pure newValue, ..}
instance Property "ReplaceUnhealthyInstances" EC2Fleet where
  type PropertyType "ReplaceUnhealthyInstances" EC2Fleet = Value Prelude.Bool
  set newValue EC2Fleet {..}
    = EC2Fleet {replaceUnhealthyInstances = Prelude.pure newValue, ..}
instance Property "SpotOptions" EC2Fleet where
  type PropertyType "SpotOptions" EC2Fleet = SpotOptionsRequestProperty
  set newValue EC2Fleet {..}
    = EC2Fleet {spotOptions = Prelude.pure newValue, ..}
instance Property "TagSpecifications" EC2Fleet where
  type PropertyType "TagSpecifications" EC2Fleet = [TagSpecificationProperty]
  set newValue EC2Fleet {..}
    = EC2Fleet {tagSpecifications = Prelude.pure newValue, ..}
instance Property "TargetCapacitySpecification" EC2Fleet where
  type PropertyType "TargetCapacitySpecification" EC2Fleet = TargetCapacitySpecificationRequestProperty
  set newValue EC2Fleet {..}
    = EC2Fleet {targetCapacitySpecification = newValue, ..}
instance Property "TerminateInstancesWithExpiration" EC2Fleet where
  type PropertyType "TerminateInstancesWithExpiration" EC2Fleet = Value Prelude.Bool
  set newValue EC2Fleet {..}
    = EC2Fleet
        {terminateInstancesWithExpiration = Prelude.pure newValue, ..}
instance Property "Type" EC2Fleet where
  type PropertyType "Type" EC2Fleet = Value Prelude.Text
  set newValue EC2Fleet {..}
    = EC2Fleet {type' = Prelude.pure newValue, ..}
instance Property "ValidFrom" EC2Fleet where
  type PropertyType "ValidFrom" EC2Fleet = Value Prelude.Text
  set newValue EC2Fleet {..}
    = EC2Fleet {validFrom = Prelude.pure newValue, ..}
instance Property "ValidUntil" EC2Fleet where
  type PropertyType "ValidUntil" EC2Fleet = Value Prelude.Text
  set newValue EC2Fleet {..}
    = EC2Fleet {validUntil = Prelude.pure newValue, ..}