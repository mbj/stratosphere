module Stratosphere.Batch.ComputeEnvironment (
        module Exports, ComputeEnvironment(..), mkComputeEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.ComputeEnvironment.ComputeResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.ComputeEnvironment.EksConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.ComputeEnvironment.UpdatePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeEnvironment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html>
    ComputeEnvironment {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeenvironmentname>
                        computeEnvironmentName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeresources>
                        computeResources :: (Prelude.Maybe ComputeResourcesProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-context>
                        context :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-eksconfiguration>
                        eksConfiguration :: (Prelude.Maybe EksConfigurationProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-replacecomputeenvironment>
                        replaceComputeEnvironment :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-servicerole>
                        serviceRole :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-state>
                        state :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-tags>
                        tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-type>
                        type' :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-unmanagedvcpus>
                        unmanagedvCpus :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-updatepolicy>
                        updatePolicy :: (Prelude.Maybe UpdatePolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeEnvironment :: Value Prelude.Text -> ComputeEnvironment
mkComputeEnvironment type'
  = ComputeEnvironment
      {haddock_workaround_ = (), type' = type',
       computeEnvironmentName = Prelude.Nothing,
       computeResources = Prelude.Nothing, context = Prelude.Nothing,
       eksConfiguration = Prelude.Nothing,
       replaceComputeEnvironment = Prelude.Nothing,
       serviceRole = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing, unmanagedvCpus = Prelude.Nothing,
       updatePolicy = Prelude.Nothing}
instance ToResourceProperties ComputeEnvironment where
  toResourceProperties ComputeEnvironment {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ComputeEnvironmentName"
                                 Prelude.<$> computeEnvironmentName,
                               (JSON..=) "ComputeResources" Prelude.<$> computeResources,
                               (JSON..=) "Context" Prelude.<$> context,
                               (JSON..=) "EksConfiguration" Prelude.<$> eksConfiguration,
                               (JSON..=) "ReplaceComputeEnvironment"
                                 Prelude.<$> replaceComputeEnvironment,
                               (JSON..=) "ServiceRole" Prelude.<$> serviceRole,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UnmanagedvCpus" Prelude.<$> unmanagedvCpus,
                               (JSON..=) "UpdatePolicy" Prelude.<$> updatePolicy]))}
instance JSON.ToJSON ComputeEnvironment where
  toJSON ComputeEnvironment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ComputeEnvironmentName"
                    Prelude.<$> computeEnvironmentName,
                  (JSON..=) "ComputeResources" Prelude.<$> computeResources,
                  (JSON..=) "Context" Prelude.<$> context,
                  (JSON..=) "EksConfiguration" Prelude.<$> eksConfiguration,
                  (JSON..=) "ReplaceComputeEnvironment"
                    Prelude.<$> replaceComputeEnvironment,
                  (JSON..=) "ServiceRole" Prelude.<$> serviceRole,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UnmanagedvCpus" Prelude.<$> unmanagedvCpus,
                  (JSON..=) "UpdatePolicy" Prelude.<$> updatePolicy])))
instance Property "ComputeEnvironmentName" ComputeEnvironment where
  type PropertyType "ComputeEnvironmentName" ComputeEnvironment = Value Prelude.Text
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment
        {computeEnvironmentName = Prelude.pure newValue, ..}
instance Property "ComputeResources" ComputeEnvironment where
  type PropertyType "ComputeResources" ComputeEnvironment = ComputeResourcesProperty
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {computeResources = Prelude.pure newValue, ..}
instance Property "Context" ComputeEnvironment where
  type PropertyType "Context" ComputeEnvironment = Value Prelude.Text
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {context = Prelude.pure newValue, ..}
instance Property "EksConfiguration" ComputeEnvironment where
  type PropertyType "EksConfiguration" ComputeEnvironment = EksConfigurationProperty
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {eksConfiguration = Prelude.pure newValue, ..}
instance Property "ReplaceComputeEnvironment" ComputeEnvironment where
  type PropertyType "ReplaceComputeEnvironment" ComputeEnvironment = Value Prelude.Bool
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment
        {replaceComputeEnvironment = Prelude.pure newValue, ..}
instance Property "ServiceRole" ComputeEnvironment where
  type PropertyType "ServiceRole" ComputeEnvironment = Value Prelude.Text
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {serviceRole = Prelude.pure newValue, ..}
instance Property "State" ComputeEnvironment where
  type PropertyType "State" ComputeEnvironment = Value Prelude.Text
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {state = Prelude.pure newValue, ..}
instance Property "Tags" ComputeEnvironment where
  type PropertyType "Tags" ComputeEnvironment = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {tags = Prelude.pure newValue, ..}
instance Property "Type" ComputeEnvironment where
  type PropertyType "Type" ComputeEnvironment = Value Prelude.Text
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {type' = newValue, ..}
instance Property "UnmanagedvCpus" ComputeEnvironment where
  type PropertyType "UnmanagedvCpus" ComputeEnvironment = Value Prelude.Integer
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {unmanagedvCpus = Prelude.pure newValue, ..}
instance Property "UpdatePolicy" ComputeEnvironment where
  type PropertyType "UpdatePolicy" ComputeEnvironment = UpdatePolicyProperty
  set newValue ComputeEnvironment {..}
    = ComputeEnvironment {updatePolicy = Prelude.pure newValue, ..}