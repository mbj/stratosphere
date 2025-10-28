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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html>
    ModelQualityAppSpecificationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-containerarguments>
                                          containerArguments :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-containerentrypoint>
                                          containerEntrypoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-environment>
                                          environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-imageuri>
                                          imageUri :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-postanalyticsprocessorsourceuri>
                                          postAnalyticsProcessorSourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-problemtype>
                                          problemType :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelqualityjobdefinition-modelqualityappspecification.html#cfn-sagemaker-modelqualityjobdefinition-modelqualityappspecification-recordpreprocessorsourceuri>
                                          recordPreprocessorSourceUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelQualityAppSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ModelQualityAppSpecificationProperty
mkModelQualityAppSpecificationProperty imageUri problemType
  = ModelQualityAppSpecificationProperty
      {haddock_workaround_ = (), imageUri = imageUri,
       problemType = problemType, containerArguments = Prelude.Nothing,
       containerEntrypoint = Prelude.Nothing,
       environment = Prelude.Nothing,
       postAnalyticsProcessorSourceUri = Prelude.Nothing,
       recordPreprocessorSourceUri = Prelude.Nothing}
instance ToResourceProperties ModelQualityAppSpecificationProperty where
  toResourceProperties ModelQualityAppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelQualityJobDefinition.ModelQualityAppSpecification",
         supportsTags = Prelude.False,
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
  type PropertyType "ContainerArguments" ModelQualityAppSpecificationProperty = ValueList Prelude.Text
  set newValue ModelQualityAppSpecificationProperty {..}
    = ModelQualityAppSpecificationProperty
        {containerArguments = Prelude.pure newValue, ..}
instance Property "ContainerEntrypoint" ModelQualityAppSpecificationProperty where
  type PropertyType "ContainerEntrypoint" ModelQualityAppSpecificationProperty = ValueList Prelude.Text
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