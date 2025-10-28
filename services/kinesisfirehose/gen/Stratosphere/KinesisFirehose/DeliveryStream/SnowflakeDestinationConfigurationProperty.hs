module Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeDestinationConfigurationProperty (
        module Exports, SnowflakeDestinationConfigurationProperty(..),
        mkSnowflakeDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SecretsManagerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeBufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeRetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeRoleConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeVpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeDestinationConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html>
    SnowflakeDestinationConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-accounturl>
                                               accountUrl :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-bufferinghints>
                                               bufferingHints :: (Prelude.Maybe SnowflakeBufferingHintsProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-cloudwatchloggingoptions>
                                               cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-contentcolumnname>
                                               contentColumnName :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-dataloadingoption>
                                               dataLoadingOption :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-database>
                                               database :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-keypassphrase>
                                               keyPassphrase :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-metadatacolumnname>
                                               metaDataColumnName :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-privatekey>
                                               privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-processingconfiguration>
                                               processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-retryoptions>
                                               retryOptions :: (Prelude.Maybe SnowflakeRetryOptionsProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-rolearn>
                                               roleARN :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-s3backupmode>
                                               s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-s3configuration>
                                               s3Configuration :: S3DestinationConfigurationProperty,
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-schema>
                                               schema :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-secretsmanagerconfiguration>
                                               secretsManagerConfiguration :: (Prelude.Maybe SecretsManagerConfigurationProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-snowflakeroleconfiguration>
                                               snowflakeRoleConfiguration :: (Prelude.Maybe SnowflakeRoleConfigurationProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-snowflakevpcconfiguration>
                                               snowflakeVpcConfiguration :: (Prelude.Maybe SnowflakeVpcConfigurationProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-table>
                                               table :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakedestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration-user>
                                               user :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> S3DestinationConfigurationProperty
           -> Value Prelude.Text
              -> Value Prelude.Text -> SnowflakeDestinationConfigurationProperty
mkSnowflakeDestinationConfigurationProperty
  accountUrl
  database
  roleARN
  s3Configuration
  schema
  table
  = SnowflakeDestinationConfigurationProperty
      {accountUrl = accountUrl, database = database, roleARN = roleARN,
       s3Configuration = s3Configuration, schema = schema, table = table,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       contentColumnName = Prelude.Nothing,
       dataLoadingOption = Prelude.Nothing,
       keyPassphrase = Prelude.Nothing,
       metaDataColumnName = Prelude.Nothing, privateKey = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, s3BackupMode = Prelude.Nothing,
       secretsManagerConfiguration = Prelude.Nothing,
       snowflakeRoleConfiguration = Prelude.Nothing,
       snowflakeVpcConfiguration = Prelude.Nothing,
       user = Prelude.Nothing}
instance ToResourceProperties SnowflakeDestinationConfigurationProperty where
  toResourceProperties SnowflakeDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SnowflakeDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountUrl" JSON..= accountUrl, "Database" JSON..= database,
                            "RoleARN" JSON..= roleARN,
                            "S3Configuration" JSON..= s3Configuration, "Schema" JSON..= schema,
                            "Table" JSON..= table]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "ContentColumnName" Prelude.<$> contentColumnName,
                               (JSON..=) "DataLoadingOption" Prelude.<$> dataLoadingOption,
                               (JSON..=) "KeyPassphrase" Prelude.<$> keyPassphrase,
                               (JSON..=) "MetaDataColumnName" Prelude.<$> metaDataColumnName,
                               (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                               (JSON..=) "SecretsManagerConfiguration"
                                 Prelude.<$> secretsManagerConfiguration,
                               (JSON..=) "SnowflakeRoleConfiguration"
                                 Prelude.<$> snowflakeRoleConfiguration,
                               (JSON..=) "SnowflakeVpcConfiguration"
                                 Prelude.<$> snowflakeVpcConfiguration,
                               (JSON..=) "User" Prelude.<$> user]))}
instance JSON.ToJSON SnowflakeDestinationConfigurationProperty where
  toJSON SnowflakeDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountUrl" JSON..= accountUrl, "Database" JSON..= database,
               "RoleARN" JSON..= roleARN,
               "S3Configuration" JSON..= s3Configuration, "Schema" JSON..= schema,
               "Table" JSON..= table]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "ContentColumnName" Prelude.<$> contentColumnName,
                  (JSON..=) "DataLoadingOption" Prelude.<$> dataLoadingOption,
                  (JSON..=) "KeyPassphrase" Prelude.<$> keyPassphrase,
                  (JSON..=) "MetaDataColumnName" Prelude.<$> metaDataColumnName,
                  (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                  (JSON..=) "SecretsManagerConfiguration"
                    Prelude.<$> secretsManagerConfiguration,
                  (JSON..=) "SnowflakeRoleConfiguration"
                    Prelude.<$> snowflakeRoleConfiguration,
                  (JSON..=) "SnowflakeVpcConfiguration"
                    Prelude.<$> snowflakeVpcConfiguration,
                  (JSON..=) "User" Prelude.<$> user])))
