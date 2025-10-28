module Stratosphere.StepFunctions.StateMachineAlias (
        module Exports, StateMachineAlias(..), mkStateMachineAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachineAlias.DeploymentPreferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachineAlias.RoutingConfigurationVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StateMachineAlias
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachinealias.html>
    StateMachineAlias {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachinealias.html#cfn-stepfunctions-statemachinealias-deploymentpreference>
                       deploymentPreference :: (Prelude.Maybe DeploymentPreferenceProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachinealias.html#cfn-stepfunctions-statemachinealias-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachinealias.html#cfn-stepfunctions-statemachinealias-name>
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachinealias.html#cfn-stepfunctions-statemachinealias-routingconfiguration>
                       routingConfiguration :: (Prelude.Maybe [RoutingConfigurationVersionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateMachineAlias :: StateMachineAlias
mkStateMachineAlias
  = StateMachineAlias
      {haddock_workaround_ = (), deploymentPreference = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       routingConfiguration = Prelude.Nothing}
instance ToResourceProperties StateMachineAlias where
  toResourceProperties StateMachineAlias {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachineAlias",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeploymentPreference" Prelude.<$> deploymentPreference,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoutingConfiguration"
                              Prelude.<$> routingConfiguration])}
instance JSON.ToJSON StateMachineAlias where
  toJSON StateMachineAlias {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeploymentPreference" Prelude.<$> deploymentPreference,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoutingConfiguration"
                 Prelude.<$> routingConfiguration]))
instance Property "DeploymentPreference" StateMachineAlias where
  type PropertyType "DeploymentPreference" StateMachineAlias = DeploymentPreferenceProperty
  set newValue StateMachineAlias {..}
    = StateMachineAlias
        {deploymentPreference = Prelude.pure newValue, ..}
instance Property "Description" StateMachineAlias where
  type PropertyType "Description" StateMachineAlias = Value Prelude.Text
  set newValue StateMachineAlias {..}
    = StateMachineAlias {description = Prelude.pure newValue, ..}
instance Property "Name" StateMachineAlias where
  type PropertyType "Name" StateMachineAlias = Value Prelude.Text
  set newValue StateMachineAlias {..}
    = StateMachineAlias {name = Prelude.pure newValue, ..}
instance Property "RoutingConfiguration" StateMachineAlias where
  type PropertyType "RoutingConfiguration" StateMachineAlias = [RoutingConfigurationVersionProperty]
  set newValue StateMachineAlias {..}
    = StateMachineAlias
        {routingConfiguration = Prelude.pure newValue, ..}