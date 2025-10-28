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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-externalsourcesetting.html>
    ExternalSourceSettingProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-externalsourcesetting.html#cfn-lex-bot-externalsourcesetting-grammarslottypesetting>
                                   grammarSlotTypeSetting :: (Prelude.Maybe GrammarSlotTypeSettingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExternalSourceSettingProperty :: ExternalSourceSettingProperty
mkExternalSourceSettingProperty
  = ExternalSourceSettingProperty
      {haddock_workaround_ = (),
       grammarSlotTypeSetting = Prelude.Nothing}
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
  set newValue ExternalSourceSettingProperty {..}
    = ExternalSourceSettingProperty
        {grammarSlotTypeSetting = Prelude.pure newValue, ..}