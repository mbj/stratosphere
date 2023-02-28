module Stratosphere.Greengrass.FunctionDefinitionVersion.EnvironmentProperty (
        module Exports, EnvironmentProperty(..), mkEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.ExecutionProperty as Exports
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.ResourceAccessPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProperty
  = EnvironmentProperty {accessSysfs :: (Prelude.Maybe (Value Prelude.Bool)),
                         execution :: (Prelude.Maybe ExecutionProperty),
                         resourceAccessPolicies :: (Prelude.Maybe [ResourceAccessPolicyProperty]),
                         variables :: (Prelude.Maybe JSON.Object)}
mkEnvironmentProperty :: EnvironmentProperty
mkEnvironmentProperty
  = EnvironmentProperty
      {accessSysfs = Prelude.Nothing, execution = Prelude.Nothing,
       resourceAccessPolicies = Prelude.Nothing,
       variables = Prelude.Nothing}
instance ToResourceProperties EnvironmentProperty where
  toResourceProperties EnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion.Environment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessSysfs" Prelude.<$> accessSysfs,
                            (JSON..=) "Execution" Prelude.<$> execution,
                            (JSON..=) "ResourceAccessPolicies"
                              Prelude.<$> resourceAccessPolicies,
                            (JSON..=) "Variables" Prelude.<$> variables])}
instance JSON.ToJSON EnvironmentProperty where
  toJSON EnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessSysfs" Prelude.<$> accessSysfs,
               (JSON..=) "Execution" Prelude.<$> execution,
               (JSON..=) "ResourceAccessPolicies"
                 Prelude.<$> resourceAccessPolicies,
               (JSON..=) "Variables" Prelude.<$> variables]))
instance Property "AccessSysfs" EnvironmentProperty where
  type PropertyType "AccessSysfs" EnvironmentProperty = Value Prelude.Bool
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {accessSysfs = Prelude.pure newValue, ..}
instance Property "Execution" EnvironmentProperty where
  type PropertyType "Execution" EnvironmentProperty = ExecutionProperty
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {execution = Prelude.pure newValue, ..}
instance Property "ResourceAccessPolicies" EnvironmentProperty where
  type PropertyType "ResourceAccessPolicies" EnvironmentProperty = [ResourceAccessPolicyProperty]
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty
        {resourceAccessPolicies = Prelude.pure newValue, ..}
instance Property "Variables" EnvironmentProperty where
  type PropertyType "Variables" EnvironmentProperty = JSON.Object
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {variables = Prelude.pure newValue, ..}