module Stratosphere.Glue.MLTransform (
        module Exports, MLTransform(..), mkMLTransform
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.MLTransform.InputRecordTablesProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.MLTransform.TransformEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.MLTransform.TransformParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MLTransform
  = MLTransform {description :: (Prelude.Maybe (Value Prelude.Text)),
                 glueVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 inputRecordTables :: InputRecordTablesProperty,
                 maxCapacity :: (Prelude.Maybe (Value Prelude.Double)),
                 maxRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 numberOfWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
                 role :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe JSON.Object),
                 timeout :: (Prelude.Maybe (Value Prelude.Integer)),
                 transformEncryption :: (Prelude.Maybe TransformEncryptionProperty),
                 transformParameters :: TransformParametersProperty,
                 workerType :: (Prelude.Maybe (Value Prelude.Text))}
mkMLTransform ::
  InputRecordTablesProperty
  -> Value Prelude.Text -> TransformParametersProperty -> MLTransform
mkMLTransform inputRecordTables role transformParameters
  = MLTransform
      {inputRecordTables = inputRecordTables, role = role,
       transformParameters = transformParameters,
       description = Prelude.Nothing, glueVersion = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, maxRetries = Prelude.Nothing,
       name = Prelude.Nothing, numberOfWorkers = Prelude.Nothing,
       tags = Prelude.Nothing, timeout = Prelude.Nothing,
       transformEncryption = Prelude.Nothing,
       workerType = Prelude.Nothing}
instance ToResourceProperties MLTransform where
  toResourceProperties MLTransform {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputRecordTables" JSON..= inputRecordTables,
                            "Role" JSON..= role,
                            "TransformParameters" JSON..= transformParameters]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                               (JSON..=) "MaxRetries" Prelude.<$> maxRetries,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Timeout" Prelude.<$> timeout,
                               (JSON..=) "TransformEncryption" Prelude.<$> transformEncryption,
                               (JSON..=) "WorkerType" Prelude.<$> workerType]))}
instance JSON.ToJSON MLTransform where
  toJSON MLTransform {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputRecordTables" JSON..= inputRecordTables,
               "Role" JSON..= role,
               "TransformParameters" JSON..= transformParameters]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                  (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                  (JSON..=) "MaxRetries" Prelude.<$> maxRetries,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Timeout" Prelude.<$> timeout,
                  (JSON..=) "TransformEncryption" Prelude.<$> transformEncryption,
                  (JSON..=) "WorkerType" Prelude.<$> workerType])))
instance Property "Description" MLTransform where
  type PropertyType "Description" MLTransform = Value Prelude.Text
  set newValue MLTransform {..}
    = MLTransform {description = Prelude.pure newValue, ..}
instance Property "GlueVersion" MLTransform where
  type PropertyType "GlueVersion" MLTransform = Value Prelude.Text
  set newValue MLTransform {..}
    = MLTransform {glueVersion = Prelude.pure newValue, ..}
instance Property "InputRecordTables" MLTransform where
  type PropertyType "InputRecordTables" MLTransform = InputRecordTablesProperty
  set newValue MLTransform {..}
    = MLTransform {inputRecordTables = newValue, ..}
instance Property "MaxCapacity" MLTransform where
  type PropertyType "MaxCapacity" MLTransform = Value Prelude.Double
  set newValue MLTransform {..}
    = MLTransform {maxCapacity = Prelude.pure newValue, ..}
instance Property "MaxRetries" MLTransform where
  type PropertyType "MaxRetries" MLTransform = Value Prelude.Integer
  set newValue MLTransform {..}
    = MLTransform {maxRetries = Prelude.pure newValue, ..}
instance Property "Name" MLTransform where
  type PropertyType "Name" MLTransform = Value Prelude.Text
  set newValue MLTransform {..}
    = MLTransform {name = Prelude.pure newValue, ..}
instance Property "NumberOfWorkers" MLTransform where
  type PropertyType "NumberOfWorkers" MLTransform = Value Prelude.Integer
  set newValue MLTransform {..}
    = MLTransform {numberOfWorkers = Prelude.pure newValue, ..}
instance Property "Role" MLTransform where
  type PropertyType "Role" MLTransform = Value Prelude.Text
  set newValue MLTransform {..} = MLTransform {role = newValue, ..}
instance Property "Tags" MLTransform where
  type PropertyType "Tags" MLTransform = JSON.Object
  set newValue MLTransform {..}
    = MLTransform {tags = Prelude.pure newValue, ..}
instance Property "Timeout" MLTransform where
  type PropertyType "Timeout" MLTransform = Value Prelude.Integer
  set newValue MLTransform {..}
    = MLTransform {timeout = Prelude.pure newValue, ..}
instance Property "TransformEncryption" MLTransform where
  type PropertyType "TransformEncryption" MLTransform = TransformEncryptionProperty
  set newValue MLTransform {..}
    = MLTransform {transformEncryption = Prelude.pure newValue, ..}
instance Property "TransformParameters" MLTransform where
  type PropertyType "TransformParameters" MLTransform = TransformParametersProperty
  set newValue MLTransform {..}
    = MLTransform {transformParameters = newValue, ..}
instance Property "WorkerType" MLTransform where
  type PropertyType "WorkerType" MLTransform = Value Prelude.Text
  set newValue MLTransform {..}
    = MLTransform {workerType = Prelude.pure newValue, ..}