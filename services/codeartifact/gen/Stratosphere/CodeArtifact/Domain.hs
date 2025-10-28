module Stratosphere.CodeArtifact.Domain (
        Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeartifact-domain.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeartifact-domain.html#cfn-codeartifact-domain-domainname>
            domainName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeartifact-domain.html#cfn-codeartifact-domain-encryptionkey>
            encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeartifact-domain.html#cfn-codeartifact-domain-permissionspolicydocument>
            permissionsPolicyDocument :: (Prelude.Maybe JSON.Object),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codeartifact-domain.html#cfn-codeartifact-domain-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Value Prelude.Text -> Domain
mkDomain domainName
  = Domain
      {haddock_workaround_ = (), domainName = domainName,
       encryptionKey = Prelude.Nothing,
       permissionsPolicyDocument = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::CodeArtifact::Domain",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                               (JSON..=) "PermissionsPolicyDocument"
                                 Prelude.<$> permissionsPolicyDocument,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                  (JSON..=) "PermissionsPolicyDocument"
                    Prelude.<$> permissionsPolicyDocument,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {domainName = newValue, ..}
instance Property "EncryptionKey" Domain where
  type PropertyType "EncryptionKey" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {encryptionKey = Prelude.pure newValue, ..}
instance Property "PermissionsPolicyDocument" Domain where
  type PropertyType "PermissionsPolicyDocument" Domain = JSON.Object
  set newValue Domain {..}
    = Domain {permissionsPolicyDocument = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}