module Stratosphere.IAM.SAMLProvider (
        module Exports, SAMLProvider(..), mkSAMLProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IAM.SAMLProvider.SAMLPrivateKeyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SAMLProvider
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html>
    SAMLProvider {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-addprivatekey>
                  addPrivateKey :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-assertionencryptionmode>
                  assertionEncryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-privatekeylist>
                  privateKeyList :: (Prelude.Maybe [SAMLPrivateKeyProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-removeprivatekey>
                  removePrivateKey :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-samlmetadatadocument>
                  samlMetadataDocument :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAMLProvider :: SAMLProvider
mkSAMLProvider
  = SAMLProvider
      {haddock_workaround_ = (), addPrivateKey = Prelude.Nothing,
       assertionEncryptionMode = Prelude.Nothing, name = Prelude.Nothing,
       privateKeyList = Prelude.Nothing,
       removePrivateKey = Prelude.Nothing,
       samlMetadataDocument = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SAMLProvider where
  toResourceProperties SAMLProvider {..}
    = ResourceProperties
        {awsType = "AWS::IAM::SAMLProvider", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddPrivateKey" Prelude.<$> addPrivateKey,
                            (JSON..=) "AssertionEncryptionMode"
                              Prelude.<$> assertionEncryptionMode,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PrivateKeyList" Prelude.<$> privateKeyList,
                            (JSON..=) "RemovePrivateKey" Prelude.<$> removePrivateKey,
                            (JSON..=) "SamlMetadataDocument" Prelude.<$> samlMetadataDocument,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SAMLProvider where
  toJSON SAMLProvider {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddPrivateKey" Prelude.<$> addPrivateKey,
               (JSON..=) "AssertionEncryptionMode"
                 Prelude.<$> assertionEncryptionMode,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PrivateKeyList" Prelude.<$> privateKeyList,
               (JSON..=) "RemovePrivateKey" Prelude.<$> removePrivateKey,
               (JSON..=) "SamlMetadataDocument" Prelude.<$> samlMetadataDocument,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AddPrivateKey" SAMLProvider where
  type PropertyType "AddPrivateKey" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider {addPrivateKey = Prelude.pure newValue, ..}
instance Property "AssertionEncryptionMode" SAMLProvider where
  type PropertyType "AssertionEncryptionMode" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider
        {assertionEncryptionMode = Prelude.pure newValue, ..}
instance Property "Name" SAMLProvider where
  type PropertyType "Name" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider {name = Prelude.pure newValue, ..}
instance Property "PrivateKeyList" SAMLProvider where
  type PropertyType "PrivateKeyList" SAMLProvider = [SAMLPrivateKeyProperty]
  set newValue SAMLProvider {..}
    = SAMLProvider {privateKeyList = Prelude.pure newValue, ..}
instance Property "RemovePrivateKey" SAMLProvider where
  type PropertyType "RemovePrivateKey" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider {removePrivateKey = Prelude.pure newValue, ..}
instance Property "SamlMetadataDocument" SAMLProvider where
  type PropertyType "SamlMetadataDocument" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider {samlMetadataDocument = Prelude.pure newValue, ..}
instance Property "Tags" SAMLProvider where
  type PropertyType "Tags" SAMLProvider = [Tag]
  set newValue SAMLProvider {..}
    = SAMLProvider {tags = Prelude.pure newValue, ..}