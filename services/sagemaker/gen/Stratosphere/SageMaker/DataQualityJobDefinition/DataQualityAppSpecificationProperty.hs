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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html>
    DataQualityAppSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityappspecification-containerarguments>
                                         containerArguments :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityappspecification-containerentrypoint>
                                         containerEntrypoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityappspecification-environment>
                                         environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityappspecification-imageuri>
                                         imageUri :: (Value Prelude.Text),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityappspecification-postanalyticsprocessorsourceuri>
                                         postAnalyticsProcessorSourceUri :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-dataqualityappspecification.html#cfn-sagemaker-dataqualityjobdefinition-dataqualityappspecification-recordpreprocessorsourceuri>
                                         recordPreprocessorSourceUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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