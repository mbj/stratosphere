module Stratosphere.IoTTwinMaker.ComponentType.RelationshipValueProperty (
        RelationshipValueProperty(..), mkRelationshipValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationshipValueProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-relationshipvalue.html>
    RelationshipValueProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-relationshipvalue.html#cfn-iottwinmaker-componenttype-relationshipvalue-targetcomponentname>
                               targetComponentName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-relationshipvalue.html#cfn-iottwinmaker-componenttype-relationshipvalue-targetentityid>
                               targetEntityId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelationshipValueProperty :: RelationshipValueProperty
mkRelationshipValueProperty
  = RelationshipValueProperty
      {targetComponentName = Prelude.Nothing,
       targetEntityId = Prelude.Nothing}
instance ToResourceProperties RelationshipValueProperty where
  toResourceProperties RelationshipValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.RelationshipValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetComponentName" Prelude.<$> targetComponentName,
                            (JSON..=) "TargetEntityId" Prelude.<$> targetEntityId])}
instance JSON.ToJSON RelationshipValueProperty where
  toJSON RelationshipValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetComponentName" Prelude.<$> targetComponentName,
               (JSON..=) "TargetEntityId" Prelude.<$> targetEntityId]))
instance Property "TargetComponentName" RelationshipValueProperty where
  type PropertyType "TargetComponentName" RelationshipValueProperty = Value Prelude.Text
  set newValue RelationshipValueProperty {..}
    = RelationshipValueProperty
        {targetComponentName = Prelude.pure newValue, ..}
instance Property "TargetEntityId" RelationshipValueProperty where
  type PropertyType "TargetEntityId" RelationshipValueProperty = Value Prelude.Text
  set newValue RelationshipValueProperty {..}
    = RelationshipValueProperty
        {targetEntityId = Prelude.pure newValue, ..}