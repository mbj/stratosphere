module Stratosphere.IoTTwinMaker.Entity.RelationshipValueProperty (
        RelationshipValueProperty(..), mkRelationshipValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationshipValueProperty
  = RelationshipValueProperty {targetComponentName :: (Prelude.Maybe (Value Prelude.Text)),
                               targetEntityId :: (Prelude.Maybe (Value Prelude.Text))}
mkRelationshipValueProperty :: RelationshipValueProperty
mkRelationshipValueProperty
  = RelationshipValueProperty
      {targetComponentName = Prelude.Nothing,
       targetEntityId = Prelude.Nothing}
instance ToResourceProperties RelationshipValueProperty where
  toResourceProperties RelationshipValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.RelationshipValue",
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