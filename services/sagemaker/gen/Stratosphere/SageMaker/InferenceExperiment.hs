module Stratosphere.SageMaker.InferenceExperiment (
        module Exports, InferenceExperiment(..), mkInferenceExperiment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.DataStorageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.InferenceExperimentScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.ModelVariantConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.ShadowModeConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InferenceExperiment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html>
    InferenceExperiment {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-datastorageconfig>
                         dataStorageConfig :: (Prelude.Maybe DataStorageConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-desiredstate>
                         desiredState :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-endpointname>
                         endpointName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-kmskey>
                         kmsKey :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-modelvariants>
                         modelVariants :: [ModelVariantConfigProperty],
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-rolearn>
                         roleArn :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-schedule>
                         schedule :: (Prelude.Maybe InferenceExperimentScheduleProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-shadowmodeconfig>
                         shadowModeConfig :: (Prelude.Maybe ShadowModeConfigProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-statusreason>
                         statusReason :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-tags>
                         tags :: (Prelude.Maybe [Tag]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-inferenceexperiment.html#cfn-sagemaker-inferenceexperiment-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceExperiment ::
  Value Prelude.Text
  -> [ModelVariantConfigProperty]
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> InferenceExperiment
mkInferenceExperiment endpointName modelVariants name roleArn type'
  = InferenceExperiment
      {haddock_workaround_ = (), endpointName = endpointName,
       modelVariants = modelVariants, name = name, roleArn = roleArn,
       type' = type', dataStorageConfig = Prelude.Nothing,
       description = Prelude.Nothing, desiredState = Prelude.Nothing,
       kmsKey = Prelude.Nothing, schedule = Prelude.Nothing,
       shadowModeConfig = Prelude.Nothing, statusReason = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties InferenceExperiment where
  toResourceProperties InferenceExperiment {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointName" JSON..= endpointName,
                            "ModelVariants" JSON..= modelVariants, "Name" JSON..= name,
                            "RoleArn" JSON..= roleArn, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DataStorageConfig" Prelude.<$> dataStorageConfig,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DesiredState" Prelude.<$> desiredState,
                               (JSON..=) "KmsKey" Prelude.<$> kmsKey,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "ShadowModeConfig" Prelude.<$> shadowModeConfig,
                               (JSON..=) "StatusReason" Prelude.<$> statusReason,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InferenceExperiment where
  toJSON InferenceExperiment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointName" JSON..= endpointName,
               "ModelVariants" JSON..= modelVariants, "Name" JSON..= name,
               "RoleArn" JSON..= roleArn, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DataStorageConfig" Prelude.<$> dataStorageConfig,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DesiredState" Prelude.<$> desiredState,
                  (JSON..=) "KmsKey" Prelude.<$> kmsKey,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "ShadowModeConfig" Prelude.<$> shadowModeConfig,
                  (JSON..=) "StatusReason" Prelude.<$> statusReason,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataStorageConfig" InferenceExperiment where
  type PropertyType "DataStorageConfig" InferenceExperiment = DataStorageConfigProperty
  set newValue InferenceExperiment {..}
    = InferenceExperiment
        {dataStorageConfig = Prelude.pure newValue, ..}
instance Property "Description" InferenceExperiment where
  type PropertyType "Description" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {description = Prelude.pure newValue, ..}
instance Property "DesiredState" InferenceExperiment where
  type PropertyType "DesiredState" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {desiredState = Prelude.pure newValue, ..}
instance Property "EndpointName" InferenceExperiment where
  type PropertyType "EndpointName" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {endpointName = newValue, ..}
instance Property "KmsKey" InferenceExperiment where
  type PropertyType "KmsKey" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {kmsKey = Prelude.pure newValue, ..}
instance Property "ModelVariants" InferenceExperiment where
  type PropertyType "ModelVariants" InferenceExperiment = [ModelVariantConfigProperty]
  set newValue InferenceExperiment {..}
    = InferenceExperiment {modelVariants = newValue, ..}
instance Property "Name" InferenceExperiment where
  type PropertyType "Name" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {name = newValue, ..}
instance Property "RoleArn" InferenceExperiment where
  type PropertyType "RoleArn" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {roleArn = newValue, ..}
instance Property "Schedule" InferenceExperiment where
  type PropertyType "Schedule" InferenceExperiment = InferenceExperimentScheduleProperty
  set newValue InferenceExperiment {..}
    = InferenceExperiment {schedule = Prelude.pure newValue, ..}
instance Property "ShadowModeConfig" InferenceExperiment where
  type PropertyType "ShadowModeConfig" InferenceExperiment = ShadowModeConfigProperty
  set newValue InferenceExperiment {..}
    = InferenceExperiment
        {shadowModeConfig = Prelude.pure newValue, ..}
instance Property "StatusReason" InferenceExperiment where
  type PropertyType "StatusReason" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {statusReason = Prelude.pure newValue, ..}
instance Property "Tags" InferenceExperiment where
  type PropertyType "Tags" InferenceExperiment = [Tag]
  set newValue InferenceExperiment {..}
    = InferenceExperiment {tags = Prelude.pure newValue, ..}
instance Property "Type" InferenceExperiment where
  type PropertyType "Type" InferenceExperiment = Value Prelude.Text
  set newValue InferenceExperiment {..}
    = InferenceExperiment {type' = newValue, ..}