instance Property "AccountUrl" SnowflakeDestinationConfigurationProperty where
  type PropertyType "AccountUrl" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {accountUrl = newValue, ..}
instance Property "BufferingHints" SnowflakeDestinationConfigurationProperty where
  type PropertyType "BufferingHints" SnowflakeDestinationConfigurationProperty = SnowflakeBufferingHintsProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" SnowflakeDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" SnowflakeDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "ContentColumnName" SnowflakeDestinationConfigurationProperty where
  type PropertyType "ContentColumnName" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {contentColumnName = Prelude.pure newValue, ..}
instance Property "DataLoadingOption" SnowflakeDestinationConfigurationProperty where
  type PropertyType "DataLoadingOption" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {dataLoadingOption = Prelude.pure newValue, ..}
instance Property "Database" SnowflakeDestinationConfigurationProperty where
  type PropertyType "Database" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {database = newValue, ..}
instance Property "KeyPassphrase" SnowflakeDestinationConfigurationProperty where
  type PropertyType "KeyPassphrase" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {keyPassphrase = Prelude.pure newValue, ..}
instance Property "MetaDataColumnName" SnowflakeDestinationConfigurationProperty where
  type PropertyType "MetaDataColumnName" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {metaDataColumnName = Prelude.pure newValue, ..}
instance Property "PrivateKey" SnowflakeDestinationConfigurationProperty where
  type PropertyType "PrivateKey" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {privateKey = Prelude.pure newValue, ..}
instance Property "ProcessingConfiguration" SnowflakeDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" SnowflakeDestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" SnowflakeDestinationConfigurationProperty where
  type PropertyType "RetryOptions" SnowflakeDestinationConfigurationProperty = SnowflakeRetryOptionsProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" SnowflakeDestinationConfigurationProperty where
  type PropertyType "RoleARN" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {roleARN = newValue, ..}
instance Property "S3BackupMode" SnowflakeDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" SnowflakeDestinationConfigurationProperty where
  type PropertyType "S3Configuration" SnowflakeDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "Schema" SnowflakeDestinationConfigurationProperty where
  type PropertyType "Schema" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty {schema = newValue, ..}
instance Property "SecretsManagerConfiguration" SnowflakeDestinationConfigurationProperty where
  type PropertyType "SecretsManagerConfiguration" SnowflakeDestinationConfigurationProperty = SecretsManagerConfigurationProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {secretsManagerConfiguration = Prelude.pure newValue, ..}
instance Property "SnowflakeRoleConfiguration" SnowflakeDestinationConfigurationProperty where
  type PropertyType "SnowflakeRoleConfiguration" SnowflakeDestinationConfigurationProperty = SnowflakeRoleConfigurationProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {snowflakeRoleConfiguration = Prelude.pure newValue, ..}
instance Property "SnowflakeVpcConfiguration" SnowflakeDestinationConfigurationProperty where
  type PropertyType "SnowflakeVpcConfiguration" SnowflakeDestinationConfigurationProperty = SnowflakeVpcConfigurationProperty
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {snowflakeVpcConfiguration = Prelude.pure newValue, ..}
instance Property "Table" SnowflakeDestinationConfigurationProperty where
  type PropertyType "Table" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty {table = newValue, ..}
instance Property "User" SnowflakeDestinationConfigurationProperty where
  type PropertyType "User" SnowflakeDestinationConfigurationProperty = Value Prelude.Text
  set newValue SnowflakeDestinationConfigurationProperty {..}
    = SnowflakeDestinationConfigurationProperty
        {user = Prelude.pure newValue, ..}