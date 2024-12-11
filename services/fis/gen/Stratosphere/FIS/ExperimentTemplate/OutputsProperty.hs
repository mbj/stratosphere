module Stratosphere.FIS.ExperimentTemplate.OutputsProperty (
        module Exports, OutputsProperty(..), mkOutputsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.ExperimentReportS3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data OutputsProperty
  = OutputsProperty {experimentReportS3Configuration :: ExperimentReportS3ConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputsProperty ::
  ExperimentReportS3ConfigurationProperty -> OutputsProperty
mkOutputsProperty experimentReportS3Configuration
  = OutputsProperty
      {experimentReportS3Configuration = experimentReportS3Configuration}
instance ToResourceProperties OutputsProperty where
  toResourceProperties OutputsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.Outputs",
         supportsTags = Prelude.False,
         properties = ["ExperimentReportS3Configuration"
                         JSON..= experimentReportS3Configuration]}
instance JSON.ToJSON OutputsProperty where
  toJSON OutputsProperty {..}
    = JSON.object
        ["ExperimentReportS3Configuration"
           JSON..= experimentReportS3Configuration]
instance Property "ExperimentReportS3Configuration" OutputsProperty where
  type PropertyType "ExperimentReportS3Configuration" OutputsProperty = ExperimentReportS3ConfigurationProperty
  set newValue OutputsProperty {}
    = OutputsProperty {experimentReportS3Configuration = newValue, ..}