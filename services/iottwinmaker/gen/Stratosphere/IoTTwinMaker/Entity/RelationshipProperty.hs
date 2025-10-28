module Stratosphere.IoTTwinMaker.Entity.RelationshipProperty (
        RelationshipProperty(..), mkRelationshipProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationshipProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-relationship.html>
    RelationshipProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-relationship.html#cfn-iottwinmaker-entity-relationship-relationshiptype>
                          relationshipType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-relationship.html#cfn-iottwinmaker-entity-relationship-targetcomponenttypeid>
                          targetComponentTypeId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelationshipProperty :: RelationshipProperty
mkRelationshipProperty
  = RelationshipProperty
      {haddock_workaround_ = (), relationshipType = Prelude.Nothing,
       targetComponentTypeId = Prelude.Nothing}
instance ToResourceProperties RelationshipProperty where
  toResourceProperties RelationshipProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Relationship",
         supportsTags = Prelude.False,
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