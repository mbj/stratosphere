module Stratosphere.EC2.KeyPair (
        KeyPair(..), mkKeyPair
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data KeyPair
  = KeyPair {keyName :: (Value Prelude.Text),
             keyType :: (Prelude.Maybe (Value Prelude.Text)),
             publicKeyMaterial :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyPair :: Value Prelude.Text -> KeyPair
mkKeyPair keyName
  = KeyPair
      {keyName = keyName, keyType = Prelude.Nothing,
       publicKeyMaterial = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties KeyPair where
  toResourceProperties KeyPair {..}
    = ResourceProperties
        {awsType = "AWS::EC2::KeyPair", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyName" JSON..= keyName]
                           (Prelude.catMaybes
                              [(JSON..=) "KeyType" Prelude.<$> keyType,
                               (JSON..=) "PublicKeyMaterial" Prelude.<$> publicKeyMaterial,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON KeyPair where
  toJSON KeyPair {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyName" JSON..= keyName]
              (Prelude.catMaybes
                 [(JSON..=) "KeyType" Prelude.<$> keyType,
                  (JSON..=) "PublicKeyMaterial" Prelude.<$> publicKeyMaterial,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "KeyName" KeyPair where
  type PropertyType "KeyName" KeyPair = Value Prelude.Text
  set newValue KeyPair {..} = KeyPair {keyName = newValue, ..}
instance Property "KeyType" KeyPair where
  type PropertyType "KeyType" KeyPair = Value Prelude.Text
  set newValue KeyPair {..}
    = KeyPair {keyType = Prelude.pure newValue, ..}
instance Property "PublicKeyMaterial" KeyPair where
  type PropertyType "PublicKeyMaterial" KeyPair = Value Prelude.Text
  set newValue KeyPair {..}
    = KeyPair {publicKeyMaterial = Prelude.pure newValue, ..}
instance Property "Tags" KeyPair where
  type PropertyType "Tags" KeyPair = [Tag]
  set newValue KeyPair {..}
    = KeyPair {tags = Prelude.pure newValue, ..}