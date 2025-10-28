module Stratosphere.SageMaker.NotebookInstance (
        module Exports, NotebookInstance(..), mkNotebookInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.NotebookInstance.InstanceMetadataServiceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NotebookInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html>
    NotebookInstance {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-acceleratortypes>
                      acceleratorTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-additionalcoderepositories>
                      additionalCodeRepositories :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-defaultcoderepository>
                      defaultCodeRepository :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-directinternetaccess>
                      directInternetAccess :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-instancemetadataserviceconfiguration>
                      instanceMetadataServiceConfiguration :: (Prelude.Maybe InstanceMetadataServiceConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-instancetype>
                      instanceType :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-kmskeyid>
                      kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-lifecycleconfigname>
                      lifecycleConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-notebookinstancename>
                      notebookInstanceName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-platformidentifier>
                      platformIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-rolearn>
                      roleArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-rootaccess>
                      rootAccess :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-securitygroupids>
                      securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-subnetid>
                      subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-volumesizeingb>
                      volumeSizeInGB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotebookInstance ::
  Value Prelude.Text -> Value Prelude.Text -> NotebookInstance
mkNotebookInstance instanceType roleArn
  = NotebookInstance
      {haddock_workaround_ = (), instanceType = instanceType,
       roleArn = roleArn, acceleratorTypes = Prelude.Nothing,
       additionalCodeRepositories = Prelude.Nothing,
       defaultCodeRepository = Prelude.Nothing,
       directInternetAccess = Prelude.Nothing,
       instanceMetadataServiceConfiguration = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, lifecycleConfigName = Prelude.Nothing,
       notebookInstanceName = Prelude.Nothing,
       platformIdentifier = Prelude.Nothing, rootAccess = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetId = Prelude.Nothing,
       tags = Prelude.Nothing, volumeSizeInGB = Prelude.Nothing}
instance ToResourceProperties NotebookInstance where
  toResourceProperties NotebookInstance {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::NotebookInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceType" JSON..= instanceType, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceleratorTypes" Prelude.<$> acceleratorTypes,
                               (JSON..=) "AdditionalCodeRepositories"
                                 Prelude.<$> additionalCodeRepositories,
                               (JSON..=) "DefaultCodeRepository"
                                 Prelude.<$> defaultCodeRepository,
                               (JSON..=) "DirectInternetAccess" Prelude.<$> directInternetAccess,
                               (JSON..=) "InstanceMetadataServiceConfiguration"
                                 Prelude.<$> instanceMetadataServiceConfiguration,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "LifecycleConfigName" Prelude.<$> lifecycleConfigName,
                               (JSON..=) "NotebookInstanceName" Prelude.<$> notebookInstanceName,
                               (JSON..=) "PlatformIdentifier" Prelude.<$> platformIdentifier,
                               (JSON..=) "RootAccess" Prelude.<$> rootAccess,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB]))}
instance JSON.ToJSON NotebookInstance where
  toJSON NotebookInstance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceType" JSON..= instanceType, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AcceleratorTypes" Prelude.<$> acceleratorTypes,
                  (JSON..=) "AdditionalCodeRepositories"
                    Prelude.<$> additionalCodeRepositories,
                  (JSON..=) "DefaultCodeRepository"
                    Prelude.<$> defaultCodeRepository,
                  (JSON..=) "DirectInternetAccess" Prelude.<$> directInternetAccess,
                  (JSON..=) "InstanceMetadataServiceConfiguration"
                    Prelude.<$> instanceMetadataServiceConfiguration,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "LifecycleConfigName" Prelude.<$> lifecycleConfigName,
                  (JSON..=) "NotebookInstanceName" Prelude.<$> notebookInstanceName,
                  (JSON..=) "PlatformIdentifier" Prelude.<$> platformIdentifier,
                  (JSON..=) "RootAccess" Prelude.<$> rootAccess,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB])))
instance Property "AcceleratorTypes" NotebookInstance where
  type PropertyType "AcceleratorTypes" NotebookInstance = ValueList Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {acceleratorTypes = Prelude.pure newValue, ..}
instance Property "AdditionalCodeRepositories" NotebookInstance where
  type PropertyType "AdditionalCodeRepositories" NotebookInstance = ValueList Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance
        {additionalCodeRepositories = Prelude.pure newValue, ..}
instance Property "DefaultCodeRepository" NotebookInstance where
  type PropertyType "DefaultCodeRepository" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance
        {defaultCodeRepository = Prelude.pure newValue, ..}
instance Property "DirectInternetAccess" NotebookInstance where
  type PropertyType "DirectInternetAccess" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance
        {directInternetAccess = Prelude.pure newValue, ..}
instance Property "InstanceMetadataServiceConfiguration" NotebookInstance where
  type PropertyType "InstanceMetadataServiceConfiguration" NotebookInstance = InstanceMetadataServiceConfigurationProperty
  set newValue NotebookInstance {..}
    = NotebookInstance
        {instanceMetadataServiceConfiguration = Prelude.pure newValue, ..}
instance Property "InstanceType" NotebookInstance where
  type PropertyType "InstanceType" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {instanceType = newValue, ..}
instance Property "KmsKeyId" NotebookInstance where
  type PropertyType "KmsKeyId" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LifecycleConfigName" NotebookInstance where
  type PropertyType "LifecycleConfigName" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance
        {lifecycleConfigName = Prelude.pure newValue, ..}
instance Property "NotebookInstanceName" NotebookInstance where
  type PropertyType "NotebookInstanceName" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance
        {notebookInstanceName = Prelude.pure newValue, ..}
instance Property "PlatformIdentifier" NotebookInstance where
  type PropertyType "PlatformIdentifier" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {platformIdentifier = Prelude.pure newValue, ..}
instance Property "RoleArn" NotebookInstance where
  type PropertyType "RoleArn" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {roleArn = newValue, ..}
instance Property "RootAccess" NotebookInstance where
  type PropertyType "RootAccess" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {rootAccess = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" NotebookInstance where
  type PropertyType "SecurityGroupIds" NotebookInstance = ValueList Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetId" NotebookInstance where
  type PropertyType "SubnetId" NotebookInstance = Value Prelude.Text
  set newValue NotebookInstance {..}
    = NotebookInstance {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" NotebookInstance where
  type PropertyType "Tags" NotebookInstance = [Tag]
  set newValue NotebookInstance {..}
    = NotebookInstance {tags = Prelude.pure newValue, ..}
instance Property "VolumeSizeInGB" NotebookInstance where
  type PropertyType "VolumeSizeInGB" NotebookInstance = Value Prelude.Integer
  set newValue NotebookInstance {..}
    = NotebookInstance {volumeSizeInGB = Prelude.pure newValue, ..}