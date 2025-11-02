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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-publickey.html>
    PublicKey {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-publickey.html#cfn-ivs-publickey-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-publickey.html#cfn-ivs-publickey-publickeymaterial>
               publicKeyMaterial :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-publickey.html#cfn-ivs-publickey-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicKey :: PublicKey
mkPublicKey
  = PublicKey
      {haddock_workaround_ = (), name = Prelude.Nothing,
       publicKeyMaterial = Prelude.Nothing, tags = Prelude.Nothing}
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