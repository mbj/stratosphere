module Stratosphere.SageMaker.ModelQualityJobDefinition.ModelQualityAppSpecificationProperty (
        ModelQualityAppSpecificationProperty(..),
        mkModelQualityAppSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelQualityAppSpecificationProperty
  = ModelQualityAppSpecificationProperty {containerArguments :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          containerEntrypoint :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                          imageUri :: (Value Prelude.Text),
                                          postAnalyticsProcessorSourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                                          problemType :: (Value Prelude.Text),
                                          recordPreprocessorSourceUri :: (Prelude.Maybe (Value Prelude.Text))}
mkModelQualityAppSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ModelQualityAppSpecificationProperty
mkModelQualityAppSpecificationProperty imageUri problemType
  = ModelQualityAppSpecificationProperty
      {imageUri = imageUri, problemType = problemType,
       containerArguments = Prelude.Nothing,
       containerEntrypoint = Prelude.Nothing,
       environment = Prelude.Nothing,
       postAnalyticsProcessorSourceUri = Prelude.Nothing,
       recordPreprocessorSourceUri = Prelude.Nothing}
instance ToResourceProperties ModelQualityAppSpecificationProperty where
  toResourceProperties ModelQualityAppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.ModelQualityAppSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageUri" JSON..= imageUri, "ProblemType" JSON..= problemType]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                               (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "PostAnalyticsProcessorSourceUri"
                                 Prelude.<$> postAnalyticsProcessorSourceUri,
                               (JSON..=) "RecordPreprocessorSourceUri"
                                 Prelude.<$> recordPreprocessorSourceUri]))}
instance JSON.ToJSON ModelQualityAppSpecificationProperty where
  toJSON ModelQualityAppSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageUri" JSON..= imageUri, "ProblemType" JSON..= problemType]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                  (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "PostAnalyticsProcessorSourceUri"
                    Prelude.<$> postAnalyticsProcessorSourceUri,
                  (JSON..=) "RecordPreprocessorSourceUri"
                    Prelude.<$> recordPreprocessorSourceUri])))
instance Property "ContainerArguments" ModelQualityAppSpecificationProperty where
  type PropertyType "ContainerArguments" ModelQualityAppSpecificationProperty = ValueList (Value Prelude.Text)
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty
        {containerArguments = Prelude.pure newValue, ..}
instance Property "ContainerEntrypoint" ModelQualityAppSpecificationProperty where
  type PropertyType "ContainerEntrypoint" ModelQualityAppSpecificationProperty = ValueList (Value Prelude.Text)
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty
        {containerEntrypoint = Prelude.pure newValue, ..}
instance Property "Environment" ModelQualityAppSpecificationProperty where
  type PropertyType "Environment" ModelQualityAppSpecificationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty
        {environment = Prelude.pure newValue, ..}
instance Property "ImageUri" ModelQualityAppSpecificationProperty where
  type PropertyType "ImageUri" ModelQualityAppSpecificationProperty = Value Prelude.Text
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty {imageUri = newValue, ..}
instance Property "PostAnalyticsProcessorSourceUri" ModelQualityAppSpecificationProperty where
  type PropertyType "PostAnalyticsProcessorSourceUri" ModelQualityAppSpecificationProperty = Value Prelude.Text
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty
        {postAnalyticsProcessorSourceUri = Prelude.pure newValue, ..}
instance Property "ProblemType" ModelQualityAppSpecificationProperty where
  type PropertyType "ProblemType" ModelQualityAppSpecificationProperty = Value Prelude.Text
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty {problemType = newValue, ..}
instance Property "RecordPreprocessorSourceUri" ModelQualityAppSpecificationProperty where
  type PropertyType "RecordPreprocessorSourceUri" ModelQualityAppSpecificationProperty = Value Prelude.Text
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty
        {recordPreprocessorSourceUri = Prelude.pure newValue, ..}