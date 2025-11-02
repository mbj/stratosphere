module Stratosphere.CleanRooms.IdNamespaceAssociation.IdNamespaceAssociationInputReferencePropertiesProperty (
        IdNamespaceAssociationInputReferencePropertiesProperty(..),
        mkIdNamespaceAssociationInputReferencePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdNamespaceAssociationInputReferencePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idnamespaceassociation-idnamespaceassociationinputreferenceproperties.html>
    IdNamespaceAssociationInputReferencePropertiesProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idnamespaceassociation-idnamespaceassociationinputreferenceproperties.html#cfn-cleanrooms-idnamespaceassociation-idnamespaceassociationinputreferenceproperties-idmappingworkflowssupported>
                                                            idMappingWorkflowsSupported :: (Prelude.Maybe JSON.Object),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idnamespaceassociation-idnamespaceassociationinputreferenceproperties.html#cfn-cleanrooms-idnamespaceassociation-idnamespaceassociationinputreferenceproperties-idnamespacetype>
                                                            idNamespaceType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdNamespaceAssociationInputReferencePropertiesProperty ::
  IdNamespaceAssociationInputReferencePropertiesProperty
mkIdNamespaceAssociationInputReferencePropertiesProperty
  = IdNamespaceAssociationInputReferencePropertiesProperty
      {haddock_workaround_ = (),
       idMappingWorkflowsSupported = Prelude.Nothing,
       idNamespaceType = Prelude.Nothing}
instance ToResourceProperties IdNamespaceAssociationInputReferencePropertiesProperty where
  toResourceProperties
    IdNamespaceAssociationInputReferencePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdNamespaceAssociation.IdNamespaceAssociationInputReferenceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdMappingWorkflowsSupported"
                              Prelude.<$> idMappingWorkflowsSupported,
                            (JSON..=) "IdNamespaceType" Prelude.<$> idNamespaceType])}
instance JSON.ToJSON IdNamespaceAssociationInputReferencePropertiesProperty where
  toJSON IdNamespaceAssociationInputReferencePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdMappingWorkflowsSupported"
                 Prelude.<$> idMappingWorkflowsSupported,
               (JSON..=) "IdNamespaceType" Prelude.<$> idNamespaceType]))
instance Property "IdMappingWorkflowsSupported" IdNamespaceAssociationInputReferencePropertiesProperty where
  type PropertyType "IdMappingWorkflowsSupported" IdNamespaceAssociationInputReferencePropertiesProperty = JSON.Object
  set
    newValue
    IdNamespaceAssociationInputReferencePropertiesProperty {..}
    = IdNamespaceAssociationInputReferencePropertiesProperty
        {idMappingWorkflowsSupported = Prelude.pure newValue, ..}
instance Property "IdNamespaceType" IdNamespaceAssociationInputReferencePropertiesProperty where
  type PropertyType "IdNamespaceType" IdNamespaceAssociationInputReferencePropertiesProperty = Value Prelude.Text
  set
    newValue
    IdNamespaceAssociationInputReferencePropertiesProperty {..}
    = IdNamespaceAssociationInputReferencePropertiesProperty
        {idNamespaceType = Prelude.pure newValue, ..}