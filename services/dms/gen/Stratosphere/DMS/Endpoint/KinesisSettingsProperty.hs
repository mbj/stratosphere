module Stratosphere.DMS.Endpoint.KinesisSettingsProperty (
        KinesisSettingsProperty(..), mkKinesisSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html>
    KinesisSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-includecontroldetails>
                             includeControlDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-includenullandempty>
                             includeNullAndEmpty :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-includepartitionvalue>
                             includePartitionValue :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-includetablealteroperations>
                             includeTableAlterOperations :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-includetransactiondetails>
                             includeTransactionDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-messageformat>
                             messageFormat :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-nohexprefix>
                             noHexPrefix :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-partitionincludeschematable>
                             partitionIncludeSchemaTable :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-serviceaccessrolearn>
                             serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-kinesissettings.html#cfn-dms-endpoint-kinesissettings-streamarn>
                             streamArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisSettingsProperty :: KinesisSettingsProperty
mkKinesisSettingsProperty
  = KinesisSettingsProperty
      {haddock_workaround_ = (), includeControlDetails = Prelude.Nothing,
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