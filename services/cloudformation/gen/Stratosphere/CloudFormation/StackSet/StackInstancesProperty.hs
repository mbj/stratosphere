module Stratosphere.CloudFormation.StackSet.StackInstancesProperty (
        module Exports, StackInstancesProperty(..),
        mkStackInstancesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.DeploymentTargetsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.ParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackInstancesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html>
    StackInstancesProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html#cfn-cloudformation-stackset-stackinstances-deploymenttargets>
                            deploymentTargets :: DeploymentTargetsProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html#cfn-cloudformation-stackset-stackinstances-parameteroverrides>
                            parameterOverrides :: (Prelude.Maybe [ParameterProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html#cfn-cloudformation-stackset-stackinstances-regions>
                            regions :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackInstancesProperty ::
  DeploymentTargetsProperty
  -> ValueList Prelude.Text -> StackInstancesProperty
mkStackInstancesProperty deploymentTargets regions
  = StackInstancesProperty
      {haddock_workaround_ = (), deploymentTargets = deploymentTargets,
       regions = regions, parameterOverrides = Prelude.Nothing}
instance ToResourceProperties StackInstancesProperty where
  toResourceProperties StackInstancesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.StackInstances",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeploymentTargets" JSON..= deploymentTargets,
                            "Regions" JSON..= regions]
                           (Prelude.catMaybes
                              [(JSON..=) "ParameterOverrides" Prelude.<$> parameterOverrides]))}
instance JSON.ToJSON StackInstancesProperty where
  toJSON StackInstancesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeploymentTargets" JSON..= deploymentTargets,
               "Regions" JSON..= regions]
              (Prelude.catMaybes
                 [(JSON..=) "ParameterOverrides" Prelude.<$> parameterOverrides])))
instance Property "DeploymentTargets" StackInstancesProperty where
  type PropertyType "DeploymentTargets" StackInstancesProperty = DeploymentTargetsProperty
  set newValue StackInstancesProperty {..}
    = StackInstancesProperty {deploymentTargets = newValue, ..}
instance Property "ParameterOverrides" StackInstancesProperty where
  type PropertyType "ParameterOverrides" StackInstancesProperty = [ParameterProperty]
  set newValue StackInstancesProperty {..}
    = StackInstancesProperty
        {parameterOverrides = Prelude.pure newValue, ..}
instance Property "Regions" StackInstancesProperty where
  type PropertyType "Regions" StackInstancesProperty = ValueList Prelude.Text
  set newValue StackInstancesProperty {..}
    = StackInstancesProperty {regions = newValue, ..}