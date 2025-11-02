module Stratosphere.StepFunctions.StateMachineAlias.DeploymentPreferenceProperty (
        DeploymentPreferenceProperty(..), mkDeploymentPreferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentPreferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-deploymentpreference.html>
    DeploymentPreferenceProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-deploymentpreference.html#cfn-stepfunctions-statemachinealias-deploymentpreference-alarms>
                                  alarms :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-deploymentpreference.html#cfn-stepfunctions-statemachinealias-deploymentpreference-interval>
                                  interval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-deploymentpreference.html#cfn-stepfunctions-statemachinealias-deploymentpreference-percentage>
                                  percentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-deploymentpreference.html#cfn-stepfunctions-statemachinealias-deploymentpreference-statemachineversionarn>
                                  stateMachineVersionArn :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachinealias-deploymentpreference.html#cfn-stepfunctions-statemachinealias-deploymentpreference-type>
                                  type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentPreferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DeploymentPreferenceProperty
mkDeploymentPreferenceProperty stateMachineVersionArn type'
  = DeploymentPreferenceProperty
      {haddock_workaround_ = (),
       stateMachineVersionArn = stateMachineVersionArn, type' = type',
       alarms = Prelude.Nothing, interval = Prelude.Nothing,
       percentage = Prelude.Nothing}
instance ToResourceProperties DeploymentPreferenceProperty where
  toResourceProperties DeploymentPreferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachineAlias.DeploymentPreference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StateMachineVersionArn" JSON..= stateMachineVersionArn,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Alarms" Prelude.<$> alarms,
                               (JSON..=) "Interval" Prelude.<$> interval,
                               (JSON..=) "Percentage" Prelude.<$> percentage]))}
instance JSON.ToJSON DeploymentPreferenceProperty where
  toJSON DeploymentPreferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StateMachineVersionArn" JSON..= stateMachineVersionArn,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Alarms" Prelude.<$> alarms,
                  (JSON..=) "Interval" Prelude.<$> interval,
                  (JSON..=) "Percentage" Prelude.<$> percentage])))
instance Property "Alarms" DeploymentPreferenceProperty where
  type PropertyType "Alarms" DeploymentPreferenceProperty = ValueList Prelude.Text
  set newValue DeploymentPreferenceProperty {..}
    = DeploymentPreferenceProperty {alarms = Prelude.pure newValue, ..}
instance Property "Interval" DeploymentPreferenceProperty where
  type PropertyType "Interval" DeploymentPreferenceProperty = Value Prelude.Integer
  set newValue DeploymentPreferenceProperty {..}
    = DeploymentPreferenceProperty
        {interval = Prelude.pure newValue, ..}
instance Property "Percentage" DeploymentPreferenceProperty where
  type PropertyType "Percentage" DeploymentPreferenceProperty = Value Prelude.Integer
  set newValue DeploymentPreferenceProperty {..}
    = DeploymentPreferenceProperty
        {percentage = Prelude.pure newValue, ..}
instance Property "StateMachineVersionArn" DeploymentPreferenceProperty where
  type PropertyType "StateMachineVersionArn" DeploymentPreferenceProperty = Value Prelude.Text
  set newValue DeploymentPreferenceProperty {..}
    = DeploymentPreferenceProperty
        {stateMachineVersionArn = newValue, ..}
instance Property "Type" DeploymentPreferenceProperty where
  type PropertyType "Type" DeploymentPreferenceProperty = Value Prelude.Text
  set newValue DeploymentPreferenceProperty {..}
    = DeploymentPreferenceProperty {type' = newValue, ..}