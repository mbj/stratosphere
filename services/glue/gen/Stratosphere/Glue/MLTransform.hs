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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html>
    MLTransform {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-glueversion>
                 glueVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-inputrecordtables>
                 inputRecordTables :: InputRecordTablesProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-maxcapacity>
                 maxCapacity :: (Prelude.Maybe (Value Prelude.Double)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-maxretries>
                 maxRetries :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-numberofworkers>
                 numberOfWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-role>
                 role :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-tags>
                 tags :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-timeout>
                 timeout :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-transformencryption>
                 transformEncryption :: (Prelude.Maybe TransformEncryptionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-transformparameters>
                 transformParameters :: TransformParametersProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-workertype>
                 workerType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMLTransform ::
  InputRecordTablesProperty
  -> Value Prelude.Text -> TransformParametersProperty -> MLTransform
mkMLTransform inputRecordTables role transformParameters
  = MLTransform
      {haddock_workaround_ = (), inputRecordTables = inputRecordTables,
       role = role, transformParameters = transformParameters,
       description = Prelude.Nothing, glueVersion = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, maxRetries = Prelude.Nothing,
       name = Prelude.Nothing, numberOfWorkers = Prelude.Nothing,
       tags = Prelude.Nothing, timeout = Prelude.Nothing,
       transformEncryption = Prelude.Nothing,
       workerType = Prelude.Nothing}
instance ToResourceProperties MLTransform where
  toResourceProperties MLTransform {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform", supportsTags = Prelude.True,
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