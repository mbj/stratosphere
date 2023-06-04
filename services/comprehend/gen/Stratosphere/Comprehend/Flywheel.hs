module Stratosphere.Comprehend.Flywheel (
        module Exports, Flywheel(..), mkFlywheel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Comprehend.Flywheel.DataSecurityConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Comprehend.Flywheel.TaskConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Flywheel
  = Flywheel {activeModelArn :: (Prelude.Maybe (Value Prelude.Text)),
              dataAccessRoleArn :: (Value Prelude.Text),
              dataLakeS3Uri :: (Value Prelude.Text),
              dataSecurityConfig :: (Prelude.Maybe DataSecurityConfigProperty),
              flywheelName :: (Value Prelude.Text),
              modelType :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag]),
              taskConfig :: (Prelude.Maybe TaskConfigProperty)}
mkFlywheel ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Flywheel
mkFlywheel dataAccessRoleArn dataLakeS3Uri flywheelName
  = Flywheel
      {dataAccessRoleArn = dataAccessRoleArn,
       dataLakeS3Uri = dataLakeS3Uri, flywheelName = flywheelName,
       activeModelArn = Prelude.Nothing,
       dataSecurityConfig = Prelude.Nothing, modelType = Prelude.Nothing,
       tags = Prelude.Nothing, taskConfig = Prelude.Nothing}
instance ToResourceProperties Flywheel where
  toResourceProperties Flywheel {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::Flywheel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataAccessRoleArn" JSON..= dataAccessRoleArn,
                            "DataLakeS3Uri" JSON..= dataLakeS3Uri,
                            "FlywheelName" JSON..= flywheelName]
                           (Prelude.catMaybes
                              [(JSON..=) "ActiveModelArn" Prelude.<$> activeModelArn,
                               (JSON..=) "DataSecurityConfig" Prelude.<$> dataSecurityConfig,
                               (JSON..=) "ModelType" Prelude.<$> modelType,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TaskConfig" Prelude.<$> taskConfig]))}
instance JSON.ToJSON Flywheel where
  toJSON Flywheel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataAccessRoleArn" JSON..= dataAccessRoleArn,
               "DataLakeS3Uri" JSON..= dataLakeS3Uri,
               "FlywheelName" JSON..= flywheelName]
              (Prelude.catMaybes
                 [(JSON..=) "ActiveModelArn" Prelude.<$> activeModelArn,
                  (JSON..=) "DataSecurityConfig" Prelude.<$> dataSecurityConfig,
                  (JSON..=) "ModelType" Prelude.<$> modelType,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TaskConfig" Prelude.<$> taskConfig])))
instance Property "ActiveModelArn" Flywheel where
  type PropertyType "ActiveModelArn" Flywheel = Value Prelude.Text
  set newValue Flywheel {..}
    = Flywheel {activeModelArn = Prelude.pure newValue, ..}
instance Property "DataAccessRoleArn" Flywheel where
  type PropertyType "DataAccessRoleArn" Flywheel = Value Prelude.Text
  set newValue Flywheel {..}
    = Flywheel {dataAccessRoleArn = newValue, ..}
instance Property "DataLakeS3Uri" Flywheel where
  type PropertyType "DataLakeS3Uri" Flywheel = Value Prelude.Text
  set newValue Flywheel {..}
    = Flywheel {dataLakeS3Uri = newValue, ..}
instance Property "DataSecurityConfig" Flywheel where
  type PropertyType "DataSecurityConfig" Flywheel = DataSecurityConfigProperty
  set newValue Flywheel {..}
    = Flywheel {dataSecurityConfig = Prelude.pure newValue, ..}
instance Property "FlywheelName" Flywheel where
  type PropertyType "FlywheelName" Flywheel = Value Prelude.Text
  set newValue Flywheel {..} = Flywheel {flywheelName = newValue, ..}
instance Property "ModelType" Flywheel where
  type PropertyType "ModelType" Flywheel = Value Prelude.Text
  set newValue Flywheel {..}
    = Flywheel {modelType = Prelude.pure newValue, ..}
instance Property "Tags" Flywheel where
  type PropertyType "Tags" Flywheel = [Tag]
  set newValue Flywheel {..}
    = Flywheel {tags = Prelude.pure newValue, ..}
instance Property "TaskConfig" Flywheel where
  type PropertyType "TaskConfig" Flywheel = TaskConfigProperty
  set newValue Flywheel {..}
    = Flywheel {taskConfig = Prelude.pure newValue, ..}