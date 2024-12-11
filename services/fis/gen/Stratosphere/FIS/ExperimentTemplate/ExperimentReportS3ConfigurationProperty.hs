module Stratosphere.FIS.ExperimentTemplate.ExperimentReportS3ConfigurationProperty (
        ExperimentReportS3ConfigurationProperty(..),
        mkExperimentReportS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentReportS3ConfigurationProperty
  = ExperimentReportS3ConfigurationProperty {bucketName :: (Value Prelude.Text),
                                             prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentReportS3ConfigurationProperty ::
  Value Prelude.Text -> ExperimentReportS3ConfigurationProperty
mkExperimentReportS3ConfigurationProperty bucketName
  = ExperimentReportS3ConfigurationProperty
      {bucketName = bucketName, prefix = Prelude.Nothing}
instance ToResourceProperties ExperimentReportS3ConfigurationProperty where
  toResourceProperties ExperimentReportS3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentReportS3Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON ExperimentReportS3ConfigurationProperty where
  toJSON ExperimentReportS3ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "BucketName" ExperimentReportS3ConfigurationProperty where
  type PropertyType "BucketName" ExperimentReportS3ConfigurationProperty = Value Prelude.Text
  set newValue ExperimentReportS3ConfigurationProperty {..}
    = ExperimentReportS3ConfigurationProperty
        {bucketName = newValue, ..}
instance Property "Prefix" ExperimentReportS3ConfigurationProperty where
  type PropertyType "Prefix" ExperimentReportS3ConfigurationProperty = Value Prelude.Text
  set newValue ExperimentReportS3ConfigurationProperty {..}
    = ExperimentReportS3ConfigurationProperty
        {prefix = Prelude.pure newValue, ..}