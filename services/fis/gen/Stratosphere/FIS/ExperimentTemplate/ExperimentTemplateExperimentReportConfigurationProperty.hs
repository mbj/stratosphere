module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateExperimentReportConfigurationProperty (
        module Exports,
        ExperimentTemplateExperimentReportConfigurationProperty(..),
        mkExperimentTemplateExperimentReportConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.DataSourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.OutputsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateExperimentReportConfigurationProperty
  = ExperimentTemplateExperimentReportConfigurationProperty {dataSources :: DataSourcesProperty,
                                                             outputs :: OutputsProperty,
                                                             postExperimentDuration :: (Prelude.Maybe (Value Prelude.Text)),
                                                             preExperimentDuration :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateExperimentReportConfigurationProperty ::
  DataSourcesProperty
  -> OutputsProperty
     -> ExperimentTemplateExperimentReportConfigurationProperty
mkExperimentTemplateExperimentReportConfigurationProperty
  dataSources
  outputs
  = ExperimentTemplateExperimentReportConfigurationProperty
      {dataSources = dataSources, outputs = outputs,
       postExperimentDuration = Prelude.Nothing,
       preExperimentDuration = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateExperimentReportConfigurationProperty where
  toResourceProperties
    ExperimentTemplateExperimentReportConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateExperimentReportConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSources" JSON..= dataSources, "Outputs" JSON..= outputs]
                           (Prelude.catMaybes
                              [(JSON..=) "PostExperimentDuration"
                                 Prelude.<$> postExperimentDuration,
                               (JSON..=) "PreExperimentDuration"
                                 Prelude.<$> preExperimentDuration]))}
instance JSON.ToJSON ExperimentTemplateExperimentReportConfigurationProperty where
  toJSON ExperimentTemplateExperimentReportConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSources" JSON..= dataSources, "Outputs" JSON..= outputs]
              (Prelude.catMaybes
                 [(JSON..=) "PostExperimentDuration"
                    Prelude.<$> postExperimentDuration,
                  (JSON..=) "PreExperimentDuration"
                    Prelude.<$> preExperimentDuration])))
instance Property "DataSources" ExperimentTemplateExperimentReportConfigurationProperty where
  type PropertyType "DataSources" ExperimentTemplateExperimentReportConfigurationProperty = DataSourcesProperty
  set
    newValue
    ExperimentTemplateExperimentReportConfigurationProperty {..}
    = ExperimentTemplateExperimentReportConfigurationProperty
        {dataSources = newValue, ..}
instance Property "Outputs" ExperimentTemplateExperimentReportConfigurationProperty where
  type PropertyType "Outputs" ExperimentTemplateExperimentReportConfigurationProperty = OutputsProperty
  set
    newValue
    ExperimentTemplateExperimentReportConfigurationProperty {..}
    = ExperimentTemplateExperimentReportConfigurationProperty
        {outputs = newValue, ..}
instance Property "PostExperimentDuration" ExperimentTemplateExperimentReportConfigurationProperty where
  type PropertyType "PostExperimentDuration" ExperimentTemplateExperimentReportConfigurationProperty = Value Prelude.Text
  set
    newValue
    ExperimentTemplateExperimentReportConfigurationProperty {..}
    = ExperimentTemplateExperimentReportConfigurationProperty
        {postExperimentDuration = Prelude.pure newValue, ..}
instance Property "PreExperimentDuration" ExperimentTemplateExperimentReportConfigurationProperty where
  type PropertyType "PreExperimentDuration" ExperimentTemplateExperimentReportConfigurationProperty = Value Prelude.Text
  set
    newValue
    ExperimentTemplateExperimentReportConfigurationProperty {..}
    = ExperimentTemplateExperimentReportConfigurationProperty
        {preExperimentDuration = Prelude.pure newValue, ..}