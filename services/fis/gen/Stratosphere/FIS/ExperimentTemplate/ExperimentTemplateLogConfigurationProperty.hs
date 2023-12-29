module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateLogConfigurationProperty (
        module Exports, ExperimentTemplateLogConfigurationProperty(..),
        mkExperimentTemplateLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.CloudWatchLogsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.S3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateLogConfigurationProperty
  = ExperimentTemplateLogConfigurationProperty {cloudWatchLogsConfiguration :: (Prelude.Maybe CloudWatchLogsConfigurationProperty),
                                                logSchemaVersion :: (Value Prelude.Integer),
                                                s3Configuration :: (Prelude.Maybe S3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateLogConfigurationProperty ::
  Value Prelude.Integer -> ExperimentTemplateLogConfigurationProperty
mkExperimentTemplateLogConfigurationProperty logSchemaVersion
  = ExperimentTemplateLogConfigurationProperty
      {logSchemaVersion = logSchemaVersion,
       cloudWatchLogsConfiguration = Prelude.Nothing,
       s3Configuration = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateLogConfigurationProperty where
  toResourceProperties
    ExperimentTemplateLogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateLogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogSchemaVersion" JSON..= logSchemaVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchLogsConfiguration"
                                 Prelude.<$> cloudWatchLogsConfiguration,
                               (JSON..=) "S3Configuration" Prelude.<$> s3Configuration]))}
instance JSON.ToJSON ExperimentTemplateLogConfigurationProperty where
  toJSON ExperimentTemplateLogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogSchemaVersion" JSON..= logSchemaVersion]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchLogsConfiguration"
                    Prelude.<$> cloudWatchLogsConfiguration,
                  (JSON..=) "S3Configuration" Prelude.<$> s3Configuration])))
instance Property "CloudWatchLogsConfiguration" ExperimentTemplateLogConfigurationProperty where
  type PropertyType "CloudWatchLogsConfiguration" ExperimentTemplateLogConfigurationProperty = CloudWatchLogsConfigurationProperty
  set newValue ExperimentTemplateLogConfigurationProperty {..}
    = ExperimentTemplateLogConfigurationProperty
        {cloudWatchLogsConfiguration = Prelude.pure newValue, ..}
instance Property "LogSchemaVersion" ExperimentTemplateLogConfigurationProperty where
  type PropertyType "LogSchemaVersion" ExperimentTemplateLogConfigurationProperty = Value Prelude.Integer
  set newValue ExperimentTemplateLogConfigurationProperty {..}
    = ExperimentTemplateLogConfigurationProperty
        {logSchemaVersion = newValue, ..}
instance Property "S3Configuration" ExperimentTemplateLogConfigurationProperty where
  type PropertyType "S3Configuration" ExperimentTemplateLogConfigurationProperty = S3ConfigurationProperty
  set newValue ExperimentTemplateLogConfigurationProperty {..}
    = ExperimentTemplateLogConfigurationProperty
        {s3Configuration = Prelude.pure newValue, ..}