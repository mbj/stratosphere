module Stratosphere.IdentityStore.Group (
        Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Group
  = Group {description :: (Prelude.Maybe (Value Prelude.Text)),
           displayName :: (Value Prelude.Text),
           identityStoreId :: (Value Prelude.Text)}
mkGroup :: Value Prelude.Text -> Value Prelude.Text -> Group
mkGroup displayName identityStoreId
  = Group
      {displayName = displayName, identityStoreId = identityStoreId,
       description = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::IdentityStore::Group",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName,
                            "IdentityStoreId" JSON..= identityStoreId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName,
               "IdentityStoreId" JSON..= identityStoreId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" Group where
  type PropertyType "Description" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Group where
  type PropertyType "DisplayName" Group = Value Prelude.Text
  set newValue Group {..} = Group {displayName = newValue, ..}
instance Property "IdentityStoreId" Group where
  type PropertyType "IdentityStoreId" Group = Value Prelude.Text
  set newValue Group {..} = Group {identityStoreId = newValue, ..}