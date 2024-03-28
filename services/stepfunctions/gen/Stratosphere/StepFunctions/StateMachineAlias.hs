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
  = StateMachineAlias {deploymentPreference :: (Prelude.Maybe DeploymentPreferenceProperty),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       routingConfiguration :: (Prelude.Maybe [RoutingConfigurationVersionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateMachineAlias :: StateMachineAlias
mkStateMachineAlias
  = StateMachineAlias
      {deploymentPreference = Prelude.Nothing,
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