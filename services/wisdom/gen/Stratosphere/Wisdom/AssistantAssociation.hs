module Stratosphere.Wisdom.AssistantAssociation (
        module Exports, AssistantAssociation(..), mkAssistantAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AssistantAssociation.AssociationDataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AssistantAssociation
  = AssistantAssociation {assistantId :: (Value Prelude.Text),
                          association :: AssociationDataProperty,
                          associationType :: (Value Prelude.Text),
                          tags :: (Prelude.Maybe [Tag])}
mkAssistantAssociation ::
  Value Prelude.Text
  -> AssociationDataProperty
     -> Value Prelude.Text -> AssistantAssociation
mkAssistantAssociation assistantId association associationType
  = AssistantAssociation
      {assistantId = assistantId, association = association,
       associationType = associationType, tags = Prelude.Nothing}
instance ToResourceProperties AssistantAssociation where
  toResourceProperties AssistantAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AssistantAssociation",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssistantId" JSON..= assistantId,
                            "Association" JSON..= association,
                            "AssociationType" JSON..= associationType]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AssistantAssociation where
  toJSON AssistantAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssistantId" JSON..= assistantId,
               "Association" JSON..= association,
               "AssociationType" JSON..= associationType]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssistantId" AssistantAssociation where
  type PropertyType "AssistantId" AssistantAssociation = Value Prelude.Text
  set newValue AssistantAssociation {..}
    = AssistantAssociation {assistantId = newValue, ..}
instance Property "Association" AssistantAssociation where
  type PropertyType "Association" AssistantAssociation = AssociationDataProperty
  set newValue AssistantAssociation {..}
    = AssistantAssociation {association = newValue, ..}
instance Property "AssociationType" AssistantAssociation where
  type PropertyType "AssociationType" AssistantAssociation = Value Prelude.Text
  set newValue AssistantAssociation {..}
    = AssistantAssociation {associationType = newValue, ..}
instance Property "Tags" AssistantAssociation where
  type PropertyType "Tags" AssistantAssociation = [Tag]
  set newValue AssistantAssociation {..}
    = AssistantAssociation {tags = Prelude.pure newValue, ..}