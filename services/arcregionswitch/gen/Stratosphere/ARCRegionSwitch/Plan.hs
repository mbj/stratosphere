module Stratosphere.ARCRegionSwitch.Plan (
        module Exports, Plan(..), mkPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.AssociatedAlarmProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.TriggerProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.WorkflowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Plan
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html>
    Plan {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-associatedalarms>
          associatedAlarms :: (Prelude.Maybe (Prelude.Map Prelude.Text AssociatedAlarmProperty)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-executionrole>
          executionRole :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-name>
          name :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-primaryregion>
          primaryRegion :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-recoveryapproach>
          recoveryApproach :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-recoverytimeobjectiveminutes>
          recoveryTimeObjectiveMinutes :: (Prelude.Maybe (Value Prelude.Double)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-regions>
          regions :: (ValueList Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-tags>
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-triggers>
          triggers :: (Prelude.Maybe [TriggerProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-arcregionswitch-plan.html#cfn-arcregionswitch-plan-workflows>
          workflows :: [WorkflowProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlan ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> ValueList Prelude.Text -> [WorkflowProperty] -> Plan
mkPlan executionRole name recoveryApproach regions workflows
  = Plan
      {haddock_workaround_ = (), executionRole = executionRole,
       name = name, recoveryApproach = recoveryApproach,
       regions = regions, workflows = workflows,
       associatedAlarms = Prelude.Nothing, description = Prelude.Nothing,
       primaryRegion = Prelude.Nothing,
       recoveryTimeObjectiveMinutes = Prelude.Nothing,
       tags = Prelude.Nothing, triggers = Prelude.Nothing}
instance ToResourceProperties Plan where
  toResourceProperties Plan {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRole" JSON..= executionRole, "Name" JSON..= name,
                            "RecoveryApproach" JSON..= recoveryApproach,
                            "Regions" JSON..= regions, "Workflows" JSON..= workflows]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociatedAlarms" Prelude.<$> associatedAlarms,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PrimaryRegion" Prelude.<$> primaryRegion,
                               (JSON..=) "RecoveryTimeObjectiveMinutes"
                                 Prelude.<$> recoveryTimeObjectiveMinutes,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Triggers" Prelude.<$> triggers]))}
instance JSON.ToJSON Plan where
  toJSON Plan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRole" JSON..= executionRole, "Name" JSON..= name,
               "RecoveryApproach" JSON..= recoveryApproach,
               "Regions" JSON..= regions, "Workflows" JSON..= workflows]
              (Prelude.catMaybes
                 [(JSON..=) "AssociatedAlarms" Prelude.<$> associatedAlarms,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PrimaryRegion" Prelude.<$> primaryRegion,
                  (JSON..=) "RecoveryTimeObjectiveMinutes"
                    Prelude.<$> recoveryTimeObjectiveMinutes,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Triggers" Prelude.<$> triggers])))
instance Property "AssociatedAlarms" Plan where
  type PropertyType "AssociatedAlarms" Plan = Prelude.Map Prelude.Text AssociatedAlarmProperty
  set newValue Plan {..}
    = Plan {associatedAlarms = Prelude.pure newValue, ..}
instance Property "Description" Plan where
  type PropertyType "Description" Plan = Value Prelude.Text
  set newValue Plan {..}
    = Plan {description = Prelude.pure newValue, ..}
instance Property "ExecutionRole" Plan where
  type PropertyType "ExecutionRole" Plan = Value Prelude.Text
  set newValue Plan {..} = Plan {executionRole = newValue, ..}
instance Property "Name" Plan where
  type PropertyType "Name" Plan = Value Prelude.Text
  set newValue Plan {..} = Plan {name = newValue, ..}
instance Property "PrimaryRegion" Plan where
  type PropertyType "PrimaryRegion" Plan = Value Prelude.Text
  set newValue Plan {..}
    = Plan {primaryRegion = Prelude.pure newValue, ..}
instance Property "RecoveryApproach" Plan where
  type PropertyType "RecoveryApproach" Plan = Value Prelude.Text
  set newValue Plan {..} = Plan {recoveryApproach = newValue, ..}
instance Property "RecoveryTimeObjectiveMinutes" Plan where
  type PropertyType "RecoveryTimeObjectiveMinutes" Plan = Value Prelude.Double
  set newValue Plan {..}
    = Plan {recoveryTimeObjectiveMinutes = Prelude.pure newValue, ..}
instance Property "Regions" Plan where
  type PropertyType "Regions" Plan = ValueList Prelude.Text
  set newValue Plan {..} = Plan {regions = newValue, ..}
instance Property "Tags" Plan where
  type PropertyType "Tags" Plan = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Plan {..} = Plan {tags = Prelude.pure newValue, ..}
instance Property "Triggers" Plan where
  type PropertyType "Triggers" Plan = [TriggerProperty]
  set newValue Plan {..}
    = Plan {triggers = Prelude.pure newValue, ..}
instance Property "Workflows" Plan where
  type PropertyType "Workflows" Plan = [WorkflowProperty]
  set newValue Plan {..} = Plan {workflows = newValue, ..}