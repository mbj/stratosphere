module Stratosphere.KinesisAnalyticsV2.Application.ApplicationEncryptionConfigurationProperty (
        ApplicationEncryptionConfigurationProperty(..),
        mkApplicationEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationEncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationencryptionconfiguration.html>
    ApplicationEncryptionConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationencryptionconfiguration.html#cfn-kinesisanalyticsv2-application-applicationencryptionconfiguration-keyid>
                                                keyId :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationencryptionconfiguration.html#cfn-kinesisanalyticsv2-application-applicationencryptionconfiguration-keytype>
                                                keyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationEncryptionConfigurationProperty ::
  Value Prelude.Text -> ApplicationEncryptionConfigurationProperty
mkApplicationEncryptionConfigurationProperty keyType
  = ApplicationEncryptionConfigurationProperty
      {haddock_workaround_ = (), keyType = keyType,
       keyId = Prelude.Nothing}
instance ToResourceProperties ApplicationEncryptionConfigurationProperty where
  toResourceProperties
    ApplicationEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyType" JSON..= keyType]
                           (Prelude.catMaybes [(JSON..=) "KeyId" Prelude.<$> keyId]))}
instance JSON.ToJSON ApplicationEncryptionConfigurationProperty where
  toJSON ApplicationEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyType" JSON..= keyType]
              (Prelude.catMaybes [(JSON..=) "KeyId" Prelude.<$> keyId])))
instance Property "KeyId" ApplicationEncryptionConfigurationProperty where
  type PropertyType "KeyId" ApplicationEncryptionConfigurationProperty = Value Prelude.Text
  set newValue ApplicationEncryptionConfigurationProperty {..}
    = ApplicationEncryptionConfigurationProperty
        {keyId = Prelude.pure newValue, ..}
instance Property "KeyType" ApplicationEncryptionConfigurationProperty where
  type PropertyType "KeyType" ApplicationEncryptionConfigurationProperty = Value Prelude.Text
  set newValue ApplicationEncryptionConfigurationProperty {..}
    = ApplicationEncryptionConfigurationProperty
        {keyType = newValue, ..}