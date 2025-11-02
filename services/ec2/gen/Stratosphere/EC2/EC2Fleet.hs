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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html>
    EC2Fleet {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-context>
              context :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-excesscapacityterminationpolicy>
              excessCapacityTerminationPolicy :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-launchtemplateconfigs>
              launchTemplateConfigs :: [FleetLaunchTemplateConfigRequestProperty],
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-ondemandoptions>
              onDemandOptions :: (Prelude.Maybe OnDemandOptionsRequestProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-replaceunhealthyinstances>
              replaceUnhealthyInstances :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-spotoptions>
              spotOptions :: (Prelude.Maybe SpotOptionsRequestProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-tagspecifications>
              tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-targetcapacityspecification>
              targetCapacitySpecification :: TargetCapacitySpecificationRequestProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-terminateinstanceswithexpiration>
              terminateInstancesWithExpiration :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-type>
              type' :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-validfrom>
              validFrom :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html#cfn-ec2-ec2fleet-validuntil>
              validUntil :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEC2Fleet ::
  [FleetLaunchTemplateConfigRequestProperty]
  -> TargetCapacitySpecificationRequestProperty -> EC2Fleet
mkEC2Fleet launchTemplateConfigs targetCapacitySpecification
  = EC2Fleet
      {haddock_workaround_ = (),
       launchTemplateConfigs = launchTemplateConfigs,
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
        {awsType = "AWS::EC2::EC2Fleet", supportsTags = Prelude.False,
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