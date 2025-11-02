module Stratosphere.Synthetics.Canary (
        module Exports, Canary(..), mkCanary
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.ArtifactConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.CodeProperty as Exports
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.RunConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.VPCConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.VisualReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Canary
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html>
    Canary {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-artifactconfig>
            artifactConfig :: (Prelude.Maybe ArtifactConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-artifacts3location>
            artifactS3Location :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-code>
            code :: CodeProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-executionrolearn>
            executionRoleArn :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-failureretentionperiod>
            failureRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-provisionedresourcecleanup>
            provisionedResourceCleanup :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-resourcestoreplicatetags>
            resourcesToReplicateTags :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-runconfig>
            runConfig :: (Prelude.Maybe RunConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-runtimeversion>
            runtimeVersion :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-schedule>
            schedule :: ScheduleProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-startcanaryaftercreation>
            startCanaryAfterCreation :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-successretentionperiod>
            successRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-vpcconfig>
            vPCConfig :: (Prelude.Maybe VPCConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-visualreference>
            visualReference :: (Prelude.Maybe VisualReferenceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCanary ::
  Value Prelude.Text
  -> CodeProperty
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> ScheduleProperty -> Canary
mkCanary
  artifactS3Location
  code
  executionRoleArn
  name
  runtimeVersion
  schedule
  = Canary
      {haddock_workaround_ = (), artifactS3Location = artifactS3Location,
       code = code, executionRoleArn = executionRoleArn, name = name,
       runtimeVersion = runtimeVersion, schedule = schedule,
       artifactConfig = Prelude.Nothing,
       failureRetentionPeriod = Prelude.Nothing,
       provisionedResourceCleanup = Prelude.Nothing,
       resourcesToReplicateTags = Prelude.Nothing,
       runConfig = Prelude.Nothing,
       startCanaryAfterCreation = Prelude.Nothing,
       successRetentionPeriod = Prelude.Nothing, tags = Prelude.Nothing,
       vPCConfig = Prelude.Nothing, visualReference = Prelude.Nothing}
instance ToResourceProperties Canary where
  toResourceProperties Canary {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ArtifactS3Location" JSON..= artifactS3Location,
                            "Code" JSON..= code, "ExecutionRoleArn" JSON..= executionRoleArn,
                            "Name" JSON..= name, "RuntimeVersion" JSON..= runtimeVersion,
                            "Schedule" JSON..= schedule]
                           (Prelude.catMaybes
                              [(JSON..=) "ArtifactConfig" Prelude.<$> artifactConfig,
                               (JSON..=) "FailureRetentionPeriod"
                                 Prelude.<$> failureRetentionPeriod,
                               (JSON..=) "ProvisionedResourceCleanup"
                                 Prelude.<$> provisionedResourceCleanup,
                               (JSON..=) "ResourcesToReplicateTags"
                                 Prelude.<$> resourcesToReplicateTags,
                               (JSON..=) "RunConfig" Prelude.<$> runConfig,
                               (JSON..=) "StartCanaryAfterCreation"
                                 Prelude.<$> startCanaryAfterCreation,
                               (JSON..=) "SuccessRetentionPeriod"
                                 Prelude.<$> successRetentionPeriod,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VPCConfig" Prelude.<$> vPCConfig,
                               (JSON..=) "VisualReference" Prelude.<$> visualReference]))}
instance JSON.ToJSON Canary where
  toJSON Canary {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ArtifactS3Location" JSON..= artifactS3Location,
               "Code" JSON..= code, "ExecutionRoleArn" JSON..= executionRoleArn,
               "Name" JSON..= name, "RuntimeVersion" JSON..= runtimeVersion,
               "Schedule" JSON..= schedule]
              (Prelude.catMaybes
                 [(JSON..=) "ArtifactConfig" Prelude.<$> artifactConfig,
                  (JSON..=) "FailureRetentionPeriod"
                    Prelude.<$> failureRetentionPeriod,
                  (JSON..=) "ProvisionedResourceCleanup"
                    Prelude.<$> provisionedResourceCleanup,
                  (JSON..=) "ResourcesToReplicateTags"
                    Prelude.<$> resourcesToReplicateTags,
                  (JSON..=) "RunConfig" Prelude.<$> runConfig,
                  (JSON..=) "StartCanaryAfterCreation"
                    Prelude.<$> startCanaryAfterCreation,
                  (JSON..=) "SuccessRetentionPeriod"
                    Prelude.<$> successRetentionPeriod,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VPCConfig" Prelude.<$> vPCConfig,
                  (JSON..=) "VisualReference" Prelude.<$> visualReference])))
instance Property "ArtifactConfig" Canary where
  type PropertyType "ArtifactConfig" Canary = ArtifactConfigProperty
  set newValue Canary {..}
    = Canary {artifactConfig = Prelude.pure newValue, ..}
instance Property "ArtifactS3Location" Canary where
  type PropertyType "ArtifactS3Location" Canary = Value Prelude.Text
  set newValue Canary {..}
    = Canary {artifactS3Location = newValue, ..}
instance Property "Code" Canary where
  type PropertyType "Code" Canary = CodeProperty
  set newValue Canary {..} = Canary {code = newValue, ..}
instance Property "ExecutionRoleArn" Canary where
  type PropertyType "ExecutionRoleArn" Canary = Value Prelude.Text
  set newValue Canary {..} = Canary {executionRoleArn = newValue, ..}
instance Property "FailureRetentionPeriod" Canary where
  type PropertyType "FailureRetentionPeriod" Canary = Value Prelude.Integer
  set newValue Canary {..}
    = Canary {failureRetentionPeriod = Prelude.pure newValue, ..}
instance Property "Name" Canary where
  type PropertyType "Name" Canary = Value Prelude.Text
  set newValue Canary {..} = Canary {name = newValue, ..}
instance Property "ProvisionedResourceCleanup" Canary where
  type PropertyType "ProvisionedResourceCleanup" Canary = Value Prelude.Text
  set newValue Canary {..}
    = Canary {provisionedResourceCleanup = Prelude.pure newValue, ..}
instance Property "ResourcesToReplicateTags" Canary where
  type PropertyType "ResourcesToReplicateTags" Canary = ValueList Prelude.Text
  set newValue Canary {..}
    = Canary {resourcesToReplicateTags = Prelude.pure newValue, ..}
instance Property "RunConfig" Canary where
  type PropertyType "RunConfig" Canary = RunConfigProperty
  set newValue Canary {..}
    = Canary {runConfig = Prelude.pure newValue, ..}
instance Property "RuntimeVersion" Canary where
  type PropertyType "RuntimeVersion" Canary = Value Prelude.Text
  set newValue Canary {..} = Canary {runtimeVersion = newValue, ..}
instance Property "Schedule" Canary where
  type PropertyType "Schedule" Canary = ScheduleProperty
  set newValue Canary {..} = Canary {schedule = newValue, ..}
instance Property "StartCanaryAfterCreation" Canary where
  type PropertyType "StartCanaryAfterCreation" Canary = Value Prelude.Bool
  set newValue Canary {..}
    = Canary {startCanaryAfterCreation = Prelude.pure newValue, ..}
instance Property "SuccessRetentionPeriod" Canary where
  type PropertyType "SuccessRetentionPeriod" Canary = Value Prelude.Integer
  set newValue Canary {..}
    = Canary {successRetentionPeriod = Prelude.pure newValue, ..}
instance Property "Tags" Canary where
  type PropertyType "Tags" Canary = [Tag]
  set newValue Canary {..}
    = Canary {tags = Prelude.pure newValue, ..}
instance Property "VPCConfig" Canary where
  type PropertyType "VPCConfig" Canary = VPCConfigProperty
  set newValue Canary {..}
    = Canary {vPCConfig = Prelude.pure newValue, ..}
instance Property "VisualReference" Canary where
  type PropertyType "VisualReference" Canary = VisualReferenceProperty
  set newValue Canary {..}
    = Canary {visualReference = Prelude.pure newValue, ..}