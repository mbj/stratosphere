module Stratosphere.CustomerProfiles.ObjectType.FieldMapProperty (
        module Exports, FieldMapProperty(..), mkFieldMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.ObjectType.ObjectTypeFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldMapProperty
  = FieldMapProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                      objectTypeField :: (Prelude.Maybe ObjectTypeFieldProperty)}
mkFieldMapProperty :: FieldMapProperty
mkFieldMapProperty
  = FieldMapProperty
      {name = Prelude.Nothing, objectTypeField = Prelude.Nothing}
instance ToResourceProperties FieldMapProperty where
  toResourceProperties FieldMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType.FieldMap",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ObjectTypeField" Prelude.<$> objectTypeField])}
instance JSON.ToJSON FieldMapProperty where
  toJSON FieldMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ObjectTypeField" Prelude.<$> objectTypeField]))
instance Property "Name" FieldMapProperty where
  type PropertyType "Name" FieldMapProperty = Value Prelude.Text
  set newValue FieldMapProperty {..}
    = FieldMapProperty {name = Prelude.pure newValue, ..}
instance Property "ObjectTypeField" FieldMapProperty where
  type PropertyType "ObjectTypeField" FieldMapProperty = ObjectTypeFieldProperty
  set newValue FieldMapProperty {..}
    = FieldMapProperty {objectTypeField = Prelude.pure newValue, ..}