module Stratosphere.LookoutEquipment.InferenceScheduler (
        module Exports, InferenceScheduler(..), mkInferenceScheduler
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutEquipment.InferenceScheduler.DataInputConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutEquipment.InferenceScheduler.DataOutputConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InferenceScheduler
  = InferenceScheduler {dataDelayOffsetInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                        dataInputConfiguration :: DataInputConfigurationProperty,
                        dataOutputConfiguration :: DataOutputConfigurationProperty,
                        dataUploadFrequency :: (Value Prelude.Text),
                        inferenceSchedulerName :: (Prelude.Maybe (Value Prelude.Text)),
                        modelName :: (Value Prelude.Text),
                        roleArn :: (Value Prelude.Text),
                        serverSideKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag])}
mkInferenceScheduler ::
  DataInputConfigurationProperty
  -> DataOutputConfigurationProperty
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> InferenceScheduler
mkInferenceScheduler
  dataInputConfiguration
  dataOutputConfiguration
  dataUploadFrequency
  modelName
  roleArn
  = InferenceScheduler
      {dataInputConfiguration = dataInputConfiguration,
       dataOutputConfiguration = dataOutputConfiguration,
       dataUploadFrequency = dataUploadFrequency, modelName = modelName,
       roleArn = roleArn, dataDelayOffsetInMinutes = Prelude.Nothing,
       inferenceSchedulerName = Prelude.Nothing,
       serverSideKmsKeyId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties InferenceScheduler where
  toResourceProperties InferenceScheduler {..}
    = ResourceProperties
        {awsType = "AWS::LookoutEquipment::InferenceScheduler",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataInputConfiguration" JSON..= dataInputConfiguration,
                            "DataOutputConfiguration" JSON..= dataOutputConfiguration,
                            "DataUploadFrequency" JSON..= dataUploadFrequency,
                            "ModelName" JSON..= modelName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DataDelayOffsetInMinutes"
                                 Prelude.<$> dataDelayOffsetInMinutes,
                               (JSON..=) "InferenceSchedulerName"
                                 Prelude.<$> inferenceSchedulerName,
                               (JSON..=) "ServerSideKmsKeyId" Prelude.<$> serverSideKmsKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InferenceScheduler where
  toJSON InferenceScheduler {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataInputConfiguration" JSON..= dataInputConfiguration,
               "DataOutputConfiguration" JSON..= dataOutputConfiguration,
               "DataUploadFrequency" JSON..= dataUploadFrequency,
               "ModelName" JSON..= modelName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DataDelayOffsetInMinutes"
                    Prelude.<$> dataDelayOffsetInMinutes,
                  (JSON..=) "InferenceSchedulerName"
                    Prelude.<$> inferenceSchedulerName,
                  (JSON..=) "ServerSideKmsKeyId" Prelude.<$> serverSideKmsKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataDelayOffsetInMinutes" InferenceScheduler where
  type PropertyType "DataDelayOffsetInMinutes" InferenceScheduler = Value Prelude.Integer
  set newValue InferenceScheduler {..}
    = InferenceScheduler
        {dataDelayOffsetInMinutes = Prelude.pure newValue, ..}
instance Property "DataInputConfiguration" InferenceScheduler where
  type PropertyType "DataInputConfiguration" InferenceScheduler = DataInputConfigurationProperty
  set newValue InferenceScheduler {..}
    = InferenceScheduler {dataInputConfiguration = newValue, ..}
instance Property "DataOutputConfiguration" InferenceScheduler where
  type PropertyType "DataOutputConfiguration" InferenceScheduler = DataOutputConfigurationProperty
  set newValue InferenceScheduler {..}
    = InferenceScheduler {dataOutputConfiguration = newValue, ..}
instance Property "DataUploadFrequency" InferenceScheduler where
  type PropertyType "DataUploadFrequency" InferenceScheduler = Value Prelude.Text
  set newValue InferenceScheduler {..}
    = InferenceScheduler {dataUploadFrequency = newValue, ..}
instance Property "InferenceSchedulerName" InferenceScheduler where
  type PropertyType "InferenceSchedulerName" InferenceScheduler = Value Prelude.Text
  set newValue InferenceScheduler {..}
    = InferenceScheduler
        {inferenceSchedulerName = Prelude.pure newValue, ..}
instance Property "ModelName" InferenceScheduler where
  type PropertyType "ModelName" InferenceScheduler = Value Prelude.Text
  set newValue InferenceScheduler {..}
    = InferenceScheduler {modelName = newValue, ..}
instance Property "RoleArn" InferenceScheduler where
  type PropertyType "RoleArn" InferenceScheduler = Value Prelude.Text
  set newValue InferenceScheduler {..}
    = InferenceScheduler {roleArn = newValue, ..}
instance Property "ServerSideKmsKeyId" InferenceScheduler where
  type PropertyType "ServerSideKmsKeyId" InferenceScheduler = Value Prelude.Text
  set newValue InferenceScheduler {..}
    = InferenceScheduler
        {serverSideKmsKeyId = Prelude.pure newValue, ..}
instance Property "Tags" InferenceScheduler where
  type PropertyType "Tags" InferenceScheduler = [Tag]
  set newValue InferenceScheduler {..}
    = InferenceScheduler {tags = Prelude.pure newValue, ..}