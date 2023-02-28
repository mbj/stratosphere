module Stratosphere.SageMaker.DataQualityJobDefinition.DataQualityAppSpecificationProperty (
        DataQualityAppSpecificationProperty(..),
        mkDataQualityAppSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataQualityAppSpecificationProperty
  = DataQualityAppSpecificationProperty {containerArguments :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         containerEntrypoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                         imageUri :: (Value Prelude.Text),
                                         postAnalyticsProcessorSourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                                         recordPreprocessorSourceUri :: (Prelude.Maybe (Value Prelude.Text))}
mkDataQualityAppSpecificationProperty ::
  Value Prelude.Text -> DataQualityAppSpecificationProperty
mkDataQualityAppSpecificationProperty imageUri
  = DataQualityAppSpecificationProperty
      {imageUri = imageUri, containerArguments = Prelude.Nothing,
       containerEntrypoint = Prelude.Nothing,
       environment = Prelude.Nothing,
       postAnalyticsProcessorSourceUri = Prelude.Nothing,
       recordPreprocessorSourceUri = Prelude.Nothing}
instance ToResourceProperties DataQualityAppSpecificationProperty where
  toResourceProperties DataQualityAppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.DataQualityAppSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageUri" JSON..= imageUri]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                               (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "PostAnalyticsProcessorSourceUri"
                                 Prelude.<$> postAnalyticsProcessorSourceUri,
                               (JSON..=) "RecordPreprocessorSourceUri"
                                 Prelude.<$> recordPreprocessorSourceUri]))}
instance JSON.ToJSON DataQualityAppSpecificationProperty where
  toJSON DataQualityAppSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageUri" JSON..= imageUri]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                  (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "PostAnalyticsProcessorSourceUri"
                    Prelude.<$> postAnalyticsProcessorSourceUri,
                  (JSON..=) "RecordPreprocessorSourceUri"
                    Prelude.<$> recordPreprocessorSourceUri])))
instance Property "ContainerArguments" DataQualityAppSpecificationProperty where
  type PropertyType "ContainerArguments" DataQualityAppSpecificationProperty = ValueList Prelude.Text
  set newValue DataQualityAppSpecificationProperty {..}
    = DataQualityAppSpecificationProperty
        {containerArguments = Prelude.pure newValue, ..}
instance Property "ContainerEntrypoint" DataQualityAppSpecificationProperty where
  type PropertyType "ContainerEntrypoint" DataQualityAppSpecificationProperty = ValueList Prelude.Text
  set newValue DataQualityAppSpecificationProperty {..}
    = DataQualityAppSpecificationProperty
        {containerEntrypoint = Prelude.pure newValue, ..}
instance Property "Environment" DataQualityAppSpecificationProperty where
  type PropertyType "Environment" DataQualityAppSpecificationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DataQualityAppSpecificationProperty {..}
    = DataQualityAppSpecificationProperty
        {environment = Prelude.pure newValue, ..}
instance Property "ImageUri" DataQualityAppSpecificationProperty where
  type PropertyType "ImageUri" DataQualityAppSpecificationProperty = Value Prelude.Text
  set newValue DataQualityAppSpecificationProperty {..}
    = DataQualityAppSpecificationProperty {imageUri = newValue, ..}
instance Property "PostAnalyticsProcessorSourceUri" DataQualityAppSpecificationProperty where
  type PropertyType "PostAnalyticsProcessorSourceUri" DataQualityAppSpecificationProperty = Value Prelude.Text
  set newValue DataQualityAppSpecificationProperty {..}
    = DataQualityAppSpecificationProperty
        {postAnalyticsProcessorSourceUri = Prelude.pure newValue, ..}
instance Property "RecordPreprocessorSourceUri" DataQualityAppSpecificationProperty where
  type PropertyType "RecordPreprocessorSourceUri" DataQualityAppSpecificationProperty = Value Prelude.Text
  set newValue DataQualityAppSpecificationProperty {..}
    = DataQualityAppSpecificationProperty
        {recordPreprocessorSourceUri = Prelude.pure newValue, ..}