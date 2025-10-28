module Stratosphere.IoT.JobTemplate (
        module Exports, JobTemplate(..), mkJobTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.AbortConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.JobExecutionsRetryConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.JobExecutionsRolloutConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.MaintenanceWindowProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.PresignedUrlConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.TimeoutConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data JobTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html>
    JobTemplate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-abortconfig>
                 abortConfig :: (Prelude.Maybe AbortConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-description>
                 description :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-destinationpackageversions>
                 destinationPackageVersions :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-document>
                 document :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-documentsource>
                 documentSource :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-jobarn>
                 jobArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-jobexecutionsretryconfig>
                 jobExecutionsRetryConfig :: (Prelude.Maybe JobExecutionsRetryConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-jobexecutionsrolloutconfig>
                 jobExecutionsRolloutConfig :: (Prelude.Maybe JobExecutionsRolloutConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-jobtemplateid>
                 jobTemplateId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-maintenancewindows>
                 maintenanceWindows :: (Prelude.Maybe [MaintenanceWindowProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-presignedurlconfig>
                 presignedUrlConfig :: (Prelude.Maybe PresignedUrlConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-jobtemplate.html#cfn-iot-jobtemplate-timeoutconfig>
                 timeoutConfig :: (Prelude.Maybe TimeoutConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> JobTemplate
mkJobTemplate description jobTemplateId
  = JobTemplate
      {haddock_workaround_ = (), description = description,
       jobTemplateId = jobTemplateId, abortConfig = Prelude.Nothing,
       destinationPackageVersions = Prelude.Nothing,
       document = Prelude.Nothing, documentSource = Prelude.Nothing,
       jobArn = Prelude.Nothing,
       jobExecutionsRetryConfig = Prelude.Nothing,
       jobExecutionsRolloutConfig = Prelude.Nothing,
       maintenanceWindows = Prelude.Nothing,
       presignedUrlConfig = Prelude.Nothing, tags = Prelude.Nothing,
       timeoutConfig = Prelude.Nothing}
instance ToResourceProperties JobTemplate where
  toResourceProperties JobTemplate {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description,
                            "JobTemplateId" JSON..= jobTemplateId]
                           (Prelude.catMaybes
                              [(JSON..=) "AbortConfig" Prelude.<$> abortConfig,
                               (JSON..=) "DestinationPackageVersions"
                                 Prelude.<$> destinationPackageVersions,
                               (JSON..=) "Document" Prelude.<$> document,
                               (JSON..=) "DocumentSource" Prelude.<$> documentSource,
                               (JSON..=) "JobArn" Prelude.<$> jobArn,
                               (JSON..=) "JobExecutionsRetryConfig"
                                 Prelude.<$> jobExecutionsRetryConfig,
                               (JSON..=) "JobExecutionsRolloutConfig"
                                 Prelude.<$> jobExecutionsRolloutConfig,
                               (JSON..=) "MaintenanceWindows" Prelude.<$> maintenanceWindows,
                               (JSON..=) "PresignedUrlConfig" Prelude.<$> presignedUrlConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TimeoutConfig" Prelude.<$> timeoutConfig]))}
instance JSON.ToJSON JobTemplate where
  toJSON JobTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description,
               "JobTemplateId" JSON..= jobTemplateId]
              (Prelude.catMaybes
                 [(JSON..=) "AbortConfig" Prelude.<$> abortConfig,
                  (JSON..=) "DestinationPackageVersions"
                    Prelude.<$> destinationPackageVersions,
                  (JSON..=) "Document" Prelude.<$> document,
                  (JSON..=) "DocumentSource" Prelude.<$> documentSource,
                  (JSON..=) "JobArn" Prelude.<$> jobArn,
                  (JSON..=) "JobExecutionsRetryConfig"
                    Prelude.<$> jobExecutionsRetryConfig,
                  (JSON..=) "JobExecutionsRolloutConfig"
                    Prelude.<$> jobExecutionsRolloutConfig,
                  (JSON..=) "MaintenanceWindows" Prelude.<$> maintenanceWindows,
                  (JSON..=) "PresignedUrlConfig" Prelude.<$> presignedUrlConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TimeoutConfig" Prelude.<$> timeoutConfig])))
instance Property "AbortConfig" JobTemplate where
  type PropertyType "AbortConfig" JobTemplate = AbortConfigProperty
  set newValue JobTemplate {..}
    = JobTemplate {abortConfig = Prelude.pure newValue, ..}
instance Property "Description" JobTemplate where
  type PropertyType "Description" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {description = newValue, ..}
instance Property "DestinationPackageVersions" JobTemplate where
  type PropertyType "DestinationPackageVersions" JobTemplate = ValueList Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate
        {destinationPackageVersions = Prelude.pure newValue, ..}
instance Property "Document" JobTemplate where
  type PropertyType "Document" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {document = Prelude.pure newValue, ..}
instance Property "DocumentSource" JobTemplate where
  type PropertyType "DocumentSource" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {documentSource = Prelude.pure newValue, ..}
instance Property "JobArn" JobTemplate where
  type PropertyType "JobArn" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {jobArn = Prelude.pure newValue, ..}
instance Property "JobExecutionsRetryConfig" JobTemplate where
  type PropertyType "JobExecutionsRetryConfig" JobTemplate = JobExecutionsRetryConfigProperty
  set newValue JobTemplate {..}
    = JobTemplate
        {jobExecutionsRetryConfig = Prelude.pure newValue, ..}
instance Property "JobExecutionsRolloutConfig" JobTemplate where
  type PropertyType "JobExecutionsRolloutConfig" JobTemplate = JobExecutionsRolloutConfigProperty
  set newValue JobTemplate {..}
    = JobTemplate
        {jobExecutionsRolloutConfig = Prelude.pure newValue, ..}
instance Property "JobTemplateId" JobTemplate where
  type PropertyType "JobTemplateId" JobTemplate = Value Prelude.Text
  set newValue JobTemplate {..}
    = JobTemplate {jobTemplateId = newValue, ..}
instance Property "MaintenanceWindows" JobTemplate where
  type PropertyType "MaintenanceWindows" JobTemplate = [MaintenanceWindowProperty]
  set newValue JobTemplate {..}
    = JobTemplate {maintenanceWindows = Prelude.pure newValue, ..}
instance Property "PresignedUrlConfig" JobTemplate where
  type PropertyType "PresignedUrlConfig" JobTemplate = PresignedUrlConfigProperty
  set newValue JobTemplate {..}
    = JobTemplate {presignedUrlConfig = Prelude.pure newValue, ..}
instance Property "Tags" JobTemplate where
  type PropertyType "Tags" JobTemplate = [Tag]
  set newValue JobTemplate {..}
    = JobTemplate {tags = Prelude.pure newValue, ..}
instance Property "TimeoutConfig" JobTemplate where
  type PropertyType "TimeoutConfig" JobTemplate = TimeoutConfigProperty
  set newValue JobTemplate {..}
    = JobTemplate {timeoutConfig = Prelude.pure newValue, ..}