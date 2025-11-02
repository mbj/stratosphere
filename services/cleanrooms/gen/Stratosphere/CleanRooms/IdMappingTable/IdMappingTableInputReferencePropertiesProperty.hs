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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputreferenceproperties.html>
    IdMappingTableInputReferencePropertiesProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputreferenceproperties.html#cfn-cleanrooms-idmappingtable-idmappingtableinputreferenceproperties-idmappingtableinputsource>
                                                    idMappingTableInputSource :: [IdMappingTableInputSourceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingTableInputReferencePropertiesProperty ::
  [IdMappingTableInputSourceProperty]
  -> IdMappingTableInputReferencePropertiesProperty
mkIdMappingTableInputReferencePropertiesProperty
  idMappingTableInputSource
  = IdMappingTableInputReferencePropertiesProperty
      {haddock_workaround_ = (),
       idMappingTableInputSource = idMappingTableInputSource}
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
  set newValue IdMappingTableInputReferencePropertiesProperty {..}
    = IdMappingTableInputReferencePropertiesProperty
        {idMappingTableInputSource = newValue, ..}