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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration.html>
    ExperimentTemplateExperimentReportConfigurationProperty {haddock_workaround_ :: (),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration.html#cfn-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration-datasources>
                                                             dataSources :: (Prelude.Maybe DataSourcesProperty),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration.html#cfn-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration-outputs>
                                                             outputs :: OutputsProperty,
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration.html#cfn-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration-postexperimentduration>
                                                             postExperimentDuration :: (Prelude.Maybe (Value Prelude.Text)),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration.html#cfn-fis-experimenttemplate-experimenttemplateexperimentreportconfiguration-preexperimentduration>
                                                             preExperimentDuration :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateExperimentReportConfigurationProperty ::
  OutputsProperty
  -> ExperimentTemplateExperimentReportConfigurationProperty
mkExperimentTemplateExperimentReportConfigurationProperty outputs
  = ExperimentTemplateExperimentReportConfigurationProperty
      {haddock_workaround_ = (), outputs = outputs,
       dataSources = Prelude.Nothing,
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
                           ["Outputs" JSON..= outputs]
                           (Prelude.catMaybes
                              [(JSON..=) "DataSources" Prelude.<$> dataSources,
                               (JSON..=) "PostExperimentDuration"
                                 Prelude.<$> postExperimentDuration,
                               (JSON..=) "PreExperimentDuration"
                                 Prelude.<$> preExperimentDuration]))}
instance JSON.ToJSON ExperimentTemplateExperimentReportConfigurationProperty where
  toJSON ExperimentTemplateExperimentReportConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Outputs" JSON..= outputs]
              (Prelude.catMaybes
                 [(JSON..=) "DataSources" Prelude.<$> dataSources,
                  (JSON..=) "PostExperimentDuration"
                    Prelude.<$> postExperimentDuration,
                  (JSON..=) "PreExperimentDuration"
                    Prelude.<$> preExperimentDuration])))
instance Property "DataSources" ExperimentTemplateExperimentReportConfigurationProperty where
  type PropertyType "DataSources" ExperimentTemplateExperimentReportConfigurationProperty = DataSourcesProperty
  set
    newValue
    ExperimentTemplateExperimentReportConfigurationProperty {..}
    = ExperimentTemplateExperimentReportConfigurationProperty
        {dataSources = Prelude.pure newValue, ..}
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