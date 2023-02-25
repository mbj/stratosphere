module Stratosphere.EMR.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ApplicationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.AutoTerminationPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.BootstrapActionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.JobFlowInstancesConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.KerberosAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ManagedScalingPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.StepConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = Cluster {additionalInfo :: (Prelude.Maybe JSON.Object),
             applications :: (Prelude.Maybe [ApplicationProperty]),
             autoScalingRole :: (Prelude.Maybe (Value Prelude.Text)),
             autoTerminationPolicy :: (Prelude.Maybe AutoTerminationPolicyProperty),
             bootstrapActions :: (Prelude.Maybe [BootstrapActionConfigProperty]),
             configurations :: (Prelude.Maybe [ConfigurationProperty]),
             customAmiId :: (Prelude.Maybe (Value Prelude.Text)),
             ebsRootVolumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
             instances :: JobFlowInstancesConfigProperty,
             jobFlowRole :: (Value Prelude.Text),
             kerberosAttributes :: (Prelude.Maybe KerberosAttributesProperty),
             logEncryptionKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             logUri :: (Prelude.Maybe (Value Prelude.Text)),
             managedScalingPolicy :: (Prelude.Maybe ManagedScalingPolicyProperty),
             name :: (Value Prelude.Text),
             oSReleaseLabel :: (Prelude.Maybe (Value Prelude.Text)),
             releaseLabel :: (Prelude.Maybe (Value Prelude.Text)),
             scaleDownBehavior :: (Prelude.Maybe (Value Prelude.Text)),
             securityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
             serviceRole :: (Value Prelude.Text),
             stepConcurrencyLevel :: (Prelude.Maybe (Value Prelude.Integer)),
             steps :: (Prelude.Maybe [StepConfigProperty]),
             tags :: (Prelude.Maybe [Tag]),
             visibleToAllUsers :: (Prelude.Maybe (Value Prelude.Bool))}
mkCluster ::
  JobFlowInstancesConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Cluster
mkCluster instances jobFlowRole name serviceRole
  = Cluster
      {instances = instances, jobFlowRole = jobFlowRole, name = name,
       serviceRole = serviceRole, additionalInfo = Prelude.Nothing,
       applications = Prelude.Nothing, autoScalingRole = Prelude.Nothing,
       autoTerminationPolicy = Prelude.Nothing,
       bootstrapActions = Prelude.Nothing,
       configurations = Prelude.Nothing, customAmiId = Prelude.Nothing,
       ebsRootVolumeSize = Prelude.Nothing,
       kerberosAttributes = Prelude.Nothing,
       logEncryptionKmsKeyId = Prelude.Nothing, logUri = Prelude.Nothing,
       managedScalingPolicy = Prelude.Nothing,
       oSReleaseLabel = Prelude.Nothing, releaseLabel = Prelude.Nothing,
       scaleDownBehavior = Prelude.Nothing,
       securityConfiguration = Prelude.Nothing,
       stepConcurrencyLevel = Prelude.Nothing, steps = Prelude.Nothing,
       tags = Prelude.Nothing, visibleToAllUsers = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Instances" JSON..= instances, "JobFlowRole" JSON..= jobFlowRole,
                            "Name" JSON..= name, "ServiceRole" JSON..= serviceRole]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
                               (JSON..=) "Applications" Prelude.<$> applications,
                               (JSON..=) "AutoScalingRole" Prelude.<$> autoScalingRole,
                               (JSON..=) "AutoTerminationPolicy"
                                 Prelude.<$> autoTerminationPolicy,
                               (JSON..=) "BootstrapActions" Prelude.<$> bootstrapActions,
                               (JSON..=) "Configurations" Prelude.<$> configurations,
                               (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                               (JSON..=) "EbsRootVolumeSize" Prelude.<$> ebsRootVolumeSize,
                               (JSON..=) "KerberosAttributes" Prelude.<$> kerberosAttributes,
                               (JSON..=) "LogEncryptionKmsKeyId"
                                 Prelude.<$> logEncryptionKmsKeyId,
                               (JSON..=) "LogUri" Prelude.<$> logUri,
                               (JSON..=) "ManagedScalingPolicy" Prelude.<$> managedScalingPolicy,
                               (JSON..=) "OSReleaseLabel" Prelude.<$> oSReleaseLabel,
                               (JSON..=) "ReleaseLabel" Prelude.<$> releaseLabel,
                               (JSON..=) "ScaleDownBehavior" Prelude.<$> scaleDownBehavior,
                               (JSON..=) "SecurityConfiguration"
                                 Prelude.<$> securityConfiguration,
                               (JSON..=) "StepConcurrencyLevel" Prelude.<$> stepConcurrencyLevel,
                               (JSON..=) "Steps" Prelude.<$> steps,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VisibleToAllUsers" Prelude.<$> visibleToAllUsers]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Instances" JSON..= instances, "JobFlowRole" JSON..= jobFlowRole,
               "Name" JSON..= name, "ServiceRole" JSON..= serviceRole]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
                  (JSON..=) "Applications" Prelude.<$> applications,
                  (JSON..=) "AutoScalingRole" Prelude.<$> autoScalingRole,
                  (JSON..=) "AutoTerminationPolicy"
                    Prelude.<$> autoTerminationPolicy,
                  (JSON..=) "BootstrapActions" Prelude.<$> bootstrapActions,
                  (JSON..=) "Configurations" Prelude.<$> configurations,
                  (JSON..=) "CustomAmiId" Prelude.<$> customAmiId,
                  (JSON..=) "EbsRootVolumeSize" Prelude.<$> ebsRootVolumeSize,
                  (JSON..=) "KerberosAttributes" Prelude.<$> kerberosAttributes,
                  (JSON..=) "LogEncryptionKmsKeyId"
                    Prelude.<$> logEncryptionKmsKeyId,
                  (JSON..=) "LogUri" Prelude.<$> logUri,
                  (JSON..=) "ManagedScalingPolicy" Prelude.<$> managedScalingPolicy,
                  (JSON..=) "OSReleaseLabel" Prelude.<$> oSReleaseLabel,
                  (JSON..=) "ReleaseLabel" Prelude.<$> releaseLabel,
                  (JSON..=) "ScaleDownBehavior" Prelude.<$> scaleDownBehavior,
                  (JSON..=) "SecurityConfiguration"
                    Prelude.<$> securityConfiguration,
                  (JSON..=) "StepConcurrencyLevel" Prelude.<$> stepConcurrencyLevel,
                  (JSON..=) "Steps" Prelude.<$> steps,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VisibleToAllUsers" Prelude.<$> visibleToAllUsers])))
