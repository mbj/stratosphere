module Stratosphere.CleanRooms.IdMappingTable.IdMappingTableInputSourceProperty (
        IdMappingTableInputSourceProperty(..),
        mkIdMappingTableInputSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingTableInputSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputsource.html>
    IdMappingTableInputSourceProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputsource.html#cfn-cleanrooms-idmappingtable-idmappingtableinputsource-idnamespaceassociationid>
                                       idNamespaceAssociationId :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputsource.html#cfn-cleanrooms-idmappingtable-idmappingtableinputsource-type>
                                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingTableInputSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IdMappingTableInputSourceProperty
mkIdMappingTableInputSourceProperty idNamespaceAssociationId type'
  = IdMappingTableInputSourceProperty
      {haddock_workaround_ = (),
       idNamespaceAssociationId = idNamespaceAssociationId, type' = type'}
instance ToResourceProperties IdMappingTableInputSourceProperty where
  toResourceProperties IdMappingTableInputSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdMappingTable.IdMappingTableInputSource",
         supportsTags = Prelude.False,
         properties = ["IdNamespaceAssociationId"
                         JSON..= idNamespaceAssociationId,
                       "Type" JSON..= type']}
instance JSON.ToJSON IdMappingTableInputSourceProperty where
  toJSON IdMappingTableInputSourceProperty {..}
    = JSON.object
        ["IdNamespaceAssociationId" JSON..= idNamespaceAssociationId,
         "Type" JSON..= type']
instance Property "IdNamespaceAssociationId" IdMappingTableInputSourceProperty where
  type PropertyType "IdNamespaceAssociationId" IdMappingTableInputSourceProperty = Value Prelude.Text
  set newValue IdMappingTableInputSourceProperty {..}
    = IdMappingTableInputSourceProperty
        {idNamespaceAssociationId = newValue, ..}
instance Property "Type" IdMappingTableInputSourceProperty where
  type PropertyType "Type" IdMappingTableInputSourceProperty = Value Prelude.Text
  set newValue IdMappingTableInputSourceProperty {..}
    = IdMappingTableInputSourceProperty {type' = newValue, ..}