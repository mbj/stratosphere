module Stratosphere.WorkSpaces.ConnectionAlias.ConnectionAliasAssociationProperty (
        ConnectionAliasAssociationProperty(..),
        mkConnectionAliasAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionAliasAssociationProperty
  = ConnectionAliasAssociationProperty {associatedAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                        associationStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                        connectionIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                        resourceId :: (Prelude.Maybe (Value Prelude.Text))}
mkConnectionAliasAssociationProperty ::
  ConnectionAliasAssociationProperty
mkConnectionAliasAssociationProperty
  = ConnectionAliasAssociationProperty
      {associatedAccountId = Prelude.Nothing,
       associationStatus = Prelude.Nothing,
       connectionIdentifier = Prelude.Nothing,
       resourceId = Prelude.Nothing}
instance ToResourceProperties ConnectionAliasAssociationProperty where
  toResourceProperties ConnectionAliasAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::ConnectionAlias.ConnectionAliasAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssociatedAccountId" Prelude.<$> associatedAccountId,
                            (JSON..=) "AssociationStatus" Prelude.<$> associationStatus,
                            (JSON..=) "ConnectionIdentifier" Prelude.<$> connectionIdentifier,
                            (JSON..=) "ResourceId" Prelude.<$> resourceId])}
instance JSON.ToJSON ConnectionAliasAssociationProperty where
  toJSON ConnectionAliasAssociationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssociatedAccountId" Prelude.<$> associatedAccountId,
               (JSON..=) "AssociationStatus" Prelude.<$> associationStatus,
               (JSON..=) "ConnectionIdentifier" Prelude.<$> connectionIdentifier,
               (JSON..=) "ResourceId" Prelude.<$> resourceId]))
instance Property "AssociatedAccountId" ConnectionAliasAssociationProperty where
  type PropertyType "AssociatedAccountId" ConnectionAliasAssociationProperty = Value Prelude.Text
  set newValue ConnectionAliasAssociationProperty {..}
    = ConnectionAliasAssociationProperty
        {associatedAccountId = Prelude.pure newValue, ..}
instance Property "AssociationStatus" ConnectionAliasAssociationProperty where
  type PropertyType "AssociationStatus" ConnectionAliasAssociationProperty = Value Prelude.Text
  set newValue ConnectionAliasAssociationProperty {..}
    = ConnectionAliasAssociationProperty
        {associationStatus = Prelude.pure newValue, ..}
instance Property "ConnectionIdentifier" ConnectionAliasAssociationProperty where
  type PropertyType "ConnectionIdentifier" ConnectionAliasAssociationProperty = Value Prelude.Text
  set newValue ConnectionAliasAssociationProperty {..}
    = ConnectionAliasAssociationProperty
        {connectionIdentifier = Prelude.pure newValue, ..}
instance Property "ResourceId" ConnectionAliasAssociationProperty where
  type PropertyType "ResourceId" ConnectionAliasAssociationProperty = Value Prelude.Text
  set newValue ConnectionAliasAssociationProperty {..}
    = ConnectionAliasAssociationProperty
        {resourceId = Prelude.pure newValue, ..}