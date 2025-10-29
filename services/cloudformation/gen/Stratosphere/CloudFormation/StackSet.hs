module Stratosphere.CloudFormation.StackSet (
        module Exports, StackSet(..), mkStackSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.AutoDeploymentProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.ManagedExecutionProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.OperationPreferencesProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.ParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.StackSet.StackInstancesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StackSet
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html>
    StackSet {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-administrationrolearn>
              administrationRoleARN :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-autodeployment>
              autoDeployment :: (Prelude.Maybe AutoDeploymentProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-callas>
              callAs :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-capabilities>
              capabilities :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-executionrolename>
              executionRoleName :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-managedexecution>
              managedExecution :: (Prelude.Maybe ManagedExecutionProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-operationpreferences>
              operationPreferences :: (Prelude.Maybe OperationPreferencesProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-parameters>
              parameters :: (Prelude.Maybe [ParameterProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-permissionmodel>
              permissionModel :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-stackinstancesgroup>
              stackInstancesGroup :: (Prelude.Maybe [StackInstancesProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-stacksetname>
              stackSetName :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-templatebody>
              templateBody :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-stackset.html#cfn-cloudformation-stackset-templateurl>
              templateURL :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackSet :: Value Prelude.Text -> Value Prelude.Text -> StackSet
mkStackSet permissionModel stackSetName
  = StackSet
      {permissionModel = permissionModel, stackSetName = stackSetName,
       administrationRoleARN = Prelude.Nothing,
       autoDeployment = Prelude.Nothing, callAs = Prelude.Nothing,
       capabilities = Prelude.Nothing, description = Prelude.Nothing,
       executionRoleName = Prelude.Nothing,
       managedExecution = Prelude.Nothing,
       operationPreferences = Prelude.Nothing,
       parameters = Prelude.Nothing,
       stackInstancesGroup = Prelude.Nothing, tags = Prelude.Nothing,
       templateBody = Prelude.Nothing, templateURL = Prelude.Nothing}
instance ToResourceProperties StackSet where
  toResourceProperties StackSet {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PermissionModel" JSON..= permissionModel,
                            "StackSetName" JSON..= stackSetName]
                           (Prelude.catMaybes
                              [(JSON..=) "AdministrationRoleARN"
                                 Prelude.<$> administrationRoleARN,
                               (JSON..=) "AutoDeployment" Prelude.<$> autoDeployment,
                               (JSON..=) "CallAs" Prelude.<$> callAs,
                               (JSON..=) "Capabilities" Prelude.<$> capabilities,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExecutionRoleName" Prelude.<$> executionRoleName,
                               (JSON..=) "ManagedExecution" Prelude.<$> managedExecution,
                               (JSON..=) "OperationPreferences" Prelude.<$> operationPreferences,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "StackInstancesGroup" Prelude.<$> stackInstancesGroup,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                               (JSON..=) "TemplateURL" Prelude.<$> templateURL]))}
instance JSON.ToJSON StackSet where
  toJSON StackSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PermissionModel" JSON..= permissionModel,
               "StackSetName" JSON..= stackSetName]
              (Prelude.catMaybes
                 [(JSON..=) "AdministrationRoleARN"
                    Prelude.<$> administrationRoleARN,
                  (JSON..=) "AutoDeployment" Prelude.<$> autoDeployment,
                  (JSON..=) "CallAs" Prelude.<$> callAs,
                  (JSON..=) "Capabilities" Prelude.<$> capabilities,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExecutionRoleName" Prelude.<$> executionRoleName,
                  (JSON..=) "ManagedExecution" Prelude.<$> managedExecution,
                  (JSON..=) "OperationPreferences" Prelude.<$> operationPreferences,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "StackInstancesGroup" Prelude.<$> stackInstancesGroup,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                  (JSON..=) "TemplateURL" Prelude.<$> templateURL])))
instance Property "AdministrationRoleARN" StackSet where
  type PropertyType "AdministrationRoleARN" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {administrationRoleARN = Prelude.pure newValue, ..}
instance Property "AutoDeployment" StackSet where
  type PropertyType "AutoDeployment" StackSet = AutoDeploymentProperty
  set newValue StackSet {..}
    = StackSet {autoDeployment = Prelude.pure newValue, ..}
instance Property "CallAs" StackSet where
  type PropertyType "CallAs" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {callAs = Prelude.pure newValue, ..}
instance Property "Capabilities" StackSet where
  type PropertyType "Capabilities" StackSet = ValueList Prelude.Text
  set newValue StackSet {..}
    = StackSet {capabilities = Prelude.pure newValue, ..}
instance Property "Description" StackSet where
  type PropertyType "Description" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {description = Prelude.pure newValue, ..}
instance Property "ExecutionRoleName" StackSet where
  type PropertyType "ExecutionRoleName" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {executionRoleName = Prelude.pure newValue, ..}
instance Property "ManagedExecution" StackSet where
  type PropertyType "ManagedExecution" StackSet = ManagedExecutionProperty
  set newValue StackSet {..}
    = StackSet {managedExecution = Prelude.pure newValue, ..}
instance Property "OperationPreferences" StackSet where
  type PropertyType "OperationPreferences" StackSet = OperationPreferencesProperty
  set newValue StackSet {..}
    = StackSet {operationPreferences = Prelude.pure newValue, ..}
instance Property "Parameters" StackSet where
  type PropertyType "Parameters" StackSet = [ParameterProperty]
  set newValue StackSet {..}
    = StackSet {parameters = Prelude.pure newValue, ..}
instance Property "PermissionModel" StackSet where
  type PropertyType "PermissionModel" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {permissionModel = newValue, ..}
instance Property "StackInstancesGroup" StackSet where
  type PropertyType "StackInstancesGroup" StackSet = [StackInstancesProperty]
  set newValue StackSet {..}
    = StackSet {stackInstancesGroup = Prelude.pure newValue, ..}
instance Property "StackSetName" StackSet where
  type PropertyType "StackSetName" StackSet = Value Prelude.Text
  set newValue StackSet {..} = StackSet {stackSetName = newValue, ..}
instance Property "Tags" StackSet where
  type PropertyType "Tags" StackSet = [Tag]
  set newValue StackSet {..}
    = StackSet {tags = Prelude.pure newValue, ..}
instance Property "TemplateBody" StackSet where
  type PropertyType "TemplateBody" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {templateBody = Prelude.pure newValue, ..}
instance Property "TemplateURL" StackSet where
  type PropertyType "TemplateURL" StackSet = Value Prelude.Text
  set newValue StackSet {..}
    = StackSet {templateURL = Prelude.pure newValue, ..}