module Stratosphere.CustomerProfiles.ObjectType.KeyMapProperty (
        module Exports, KeyMapProperty(..), mkKeyMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.ObjectType.ObjectTypeKeyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyMapProperty
  = KeyMapProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                    objectTypeKeyList :: (Prelude.Maybe [ObjectTypeKeyProperty])}
mkKeyMapProperty :: KeyMapProperty
mkKeyMapProperty
  = KeyMapProperty
      {name = Prelude.Nothing, objectTypeKeyList = Prelude.Nothing}
instance ToResourceProperties KeyMapProperty where
  toResourceProperties KeyMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType.KeyMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ObjectTypeKeyList" Prelude.<$> objectTypeKeyList])}
instance JSON.ToJSON KeyMapProperty where
  toJSON KeyMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ObjectTypeKeyList" Prelude.<$> objectTypeKeyList]))
instance Property "Name" KeyMapProperty where
  type PropertyType "Name" KeyMapProperty = Value Prelude.Text
  set newValue KeyMapProperty {..}
    = KeyMapProperty {name = Prelude.pure newValue, ..}
instance Property "ObjectTypeKeyList" KeyMapProperty where
  type PropertyType "ObjectTypeKeyList" KeyMapProperty = [ObjectTypeKeyProperty]
  set newValue KeyMapProperty {..}
    = KeyMapProperty {objectTypeKeyList = Prelude.pure newValue, ..}