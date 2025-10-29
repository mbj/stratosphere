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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-fieldmap.html>
    FieldMapProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-fieldmap.html#cfn-customerprofiles-objecttype-fieldmap-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-fieldmap.html#cfn-customerprofiles-objecttype-fieldmap-objecttypefield>
                      objectTypeField :: (Prelude.Maybe ObjectTypeFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldMapProperty :: FieldMapProperty
mkFieldMapProperty
  = FieldMapProperty
      {name = Prelude.Nothing, objectTypeField = Prelude.Nothing}
instance ToResourceProperties FieldMapProperty where
  toResourceProperties FieldMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType.FieldMap",
         supportsTags = Prelude.False,
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