instance Property "AdditionalInfo" Cluster where
  type PropertyType "AdditionalInfo" Cluster = JSON.Object
  set newValue Cluster {..}
    = Cluster {additionalInfo = Prelude.pure newValue, ..}
instance Property "Applications" Cluster where
  type PropertyType "Applications" Cluster = [ApplicationProperty]
  set newValue Cluster {..}
    = Cluster {applications = Prelude.pure newValue, ..}
instance Property "AutoScalingRole" Cluster where
  type PropertyType "AutoScalingRole" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {autoScalingRole = Prelude.pure newValue, ..}
instance Property "AutoTerminationPolicy" Cluster where
  type PropertyType "AutoTerminationPolicy" Cluster = AutoTerminationPolicyProperty
  set newValue Cluster {..}
    = Cluster {autoTerminationPolicy = Prelude.pure newValue, ..}
instance Property "BootstrapActions" Cluster where
  type PropertyType "BootstrapActions" Cluster = [BootstrapActionConfigProperty]
  set newValue Cluster {..}
    = Cluster {bootstrapActions = Prelude.pure newValue, ..}
instance Property "Configurations" Cluster where
  type PropertyType "Configurations" Cluster = [ConfigurationProperty]
  set newValue Cluster {..}
    = Cluster {configurations = Prelude.pure newValue, ..}
instance Property "CustomAmiId" Cluster where
  type PropertyType "CustomAmiId" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {customAmiId = Prelude.pure newValue, ..}
instance Property "EbsRootVolumeSize" Cluster where
  type PropertyType "EbsRootVolumeSize" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {ebsRootVolumeSize = Prelude.pure newValue, ..}
instance Property "Instances" Cluster where
  type PropertyType "Instances" Cluster = JobFlowInstancesConfigProperty
  set newValue Cluster {..} = Cluster {instances = newValue, ..}
instance Property "JobFlowRole" Cluster where
  type PropertyType "JobFlowRole" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {jobFlowRole = newValue, ..}
instance Property "KerberosAttributes" Cluster where
  type PropertyType "KerberosAttributes" Cluster = KerberosAttributesProperty
  set newValue Cluster {..}
    = Cluster {kerberosAttributes = Prelude.pure newValue, ..}
instance Property "LogEncryptionKmsKeyId" Cluster where
  type PropertyType "LogEncryptionKmsKeyId" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {logEncryptionKmsKeyId = Prelude.pure newValue, ..}
instance Property "LogUri" Cluster where
  type PropertyType "LogUri" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {logUri = Prelude.pure newValue, ..}
instance Property "ManagedScalingPolicy" Cluster where
  type PropertyType "ManagedScalingPolicy" Cluster = ManagedScalingPolicyProperty
  set newValue Cluster {..}
    = Cluster {managedScalingPolicy = Prelude.pure newValue, ..}
instance Property "Name" Cluster where
  type PropertyType "Name" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {name = newValue, ..}
instance Property "OSReleaseLabel" Cluster where
  type PropertyType "OSReleaseLabel" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {oSReleaseLabel = Prelude.pure newValue, ..}
instance Property "ReleaseLabel" Cluster where
  type PropertyType "ReleaseLabel" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {releaseLabel = Prelude.pure newValue, ..}
instance Property "ScaleDownBehavior" Cluster where
  type PropertyType "ScaleDownBehavior" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {scaleDownBehavior = Prelude.pure newValue, ..}
instance Property "SecurityConfiguration" Cluster where
  type PropertyType "SecurityConfiguration" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {securityConfiguration = Prelude.pure newValue, ..}
instance Property "ServiceRole" Cluster where
  type PropertyType "ServiceRole" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {serviceRole = newValue, ..}
instance Property "StepConcurrencyLevel" Cluster where
  type PropertyType "StepConcurrencyLevel" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {stepConcurrencyLevel = Prelude.pure newValue, ..}
instance Property "Steps" Cluster where
  type PropertyType "Steps" Cluster = [StepConfigProperty]
  set newValue Cluster {..}
    = Cluster {steps = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "VisibleToAllUsers" Cluster where
  type PropertyType "VisibleToAllUsers" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {visibleToAllUsers = Prelude.pure newValue, ..}