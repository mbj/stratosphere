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
  = SAMLProvider {name :: (Prelude.Maybe (Value Prelude.Text)),
                  samlMetadataDocument :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag])}
mkSAMLProvider :: Value Prelude.Text -> SAMLProvider
mkSAMLProvider samlMetadataDocument
  = SAMLProvider
      {samlMetadataDocument = samlMetadataDocument,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SAMLProvider where
  toResourceProperties SAMLProvider {..}
    = ResourceProperties
        {awsType = "AWS::IAM::SAMLProvider",
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