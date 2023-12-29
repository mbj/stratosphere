module Stratosphere.Lex.Bot.ExternalSourceSettingProperty (
        module Exports, ExternalSourceSettingProperty(..),
        mkExternalSourceSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.GrammarSlotTypeSettingProperty as Exports
import Stratosphere.ResourceProperties
data ExternalSourceSettingProperty
  = ExternalSourceSettingProperty {grammarSlotTypeSetting :: (Prelude.Maybe GrammarSlotTypeSettingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExternalSourceSettingProperty :: ExternalSourceSettingProperty
mkExternalSourceSettingProperty
  = ExternalSourceSettingProperty
      {grammarSlotTypeSetting = Prelude.Nothing}
instance ToResourceProperties ExternalSourceSettingProperty where
  toResourceProperties ExternalSourceSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ExternalSourceSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GrammarSlotTypeSetting"
                              Prelude.<$> grammarSlotTypeSetting])}
instance JSON.ToJSON ExternalSourceSettingProperty where
  toJSON ExternalSourceSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GrammarSlotTypeSetting"
                 Prelude.<$> grammarSlotTypeSetting]))
instance Property "GrammarSlotTypeSetting" ExternalSourceSettingProperty where
  type PropertyType "GrammarSlotTypeSetting" ExternalSourceSettingProperty = GrammarSlotTypeSettingProperty
  set newValue ExternalSourceSettingProperty {}
    = ExternalSourceSettingProperty
        {grammarSlotTypeSetting = Prelude.pure newValue, ..}