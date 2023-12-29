module Stratosphere.ManagedBlockchain.Accessor (
        Accessor(..), mkAccessor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Accessor
  = Accessor {accessorType :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessor :: Value Prelude.Text -> Accessor
mkAccessor accessorType
  = Accessor {accessorType = accessorType, tags = Prelude.Nothing}
instance ToResourceProperties Accessor where
  toResourceProperties Accessor {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Accessor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessorType" JSON..= accessorType]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Accessor where
  toJSON Accessor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessorType" JSON..= accessorType]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessorType" Accessor where
  type PropertyType "AccessorType" Accessor = Value Prelude.Text
  set newValue Accessor {..} = Accessor {accessorType = newValue, ..}
instance Property "Tags" Accessor where
  type PropertyType "Tags" Accessor = [Tag]
  set newValue Accessor {..}
    = Accessor {tags = Prelude.pure newValue, ..}