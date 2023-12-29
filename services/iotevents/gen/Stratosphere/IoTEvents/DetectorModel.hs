module Stratosphere.IoTEvents.DetectorModel (
        module Exports, DetectorModel(..), mkDetectorModel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.DetectorModelDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DetectorModel
  = DetectorModel {detectorModelDefinition :: DetectorModelDefinitionProperty,
                   detectorModelDescription :: (Prelude.Maybe (Value Prelude.Text)),
                   detectorModelName :: (Prelude.Maybe (Value Prelude.Text)),
                   evaluationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                   key :: (Prelude.Maybe (Value Prelude.Text)),
                   roleArn :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDetectorModel ::
  DetectorModelDefinitionProperty
  -> Value Prelude.Text -> DetectorModel
mkDetectorModel detectorModelDefinition roleArn
  = DetectorModel
      {detectorModelDefinition = detectorModelDefinition,
       roleArn = roleArn, detectorModelDescription = Prelude.Nothing,
       detectorModelName = Prelude.Nothing,
       evaluationMethod = Prelude.Nothing, key = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DetectorModel where
  toResourceProperties DetectorModel {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DetectorModelDefinition" JSON..= detectorModelDefinition,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DetectorModelDescription"
                                 Prelude.<$> detectorModelDescription,
                               (JSON..=) "DetectorModelName" Prelude.<$> detectorModelName,
                               (JSON..=) "EvaluationMethod" Prelude.<$> evaluationMethod,
                               (JSON..=) "Key" Prelude.<$> key,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DetectorModel where
  toJSON DetectorModel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DetectorModelDefinition" JSON..= detectorModelDefinition,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DetectorModelDescription"
                    Prelude.<$> detectorModelDescription,
                  (JSON..=) "DetectorModelName" Prelude.<$> detectorModelName,
                  (JSON..=) "EvaluationMethod" Prelude.<$> evaluationMethod,
                  (JSON..=) "Key" Prelude.<$> key,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DetectorModelDefinition" DetectorModel where
  type PropertyType "DetectorModelDefinition" DetectorModel = DetectorModelDefinitionProperty
  set newValue DetectorModel {..}
    = DetectorModel {detectorModelDefinition = newValue, ..}
instance Property "DetectorModelDescription" DetectorModel where
  type PropertyType "DetectorModelDescription" DetectorModel = Value Prelude.Text
  set newValue DetectorModel {..}
    = DetectorModel
        {detectorModelDescription = Prelude.pure newValue, ..}
instance Property "DetectorModelName" DetectorModel where
  type PropertyType "DetectorModelName" DetectorModel = Value Prelude.Text
  set newValue DetectorModel {..}
    = DetectorModel {detectorModelName = Prelude.pure newValue, ..}
instance Property "EvaluationMethod" DetectorModel where
  type PropertyType "EvaluationMethod" DetectorModel = Value Prelude.Text
  set newValue DetectorModel {..}
    = DetectorModel {evaluationMethod = Prelude.pure newValue, ..}
instance Property "Key" DetectorModel where
  type PropertyType "Key" DetectorModel = Value Prelude.Text
  set newValue DetectorModel {..}
    = DetectorModel {key = Prelude.pure newValue, ..}
instance Property "RoleArn" DetectorModel where
  type PropertyType "RoleArn" DetectorModel = Value Prelude.Text
  set newValue DetectorModel {..}
    = DetectorModel {roleArn = newValue, ..}
instance Property "Tags" DetectorModel where
  type PropertyType "Tags" DetectorModel = [Tag]
  set newValue DetectorModel {..}
    = DetectorModel {tags = Prelude.pure newValue, ..}