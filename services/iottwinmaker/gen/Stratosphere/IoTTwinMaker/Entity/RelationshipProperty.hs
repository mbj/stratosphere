module Stratosphere.IoTTwinMaker.Entity.RelationshipProperty (
        RelationshipProperty(..), mkRelationshipProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationshipProperty
  = RelationshipProperty {relationshipType :: (Prelude.Maybe (Value Prelude.Text)),
                          targetComponentTypeId :: (Prelude.Maybe (Value Prelude.Text))}
mkRelationshipProperty :: RelationshipProperty
mkRelationshipProperty
  = RelationshipProperty
      {relationshipType = Prelude.Nothing,
       targetComponentTypeId = Prelude.Nothing}
instance ToResourceProperties RelationshipProperty where
  toResourceProperties RelationshipProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Relationship",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RelationshipType" Prelude.<$> relationshipType,
                            (JSON..=) "TargetComponentTypeId"
                              Prelude.<$> targetComponentTypeId])}
instance JSON.ToJSON RelationshipProperty where
  toJSON RelationshipProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RelationshipType" Prelude.<$> relationshipType,
               (JSON..=) "TargetComponentTypeId"
                 Prelude.<$> targetComponentTypeId]))
instance Property "RelationshipType" RelationshipProperty where
  type PropertyType "RelationshipType" RelationshipProperty = Value Prelude.Text
  set newValue RelationshipProperty {..}
    = RelationshipProperty
        {relationshipType = Prelude.pure newValue, ..}
instance Property "TargetComponentTypeId" RelationshipProperty where
  type PropertyType "TargetComponentTypeId" RelationshipProperty = Value Prelude.Text
  set newValue RelationshipProperty {..}
    = RelationshipProperty
        {targetComponentTypeId = Prelude.pure newValue, ..}