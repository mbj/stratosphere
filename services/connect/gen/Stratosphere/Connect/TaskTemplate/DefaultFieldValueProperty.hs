module Stratosphere.Connect.TaskTemplate.DefaultFieldValueProperty (
        module Exports, DefaultFieldValueProperty(..),
        mkDefaultFieldValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultFieldValueProperty
  = DefaultFieldValueProperty {defaultValue :: (Value Prelude.Text),
                               id :: FieldIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultFieldValueProperty ::
  Value Prelude.Text
  -> FieldIdentifierProperty -> DefaultFieldValueProperty
mkDefaultFieldValueProperty defaultValue id
  = DefaultFieldValueProperty {defaultValue = defaultValue, id = id}
instance ToResourceProperties DefaultFieldValueProperty where
  toResourceProperties DefaultFieldValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.DefaultFieldValue",
         supportsTags = Prelude.False,
         properties = ["DefaultValue" JSON..= defaultValue,
                       "Id" JSON..= id]}
instance JSON.ToJSON DefaultFieldValueProperty where
  toJSON DefaultFieldValueProperty {..}
    = JSON.object
        ["DefaultValue" JSON..= defaultValue, "Id" JSON..= id]
instance Property "DefaultValue" DefaultFieldValueProperty where
  type PropertyType "DefaultValue" DefaultFieldValueProperty = Value Prelude.Text
  set newValue DefaultFieldValueProperty {..}
    = DefaultFieldValueProperty {defaultValue = newValue, ..}
instance Property "Id" DefaultFieldValueProperty where
  type PropertyType "Id" DefaultFieldValueProperty = FieldIdentifierProperty
  set newValue DefaultFieldValueProperty {..}
    = DefaultFieldValueProperty {id = newValue, ..}