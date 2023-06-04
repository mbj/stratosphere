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
  = InferenceExperiment {dataStorageConfig :: (Prelude.Maybe DataStorageConfigProperty),
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         desiredState :: (Prelude.Maybe (Value Prelude.Text)),
                         endpointName :: (Value Prelude.Text),
                         kmsKey :: (Prelude.Maybe (Value Prelude.Text)),
                         modelVariants :: [ModelVariantConfigProperty],
                         name :: (Value Prelude.Text),
                         roleArn :: (Value Prelude.Text),
                         schedule :: (Prelude.Maybe InferenceExperimentScheduleProperty),
                         shadowModeConfig :: (Prelude.Maybe ShadowModeConfigProperty),
                         statusReason :: (Prelude.Maybe (Value Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag]),
                         type' :: (Value Prelude.Text)}
mkInferenceExperiment ::
  Value Prelude.Text
  -> [ModelVariantConfigProperty]
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> InferenceExperiment
mkInferenceExperiment endpointName modelVariants name roleArn type'
  = InferenceExperiment
      {endpointName = endpointName, modelVariants = modelVariants,
       name = name, roleArn = roleArn, type' = type',
       dataStorageConfig = Prelude.Nothing, description = Prelude.Nothing,
       desiredState = Prelude.Nothing, kmsKey = Prelude.Nothing,
       schedule = Prelude.Nothing, shadowModeConfig = Prelude.Nothing,
       statusReason = Prelude.Nothing, tags = Prelude.Nothing}
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