module Stratosphere.Lex.Bot.GrammarSlotTypeSettingProperty (
        module Exports, GrammarSlotTypeSettingProperty(..),
        mkGrammarSlotTypeSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.GrammarSlotTypeSourceProperty as Exports
import Stratosphere.ResourceProperties
data GrammarSlotTypeSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-grammarslottypesetting.html>
    GrammarSlotTypeSettingProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-grammarslottypesetting.html#cfn-lex-bot-grammarslottypesetting-source>
                                    source :: (Prelude.Maybe GrammarSlotTypeSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrammarSlotTypeSettingProperty :: GrammarSlotTypeSettingProperty
mkGrammarSlotTypeSettingProperty
  = GrammarSlotTypeSettingProperty
      {haddock_workaround_ = (), source = Prelude.Nothing}
instance ToResourceProperties GrammarSlotTypeSettingProperty where
  toResourceProperties GrammarSlotTypeSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.GrammarSlotTypeSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON GrammarSlotTypeSettingProperty where
  toJSON GrammarSlotTypeSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Source" Prelude.<$> source]))
instance Property "Source" GrammarSlotTypeSettingProperty where
  type PropertyType "Source" GrammarSlotTypeSettingProperty = GrammarSlotTypeSourceProperty
  set newValue GrammarSlotTypeSettingProperty {..}
    = GrammarSlotTypeSettingProperty
        {source = Prelude.pure newValue, ..}