module Stratosphere.WorkSpaces.ConnectionAlias (
        ConnectionAlias(..), mkConnectionAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConnectionAlias
  = ConnectionAlias {connectionString :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag])}
mkConnectionAlias :: Value Prelude.Text -> ConnectionAlias
mkConnectionAlias connectionString
  = ConnectionAlias
      {connectionString = connectionString, tags = Prelude.Nothing}
instance ToResourceProperties ConnectionAlias where
  toResourceProperties ConnectionAlias {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::ConnectionAlias",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionString" JSON..= connectionString]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConnectionAlias where
  toJSON ConnectionAlias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionString" JSON..= connectionString]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectionString" ConnectionAlias where
  type PropertyType "ConnectionString" ConnectionAlias = Value Prelude.Text
  set newValue ConnectionAlias {..}
    = ConnectionAlias {connectionString = newValue, ..}
instance Property "Tags" ConnectionAlias where
  type PropertyType "Tags" ConnectionAlias = [Tag]
  set newValue ConnectionAlias {..}
    = ConnectionAlias {tags = Prelude.pure newValue, ..}