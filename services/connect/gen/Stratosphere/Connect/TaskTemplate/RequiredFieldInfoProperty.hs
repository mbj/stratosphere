module Stratosphere.Connect.TaskTemplate.RequiredFieldInfoProperty (
        module Exports, RequiredFieldInfoProperty(..),
        mkRequiredFieldInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.TaskTemplate.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
data RequiredFieldInfoProperty
  = RequiredFieldInfoProperty {id :: FieldIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequiredFieldInfoProperty ::
  FieldIdentifierProperty -> RequiredFieldInfoProperty
mkRequiredFieldInfoProperty id
  = RequiredFieldInfoProperty {id = id}
instance ToResourceProperties RequiredFieldInfoProperty where
  toResourceProperties RequiredFieldInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::TaskTemplate.RequiredFieldInfo",
         supportsTags = Prelude.False, properties = ["Id" JSON..= id]}
instance JSON.ToJSON RequiredFieldInfoProperty where
  toJSON RequiredFieldInfoProperty {..}
    = JSON.object ["Id" JSON..= id]
instance Property "Id" RequiredFieldInfoProperty where
  type PropertyType "Id" RequiredFieldInfoProperty = FieldIdentifierProperty
  set newValue RequiredFieldInfoProperty {}
    = RequiredFieldInfoProperty {id = newValue, ..}