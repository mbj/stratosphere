module Stratosphere.IVS.PublicKey (
        PublicKey(..), mkPublicKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PublicKey
  = PublicKey {name :: (Prelude.Maybe (Value Prelude.Text)),
               publicKeyMaterial :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicKey :: PublicKey
mkPublicKey
  = PublicKey
      {name = Prelude.Nothing, publicKeyMaterial = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PublicKey where
  toResourceProperties PublicKey {..}
    = ResourceProperties
        {awsType = "AWS::IVS::PublicKey", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PublicKeyMaterial" Prelude.<$> publicKeyMaterial,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON PublicKey where
  toJSON PublicKey {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PublicKeyMaterial" Prelude.<$> publicKeyMaterial,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Name" PublicKey where
  type PropertyType "Name" PublicKey = Value Prelude.Text
  set newValue PublicKey {..}
    = PublicKey {name = Prelude.pure newValue, ..}
instance Property "PublicKeyMaterial" PublicKey where
  type PropertyType "PublicKeyMaterial" PublicKey = Value Prelude.Text
  set newValue PublicKey {..}
    = PublicKey {publicKeyMaterial = Prelude.pure newValue, ..}
instance Property "Tags" PublicKey where
  type PropertyType "Tags" PublicKey = [Tag]
  set newValue PublicKey {..}
    = PublicKey {tags = Prelude.pure newValue, ..}