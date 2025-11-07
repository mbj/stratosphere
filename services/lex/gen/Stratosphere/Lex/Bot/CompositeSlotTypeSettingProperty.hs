module Stratosphere.Lex.Bot.CompositeSlotTypeSettingProperty (
        module Exports, CompositeSlotTypeSettingProperty(..),
        mkCompositeSlotTypeSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.SubSlotTypeCompositionProperty as Exports
import Stratosphere.ResourceProperties
data CompositeSlotTypeSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-compositeslottypesetting.html>
    CompositeSlotTypeSettingProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-compositeslottypesetting.html#cfn-lex-bot-compositeslottypesetting-subslots>
                                      subSlots :: (Prelude.Maybe [SubSlotTypeCompositionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompositeSlotTypeSettingProperty ::
  CompositeSlotTypeSettingProperty
mkCompositeSlotTypeSettingProperty
  = CompositeSlotTypeSettingProperty
      {haddock_workaround_ = (), subSlots = Prelude.Nothing}
instance ToResourceProperties CompositeSlotTypeSettingProperty where
  toResourceProperties CompositeSlotTypeSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CompositeSlotTypeSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SubSlots" Prelude.<$> subSlots])}
instance JSON.ToJSON CompositeSlotTypeSettingProperty where
  toJSON CompositeSlotTypeSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SubSlots" Prelude.<$> subSlots]))
instance Property "SubSlots" CompositeSlotTypeSettingProperty where
  type PropertyType "SubSlots" CompositeSlotTypeSettingProperty = [SubSlotTypeCompositionProperty]
  set newValue CompositeSlotTypeSettingProperty {..}
    = CompositeSlotTypeSettingProperty
        {subSlots = Prelude.pure newValue, ..}