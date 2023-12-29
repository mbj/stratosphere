module Stratosphere.WAFv2.IPSet (
        IPSet(..), mkIPSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPSet
  = IPSet {addresses :: (ValueList Prelude.Text),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           iPAddressVersion :: (Value Prelude.Text),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           scope :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSet ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> IPSet
mkIPSet addresses iPAddressVersion scope
  = IPSet
      {addresses = addresses, iPAddressVersion = iPAddressVersion,
       scope = scope, description = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IPSet where
  toResourceProperties IPSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::IPSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Addresses" JSON..= addresses,
                            "IPAddressVersion" JSON..= iPAddressVersion, "Scope" JSON..= scope]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPSet where
  toJSON IPSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Addresses" JSON..= addresses,
               "IPAddressVersion" JSON..= iPAddressVersion, "Scope" JSON..= scope]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Addresses" IPSet where
  type PropertyType "Addresses" IPSet = ValueList Prelude.Text
  set newValue IPSet {..} = IPSet {addresses = newValue, ..}
instance Property "Description" IPSet where
  type PropertyType "Description" IPSet = Value Prelude.Text
  set newValue IPSet {..}
    = IPSet {description = Prelude.pure newValue, ..}
instance Property "IPAddressVersion" IPSet where
  type PropertyType "IPAddressVersion" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {iPAddressVersion = newValue, ..}
instance Property "Name" IPSet where
  type PropertyType "Name" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {name = Prelude.pure newValue, ..}
instance Property "Scope" IPSet where
  type PropertyType "Scope" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {scope = newValue, ..}
instance Property "Tags" IPSet where
  type PropertyType "Tags" IPSet = [Tag]
  set newValue IPSet {..} = IPSet {tags = Prelude.pure newValue, ..}