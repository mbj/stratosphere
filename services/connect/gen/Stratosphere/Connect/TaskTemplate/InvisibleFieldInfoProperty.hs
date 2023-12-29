module Stratosphere.Connect.TaskTemplate.InvisibleFieldInfoProperty (
        module Exports, InvisibleFieldInfoProperty(..),
        mkInvisibleFieldInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
data InvisibleFieldInfoProperty
  = InvisibleFieldInfoProperty {id :: FieldIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInvisibleFieldInfoProperty ::
  FieldIdentifierProperty -> InvisibleFieldInfoProperty
mkInvisibleFieldInfoProperty id
  = InvisibleFieldInfoProperty {id = id}
instance ToResourceProperties InvisibleFieldInfoProperty where
  toResourceProperties InvisibleFieldInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.InvisibleFieldInfo",
         supportsTags = Prelude.False, properties = ["Id" JSON..= id]}
instance JSON.ToJSON InvisibleFieldInfoProperty where
  toJSON InvisibleFieldInfoProperty {..}
    = JSON.object ["Id" JSON..= id]
instance Property "Id" InvisibleFieldInfoProperty where
  type PropertyType "Id" InvisibleFieldInfoProperty = FieldIdentifierProperty
  set newValue InvisibleFieldInfoProperty {}
    = InvisibleFieldInfoProperty {id = newValue, ..}