module Stratosphere.DMS.Endpoint.KinesisSettingsProperty (
        KinesisSettingsProperty(..), mkKinesisSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisSettingsProperty
  = KinesisSettingsProperty {includeControlDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                             includeNullAndEmpty :: (Prelude.Maybe (Value Prelude.Bool)),
                             includePartitionValue :: (Prelude.Maybe (Value Prelude.Bool)),
                             includeTableAlterOperations :: (Prelude.Maybe (Value Prelude.Bool)),
                             includeTransactionDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                             messageFormat :: (Prelude.Maybe (Value Prelude.Text)),
                             noHexPrefix :: (Prelude.Maybe (Value Prelude.Bool)),
                             partitionIncludeSchemaTable :: (Prelude.Maybe (Value Prelude.Bool)),
                             serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             streamArn :: (Prelude.Maybe (Value Prelude.Text))}
mkKinesisSettingsProperty :: KinesisSettingsProperty
mkKinesisSettingsProperty
  = KinesisSettingsProperty
      {includeControlDetails = Prelude.Nothing,
       includeNullAndEmpty = Prelude.Nothing,
       includePartitionValue = Prelude.Nothing,
       includeTableAlterOperations = Prelude.Nothing,
       includeTransactionDetails = Prelude.Nothing,
       messageFormat = Prelude.Nothing, noHexPrefix = Prelude.Nothing,
       partitionIncludeSchemaTable = Prelude.Nothing,
       serviceAccessRoleArn = Prelude.Nothing,
       streamArn = Prelude.Nothing}
instance ToResourceProperties KinesisSettingsProperty where
  toResourceProperties KinesisSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.KinesisSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeControlDetails"
                              Prelude.<$> includeControlDetails,
                            (JSON..=) "IncludeNullAndEmpty" Prelude.<$> includeNullAndEmpty,
                            (JSON..=) "IncludePartitionValue"
                              Prelude.<$> includePartitionValue,
                            (JSON..=) "IncludeTableAlterOperations"
                              Prelude.<$> includeTableAlterOperations,
                            (JSON..=) "IncludeTransactionDetails"
                              Prelude.<$> includeTransactionDetails,
                            (JSON..=) "MessageFormat" Prelude.<$> messageFormat,
                            (JSON..=) "NoHexPrefix" Prelude.<$> noHexPrefix,
                            (JSON..=) "PartitionIncludeSchemaTable"
                              Prelude.<$> partitionIncludeSchemaTable,
                            (JSON..=) "ServiceAccessRoleArn" Prelude.<$> serviceAccessRoleArn,
                            (JSON..=) "StreamArn" Prelude.<$> streamArn])}
instance JSON.ToJSON KinesisSettingsProperty where
  toJSON KinesisSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeControlDetails"
                 Prelude.<$> includeControlDetails,
               (JSON..=) "IncludeNullAndEmpty" Prelude.<$> includeNullAndEmpty,
               (JSON..=) "IncludePartitionValue"
                 Prelude.<$> includePartitionValue,
               (JSON..=) "IncludeTableAlterOperations"
                 Prelude.<$> includeTableAlterOperations,
               (JSON..=) "IncludeTransactionDetails"
                 Prelude.<$> includeTransactionDetails,
               (JSON..=) "MessageFormat" Prelude.<$> messageFormat,
               (JSON..=) "NoHexPrefix" Prelude.<$> noHexPrefix,
               (JSON..=) "PartitionIncludeSchemaTable"
                 Prelude.<$> partitionIncludeSchemaTable,
               (JSON..=) "ServiceAccessRoleArn" Prelude.<$> serviceAccessRoleArn,
               (JSON..=) "StreamArn" Prelude.<$> streamArn]))
instance Property "IncludeControlDetails" KinesisSettingsProperty where
  type PropertyType "IncludeControlDetails" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {includeControlDetails = Prelude.pure newValue, ..}
instance Property "IncludeNullAndEmpty" KinesisSettingsProperty where
  type PropertyType "IncludeNullAndEmpty" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {includeNullAndEmpty = Prelude.pure newValue, ..}
instance Property "IncludePartitionValue" KinesisSettingsProperty where
  type PropertyType "IncludePartitionValue" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {includePartitionValue = Prelude.pure newValue, ..}
instance Property "IncludeTableAlterOperations" KinesisSettingsProperty where
  type PropertyType "IncludeTableAlterOperations" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {includeTableAlterOperations = Prelude.pure newValue, ..}
instance Property "IncludeTransactionDetails" KinesisSettingsProperty where
  type PropertyType "IncludeTransactionDetails" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {includeTransactionDetails = Prelude.pure newValue, ..}
instance Property "MessageFormat" KinesisSettingsProperty where
  type PropertyType "MessageFormat" KinesisSettingsProperty = Value Prelude.Text
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {messageFormat = Prelude.pure newValue, ..}
instance Property "NoHexPrefix" KinesisSettingsProperty where
  type PropertyType "NoHexPrefix" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty {noHexPrefix = Prelude.pure newValue, ..}
instance Property "PartitionIncludeSchemaTable" KinesisSettingsProperty where
  type PropertyType "PartitionIncludeSchemaTable" KinesisSettingsProperty = Value Prelude.Bool
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {partitionIncludeSchemaTable = Prelude.pure newValue, ..}
instance Property "ServiceAccessRoleArn" KinesisSettingsProperty where
  type PropertyType "ServiceAccessRoleArn" KinesisSettingsProperty = Value Prelude.Text
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}
instance Property "StreamArn" KinesisSettingsProperty where
  type PropertyType "StreamArn" KinesisSettingsProperty = Value Prelude.Text
  set newValue KinesisSettingsProperty {..}
    = KinesisSettingsProperty {streamArn = Prelude.pure newValue, ..}