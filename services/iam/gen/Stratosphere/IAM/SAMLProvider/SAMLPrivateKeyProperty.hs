module Stratosphere.IAM.SAMLProvider.SAMLPrivateKeyProperty (
        SAMLPrivateKeyProperty(..), mkSAMLPrivateKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAMLPrivateKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-samlprovider-samlprivatekey.html>
    SAMLPrivateKeyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-samlprovider-samlprivatekey.html#cfn-iam-samlprovider-samlprivatekey-keyid>
                            keyId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-samlprovider-samlprivatekey.html#cfn-iam-samlprovider-samlprivatekey-timestamp>
                            timestamp :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAMLPrivateKeyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SAMLPrivateKeyProperty
mkSAMLPrivateKeyProperty keyId timestamp
  = SAMLPrivateKeyProperty
      {haddock_workaround_ = (), keyId = keyId, timestamp = timestamp}
instance ToResourceProperties SAMLPrivateKeyProperty where
  toResourceProperties SAMLPrivateKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IAM::SAMLProvider.SAMLPrivateKey",
         supportsTags = Prelude.False,
         properties = ["KeyId" JSON..= keyId,
                       "Timestamp" JSON..= timestamp]}
instance JSON.ToJSON SAMLPrivateKeyProperty where
  toJSON SAMLPrivateKeyProperty {..}
    = JSON.object
        ["KeyId" JSON..= keyId, "Timestamp" JSON..= timestamp]
instance Property "KeyId" SAMLPrivateKeyProperty where
  type PropertyType "KeyId" SAMLPrivateKeyProperty = Value Prelude.Text
  set newValue SAMLPrivateKeyProperty {..}
    = SAMLPrivateKeyProperty {keyId = newValue, ..}
instance Property "Timestamp" SAMLPrivateKeyProperty where
  type PropertyType "Timestamp" SAMLPrivateKeyProperty = Value Prelude.Text
  set newValue SAMLPrivateKeyProperty {..}
    = SAMLPrivateKeyProperty {timestamp = newValue, ..}