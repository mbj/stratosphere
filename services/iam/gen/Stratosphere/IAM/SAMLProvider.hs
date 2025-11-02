module Stratosphere.IAM.SAMLProvider (
        SAMLProvider(..), mkSAMLProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SAMLProvider
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html>
    SAMLProvider {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-samlmetadatadocument>
                  samlMetadataDocument :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-samlprovider.html#cfn-iam-samlprovider-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAMLProvider :: Value Prelude.Text -> SAMLProvider
mkSAMLProvider samlMetadataDocument
  = SAMLProvider
      {haddock_workaround_ = (),
       samlMetadataDocument = samlMetadataDocument,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SAMLProvider where
  toResourceProperties SAMLProvider {..}
    = ResourceProperties
        {awsType = "AWS::IAM::SAMLProvider", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SamlMetadataDocument" JSON..= samlMetadataDocument]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SAMLProvider where
  toJSON SAMLProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SamlMetadataDocument" JSON..= samlMetadataDocument]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" SAMLProvider where
  type PropertyType "Name" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider {name = Prelude.pure newValue, ..}
instance Property "SamlMetadataDocument" SAMLProvider where
  type PropertyType "SamlMetadataDocument" SAMLProvider = Value Prelude.Text
  set newValue SAMLProvider {..}
    = SAMLProvider {samlMetadataDocument = newValue, ..}
instance Property "Tags" SAMLProvider where
  type PropertyType "Tags" SAMLProvider = [Tag]
  set newValue SAMLProvider {..}
    = SAMLProvider {tags = Prelude.pure newValue, ..}