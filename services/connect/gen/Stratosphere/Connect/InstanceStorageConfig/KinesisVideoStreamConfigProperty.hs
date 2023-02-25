module Stratosphere.Connect.InstanceStorageConfig.KinesisVideoStreamConfigProperty (
        module Exports, KinesisVideoStreamConfigProperty(..),
        mkKinesisVideoStreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.EncryptionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisVideoStreamConfigProperty
  = KinesisVideoStreamConfigProperty {encryptionConfig :: (Prelude.Maybe EncryptionConfigProperty),
                                      prefix :: (Value Prelude.Text),
                                      retentionPeriodHours :: (Value Prelude.Double)}
mkKinesisVideoStreamConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> KinesisVideoStreamConfigProperty
mkKinesisVideoStreamConfigProperty prefix retentionPeriodHours
  = KinesisVideoStreamConfigProperty
      {prefix = prefix, retentionPeriodHours = retentionPeriodHours,
       encryptionConfig = Prelude.Nothing}
instance ToResourceProperties KinesisVideoStreamConfigProperty where
  toResourceProperties KinesisVideoStreamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig.KinesisVideoStreamConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Prefix" JSON..= prefix,
                            "RetentionPeriodHours" JSON..= retentionPeriodHours]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig]))}
instance JSON.ToJSON KinesisVideoStreamConfigProperty where
  toJSON KinesisVideoStreamConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Prefix" JSON..= prefix,
               "RetentionPeriodHours" JSON..= retentionPeriodHours]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig])))
instance Property "EncryptionConfig" KinesisVideoStreamConfigProperty where
  type PropertyType "EncryptionConfig" KinesisVideoStreamConfigProperty = EncryptionConfigProperty
  set newValue KinesisVideoStreamConfigProperty {..}
    = KinesisVideoStreamConfigProperty
        {encryptionConfig = Prelude.pure newValue, ..}
instance Property "Prefix" KinesisVideoStreamConfigProperty where
  type PropertyType "Prefix" KinesisVideoStreamConfigProperty = Value Prelude.Text
  set newValue KinesisVideoStreamConfigProperty {..}
    = KinesisVideoStreamConfigProperty {prefix = newValue, ..}
instance Property "RetentionPeriodHours" KinesisVideoStreamConfigProperty where
  type PropertyType "RetentionPeriodHours" KinesisVideoStreamConfigProperty = Value Prelude.Double
  set newValue KinesisVideoStreamConfigProperty {..}
    = KinesisVideoStreamConfigProperty
        {retentionPeriodHours = newValue, ..}