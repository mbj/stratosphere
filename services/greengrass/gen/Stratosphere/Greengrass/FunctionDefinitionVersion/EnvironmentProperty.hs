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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html>
    EnvironmentProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-accesssysfs>
                         accessSysfs :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-execution>
                         execution :: (Prelude.Maybe ExecutionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-resourceaccesspolicies>
                         resourceAccessPolicies :: (Prelude.Maybe [ResourceAccessPolicyProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-variables>
                         variables :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentProperty :: EnvironmentProperty
mkEnvironmentProperty
  = EnvironmentProperty
      {haddock_workaround_ = (), accessSysfs = Prelude.Nothing,
       execution = Prelude.Nothing,
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