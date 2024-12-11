module Stratosphere.CleanRooms.IdMappingTable.IdMappingTableInputReferencePropertiesProperty (
        module Exports, IdMappingTableInputReferencePropertiesProperty(..),
        mkIdMappingTableInputReferencePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.IdMappingTable.IdMappingTableInputSourceProperty as Exports
import Stratosphere.ResourceProperties
data IdMappingTableInputReferencePropertiesProperty
  = IdMappingTableInputReferencePropertiesProperty {idMappingTableInputSource :: [IdMappingTableInputSourceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingTableInputReferencePropertiesProperty ::
  [IdMappingTableInputSourceProperty]
  -> IdMappingTableInputReferencePropertiesProperty
mkIdMappingTableInputReferencePropertiesProperty
  idMappingTableInputSource
  = IdMappingTableInputReferencePropertiesProperty
      {idMappingTableInputSource = idMappingTableInputSource}
instance ToResourceProperties IdMappingTableInputReferencePropertiesProperty where
  toResourceProperties
    IdMappingTableInputReferencePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdMappingTable.IdMappingTableInputReferenceProperties",
         supportsTags = Prelude.False,
         properties = ["IdMappingTableInputSource"
                         JSON..= idMappingTableInputSource]}
instance JSON.ToJSON IdMappingTableInputReferencePropertiesProperty where
  toJSON IdMappingTableInputReferencePropertiesProperty {..}
    = JSON.object
        ["IdMappingTableInputSource" JSON..= idMappingTableInputSource]
instance Property "IdMappingTableInputSource" IdMappingTableInputReferencePropertiesProperty where
  type PropertyType "IdMappingTableInputSource" IdMappingTableInputReferencePropertiesProperty = [IdMappingTableInputSourceProperty]
  set newValue IdMappingTableInputReferencePropertiesProperty {}
    = IdMappingTableInputReferencePropertiesProperty
        {idMappingTableInputSource = newValue, ..}