module Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessDestinationConfigurationProperty (
        module Exports,
        AmazonOpenSearchServerlessDestinationConfigurationProperty(..),
        mkAmazonOpenSearchServerlessDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessBufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessRetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonOpenSearchServerlessDestinationConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html>
    AmazonOpenSearchServerlessDestinationConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-bufferinghints>
                                                                bufferingHints :: (Prelude.Maybe AmazonOpenSearchServerlessBufferingHintsProperty),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-cloudwatchloggingoptions>
                                                                cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-collectionendpoint>
                                                                collectionEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-indexname>
                                                                indexName :: (Value Prelude.Text),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-processingconfiguration>
                                                                processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-retryoptions>
                                                                retryOptions :: (Prelude.Maybe AmazonOpenSearchServerlessRetryOptionsProperty),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-rolearn>
                                                                roleARN :: (Value Prelude.Text),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-s3backupmode>
                                                                s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-s3configuration>
                                                                s3Configuration :: S3DestinationConfigurationProperty,
                                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration-vpcconfiguration>
                                                                vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonOpenSearchServerlessDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> S3DestinationConfigurationProperty
        -> AmazonOpenSearchServerlessDestinationConfigurationProperty
mkAmazonOpenSearchServerlessDestinationConfigurationProperty
  indexName
  roleARN
  s3Configuration
  = AmazonOpenSearchServerlessDestinationConfigurationProperty
      {indexName = indexName, roleARN = roleARN,
       s3Configuration = s3Configuration,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       collectionEndpoint = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, s3BackupMode = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties AmazonOpenSearchServerlessDestinationConfigurationProperty where
  toResourceProperties
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonOpenSearchServerlessDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexName" JSON..= indexName, "RoleARN" JSON..= roleARN,
                            "S3Configuration" JSON..= s3Configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "CollectionEndpoint" Prelude.<$> collectionEndpoint,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON AmazonOpenSearchServerlessDestinationConfigurationProperty where
  toJSON
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexName" JSON..= indexName, "RoleARN" JSON..= roleARN,
               "S3Configuration" JSON..= s3Configuration]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "CollectionEndpoint" Prelude.<$> collectionEndpoint,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "BufferingHints" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "BufferingHints" AmazonOpenSearchServerlessDestinationConfigurationProperty = AmazonOpenSearchServerlessBufferingHintsProperty
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" AmazonOpenSearchServerlessDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "CollectionEndpoint" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "CollectionEndpoint" AmazonOpenSearchServerlessDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {collectionEndpoint = Prelude.pure newValue, ..}
instance Property "IndexName" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "IndexName" AmazonOpenSearchServerlessDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {indexName = newValue, ..}
instance Property "ProcessingConfiguration" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" AmazonOpenSearchServerlessDestinationConfigurationProperty = ProcessingConfigurationProperty
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "RetryOptions" AmazonOpenSearchServerlessDestinationConfigurationProperty = AmazonOpenSearchServerlessRetryOptionsProperty
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "RoleARN" AmazonOpenSearchServerlessDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {roleARN = newValue, ..}
instance Property "S3BackupMode" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" AmazonOpenSearchServerlessDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "S3Configuration" AmazonOpenSearchServerlessDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "VpcConfiguration" AmazonOpenSearchServerlessDestinationConfigurationProperty where
  type PropertyType "VpcConfiguration" AmazonOpenSearchServerlessDestinationConfigurationProperty = VpcConfigurationProperty
  set
    newValue
    AmazonOpenSearchServerlessDestinationConfigurationProperty {..}
    = AmazonOpenSearchServerlessDestinationConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}