module Stratosphere.EMRServerless.Application.CloudWatchLoggingConfigurationProperty (
        module Exports, CloudWatchLoggingConfigurationProperty(..),
        mkCloudWatchLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.LogTypeMapKeyValuePairProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLoggingConfigurationProperty
  = CloudWatchLoggingConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                            encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                            logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                            logStreamNamePrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                            logTypeMap :: (Prelude.Maybe [LogTypeMapKeyValuePairProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLoggingConfigurationProperty ::
  CloudWatchLoggingConfigurationProperty
mkCloudWatchLoggingConfigurationProperty
  = CloudWatchLoggingConfigurationProperty
      {enabled = Prelude.Nothing, encryptionKeyArn = Prelude.Nothing,
       logGroupName = Prelude.Nothing,
       logStreamNamePrefix = Prelude.Nothing,
       logTypeMap = Prelude.Nothing}
instance ToResourceProperties CloudWatchLoggingConfigurationProperty where
  toResourceProperties CloudWatchLoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.CloudWatchLoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                            (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                            (JSON..=) "LogStreamNamePrefix" Prelude.<$> logStreamNamePrefix,
                            (JSON..=) "LogTypeMap" Prelude.<$> logTypeMap])}
instance JSON.ToJSON CloudWatchLoggingConfigurationProperty where
  toJSON CloudWatchLoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
               (JSON..=) "LogStreamNamePrefix" Prelude.<$> logStreamNamePrefix,
               (JSON..=) "LogTypeMap" Prelude.<$> logTypeMap]))
instance Property "Enabled" CloudWatchLoggingConfigurationProperty where
  type PropertyType "Enabled" CloudWatchLoggingConfigurationProperty = Value Prelude.Bool
  set newValue CloudWatchLoggingConfigurationProperty {..}
    = CloudWatchLoggingConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "EncryptionKeyArn" CloudWatchLoggingConfigurationProperty where
  type PropertyType "EncryptionKeyArn" CloudWatchLoggingConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLoggingConfigurationProperty {..}
    = CloudWatchLoggingConfigurationProperty
        {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "LogGroupName" CloudWatchLoggingConfigurationProperty where
  type PropertyType "LogGroupName" CloudWatchLoggingConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLoggingConfigurationProperty {..}
    = CloudWatchLoggingConfigurationProperty
        {logGroupName = Prelude.pure newValue, ..}
instance Property "LogStreamNamePrefix" CloudWatchLoggingConfigurationProperty where
  type PropertyType "LogStreamNamePrefix" CloudWatchLoggingConfigurationProperty = Value Prelude.Text
  set newValue CloudWatchLoggingConfigurationProperty {..}
    = CloudWatchLoggingConfigurationProperty
        {logStreamNamePrefix = Prelude.pure newValue, ..}
instance Property "LogTypeMap" CloudWatchLoggingConfigurationProperty where
  type PropertyType "LogTypeMap" CloudWatchLoggingConfigurationProperty = [LogTypeMapKeyValuePairProperty]
  set newValue CloudWatchLoggingConfigurationProperty {..}
    = CloudWatchLoggingConfigurationProperty
        {logTypeMap = Prelude.pure newValue, ..}