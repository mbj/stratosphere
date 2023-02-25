module Stratosphere.Connect.TaskTemplate.FieldProperty (
        module Exports, FieldProperty(..), mkFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldProperty
  = FieldProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                   id :: FieldIdentifierProperty,
                   singleSelectOptions :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                   type' :: (Value Prelude.Text)}
mkFieldProperty ::
  FieldIdentifierProperty -> Value Prelude.Text -> FieldProperty
mkFieldProperty id type'
  = FieldProperty
      {id = id, type' = type', description = Prelude.Nothing,
       singleSelectOptions = Prelude.Nothing}
instance ToResourceProperties FieldProperty where
  toResourceProperties FieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.Field",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SingleSelectOptions" Prelude.<$> singleSelectOptions]))}
instance JSON.ToJSON FieldProperty where
  toJSON FieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SingleSelectOptions" Prelude.<$> singleSelectOptions])))
instance Property "Description" FieldProperty where
  type PropertyType "Description" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {description = Prelude.pure newValue, ..}
instance Property "Id" FieldProperty where
  type PropertyType "Id" FieldProperty = FieldIdentifierProperty
  set newValue FieldProperty {..} = FieldProperty {id = newValue, ..}
instance Property "SingleSelectOptions" FieldProperty where
  type PropertyType "SingleSelectOptions" FieldProperty = ValueList (Value Prelude.Text)
  set newValue FieldProperty {..}
    = FieldProperty {singleSelectOptions = Prelude.pure newValue, ..}
instance Property "Type" FieldProperty where
  type PropertyType "Type" FieldProperty = Value Prelude.Text
  set newValue FieldProperty {..}
    = FieldProperty {type' = newValue, ..}