module Stratosphere.Location.APIKey (
        module Exports, APIKey(..), mkAPIKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Location.APIKey.ApiKeyRestrictionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data APIKey
  = APIKey {description :: (Prelude.Maybe (Value Prelude.Text)),
            expireTime :: (Prelude.Maybe (Value Prelude.Text)),
            forceDelete :: (Prelude.Maybe (Value Prelude.Bool)),
            forceUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
            keyName :: (Value Prelude.Text),
            noExpiry :: (Prelude.Maybe (Value Prelude.Bool)),
            restrictions :: ApiKeyRestrictionsProperty,
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAPIKey ::
  Value Prelude.Text -> ApiKeyRestrictionsProperty -> APIKey
mkAPIKey keyName restrictions
  = APIKey
      {keyName = keyName, restrictions = restrictions,
       description = Prelude.Nothing, expireTime = Prelude.Nothing,
       forceDelete = Prelude.Nothing, forceUpdate = Prelude.Nothing,
       noExpiry = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties APIKey where
  toResourceProperties APIKey {..}
    = ResourceProperties
        {awsType = "AWS::Location::APIKey", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyName" JSON..= keyName, "Restrictions" JSON..= restrictions]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExpireTime" Prelude.<$> expireTime,
                               (JSON..=) "ForceDelete" Prelude.<$> forceDelete,
                               (JSON..=) "ForceUpdate" Prelude.<$> forceUpdate,
                               (JSON..=) "NoExpiry" Prelude.<$> noExpiry,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON APIKey where
  toJSON APIKey {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyName" JSON..= keyName, "Restrictions" JSON..= restrictions]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExpireTime" Prelude.<$> expireTime,
                  (JSON..=) "ForceDelete" Prelude.<$> forceDelete,
                  (JSON..=) "ForceUpdate" Prelude.<$> forceUpdate,
                  (JSON..=) "NoExpiry" Prelude.<$> noExpiry,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" APIKey where
  type PropertyType "Description" APIKey = Value Prelude.Text
  set newValue APIKey {..}
    = APIKey {description = Prelude.pure newValue, ..}
instance Property "ExpireTime" APIKey where
  type PropertyType "ExpireTime" APIKey = Value Prelude.Text
  set newValue APIKey {..}
    = APIKey {expireTime = Prelude.pure newValue, ..}
instance Property "ForceDelete" APIKey where
  type PropertyType "ForceDelete" APIKey = Value Prelude.Bool
  set newValue APIKey {..}
    = APIKey {forceDelete = Prelude.pure newValue, ..}
instance Property "ForceUpdate" APIKey where
  type PropertyType "ForceUpdate" APIKey = Value Prelude.Bool
  set newValue APIKey {..}
    = APIKey {forceUpdate = Prelude.pure newValue, ..}
instance Property "KeyName" APIKey where
  type PropertyType "KeyName" APIKey = Value Prelude.Text
  set newValue APIKey {..} = APIKey {keyName = newValue, ..}
instance Property "NoExpiry" APIKey where
  type PropertyType "NoExpiry" APIKey = Value Prelude.Bool
  set newValue APIKey {..}
    = APIKey {noExpiry = Prelude.pure newValue, ..}
instance Property "Restrictions" APIKey where
  type PropertyType "Restrictions" APIKey = ApiKeyRestrictionsProperty
  set newValue APIKey {..} = APIKey {restrictions = newValue, ..}
instance Property "Tags" APIKey where
  type PropertyType "Tags" APIKey = [Tag]
  set newValue APIKey {..}
    = APIKey {tags = Prelude.pure newValue, ..}