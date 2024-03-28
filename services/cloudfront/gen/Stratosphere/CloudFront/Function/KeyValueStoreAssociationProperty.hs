module Stratosphere.CloudFront.Function.KeyValueStoreAssociationProperty (
        KeyValueStoreAssociationProperty(..),
        mkKeyValueStoreAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValueStoreAssociationProperty
  = KeyValueStoreAssociationProperty {keyValueStoreARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyValueStoreAssociationProperty ::
  Value Prelude.Text -> KeyValueStoreAssociationProperty
mkKeyValueStoreAssociationProperty keyValueStoreARN
  = KeyValueStoreAssociationProperty
      {keyValueStoreARN = keyValueStoreARN}
instance ToResourceProperties KeyValueStoreAssociationProperty where
  toResourceProperties KeyValueStoreAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Function.KeyValueStoreAssociation",
         supportsTags = Prelude.False,
         properties = ["KeyValueStoreARN" JSON..= keyValueStoreARN]}
instance JSON.ToJSON KeyValueStoreAssociationProperty where
  toJSON KeyValueStoreAssociationProperty {..}
    = JSON.object ["KeyValueStoreARN" JSON..= keyValueStoreARN]
instance Property "KeyValueStoreARN" KeyValueStoreAssociationProperty where
  type PropertyType "KeyValueStoreARN" KeyValueStoreAssociationProperty = Value Prelude.Text
  set newValue KeyValueStoreAssociationProperty {}
    = KeyValueStoreAssociationProperty
        {keyValueStoreARN = newValue, ..}