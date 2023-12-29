module Stratosphere.EC2.PrefixList.EntryProperty (
        EntryProperty(..), mkEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntryProperty
  = EntryProperty {cidr :: (Value Prelude.Text),
                   description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntryProperty :: Value Prelude.Text -> EntryProperty
mkEntryProperty cidr
  = EntryProperty {cidr = cidr, description = Prelude.Nothing}
instance ToResourceProperties EntryProperty where
  toResourceProperties EntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::PrefixList.Entry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Cidr" JSON..= cidr]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON EntryProperty where
  toJSON EntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Cidr" JSON..= cidr]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Cidr" EntryProperty where
  type PropertyType "Cidr" EntryProperty = Value Prelude.Text
  set newValue EntryProperty {..}
    = EntryProperty {cidr = newValue, ..}
instance Property "Description" EntryProperty where
  type PropertyType "Description" EntryProperty = Value Prelude.Text
  set newValue EntryProperty {..}
    = EntryProperty {description = Prelude.pure newValue, ..}