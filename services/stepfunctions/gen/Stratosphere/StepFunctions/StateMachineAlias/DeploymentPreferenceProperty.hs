module Stratosphere.StepFunctions.StateMachineAlias.DeploymentPreferenceProperty (
        DeploymentPreferenceProperty(..), mkDeploymentPreferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentPreferenceProperty
  = DeploymentPreferenceProperty {alarms :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  interval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  percentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                  stateMachineVersionArn :: (Value Prelude.Text),
                                  type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentPreferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DeploymentPreferenceProperty
mkDeploymentPreferenceProperty stateMachineVersionArn type'
  = DeploymentPreferenceProperty
      {stateMachineVersionArn = stateMachineVersionArn, type' = type',
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