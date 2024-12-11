module Stratosphere.FIS.ExperimentTemplate (
        module Exports, ExperimentTemplate(..), mkExperimentTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateActionProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateExperimentOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateExperimentReportConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateLogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateStopConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplate
  = ExperimentTemplate {actions :: (Prelude.Maybe (Prelude.Map Prelude.Text ExperimentTemplateActionProperty)),
                        description :: (Value Prelude.Text),
                        experimentOptions :: (Prelude.Maybe ExperimentTemplateExperimentOptionsProperty),
                        experimentReportConfiguration :: (Prelude.Maybe ExperimentTemplateExperimentReportConfigurationProperty),
                        logConfiguration :: (Prelude.Maybe ExperimentTemplateLogConfigurationProperty),
                        roleArn :: (Value Prelude.Text),
                        stopConditions :: [ExperimentTemplateStopConditionProperty],
                        tags :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                        targets :: (Prelude.Map Prelude.Text ExperimentTemplateTargetProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplate ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [ExperimentTemplateStopConditionProperty]
        -> Prelude.Map Prelude.Text (Value Prelude.Text)
           -> Prelude.Map Prelude.Text ExperimentTemplateTargetProperty
              -> ExperimentTemplate
mkExperimentTemplate
  description
  roleArn
  stopConditions
  tags
  targets
  = ExperimentTemplate
      {description = description, roleArn = roleArn,
       stopConditions = stopConditions, tags = tags, targets = targets,
       actions = Prelude.Nothing, experimentOptions = Prelude.Nothing,
       experimentReportConfiguration = Prelude.Nothing,
       logConfiguration = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplate where
  toResourceProperties ExperimentTemplate {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "RoleArn" JSON..= roleArn,
                            "StopConditions" JSON..= stopConditions, "Tags" JSON..= tags,
                            "Targets" JSON..= targets]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ExperimentOptions" Prelude.<$> experimentOptions,
                               (JSON..=) "ExperimentReportConfiguration"
                                 Prelude.<$> experimentReportConfiguration,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration]))}
instance JSON.ToJSON ExperimentTemplate where
  toJSON ExperimentTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "RoleArn" JSON..= roleArn,
               "StopConditions" JSON..= stopConditions, "Tags" JSON..= tags,
               "Targets" JSON..= targets]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ExperimentOptions" Prelude.<$> experimentOptions,
                  (JSON..=) "ExperimentReportConfiguration"
                    Prelude.<$> experimentReportConfiguration,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration])))
instance Property "Actions" ExperimentTemplate where
  type PropertyType "Actions" ExperimentTemplate = Prelude.Map Prelude.Text ExperimentTemplateActionProperty
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {actions = Prelude.pure newValue, ..}
instance Property "Description" ExperimentTemplate where
  type PropertyType "Description" ExperimentTemplate = Value Prelude.Text
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {description = newValue, ..}
instance Property "ExperimentOptions" ExperimentTemplate where
  type PropertyType "ExperimentOptions" ExperimentTemplate = ExperimentTemplateExperimentOptionsProperty
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate
        {experimentOptions = Prelude.pure newValue, ..}
instance Property "ExperimentReportConfiguration" ExperimentTemplate where
  type PropertyType "ExperimentReportConfiguration" ExperimentTemplate = ExperimentTemplateExperimentReportConfigurationProperty
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate
        {experimentReportConfiguration = Prelude.pure newValue, ..}
instance Property "LogConfiguration" ExperimentTemplate where
  type PropertyType "LogConfiguration" ExperimentTemplate = ExperimentTemplateLogConfigurationProperty
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {logConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" ExperimentTemplate where
  type PropertyType "RoleArn" ExperimentTemplate = Value Prelude.Text
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {roleArn = newValue, ..}
instance Property "StopConditions" ExperimentTemplate where
  type PropertyType "StopConditions" ExperimentTemplate = [ExperimentTemplateStopConditionProperty]
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {stopConditions = newValue, ..}
instance Property "Tags" ExperimentTemplate where
  type PropertyType "Tags" ExperimentTemplate = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {tags = newValue, ..}
instance Property "Targets" ExperimentTemplate where
  type PropertyType "Targets" ExperimentTemplate = Prelude.Map Prelude.Text ExperimentTemplateTargetProperty
  set newValue ExperimentTemplate {..}
    = ExperimentTemplate {targets = newValue, ..}