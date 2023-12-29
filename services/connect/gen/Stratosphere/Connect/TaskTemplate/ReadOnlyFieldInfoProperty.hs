module Stratosphere.Connect.TaskTemplate.ReadOnlyFieldInfoProperty (
        module Exports, ReadOnlyFieldInfoProperty(..),
        mkReadOnlyFieldInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
data ReadOnlyFieldInfoProperty
  = ReadOnlyFieldInfoProperty {id :: FieldIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadOnlyFieldInfoProperty ::
  FieldIdentifierProperty -> ReadOnlyFieldInfoProperty
mkReadOnlyFieldInfoProperty id
  = ReadOnlyFieldInfoProperty {id = id}
instance ToResourceProperties ReadOnlyFieldInfoProperty where
  toResourceProperties ReadOnlyFieldInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.ReadOnlyFieldInfo",
         supportsTags = Prelude.False, properties = ["Id" JSON..= id]}
instance JSON.ToJSON ReadOnlyFieldInfoProperty where
  toJSON ReadOnlyFieldInfoProperty {..}
    = JSON.object ["Id" JSON..= id]
instance Property "Id" ReadOnlyFieldInfoProperty where
  type PropertyType "Id" ReadOnlyFieldInfoProperty = FieldIdentifierProperty
  set newValue ReadOnlyFieldInfoProperty {}
    = ReadOnlyFieldInfoProperty {id = newValue, ..}