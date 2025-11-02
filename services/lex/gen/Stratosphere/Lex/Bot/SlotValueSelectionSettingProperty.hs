module Stratosphere.Lex.Bot.SlotValueSelectionSettingProperty (
        module Exports, SlotValueSelectionSettingProperty(..),
        mkSlotValueSelectionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.AdvancedRecognitionSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueRegexFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueSelectionSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html>
    SlotValueSelectionSettingProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html#cfn-lex-bot-slotvalueselectionsetting-advancedrecognitionsetting>
                                       advancedRecognitionSetting :: (Prelude.Maybe AdvancedRecognitionSettingProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html#cfn-lex-bot-slotvalueselectionsetting-regexfilter>
                                       regexFilter :: (Prelude.Maybe SlotValueRegexFilterProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotvalueselectionsetting.html#cfn-lex-bot-slotvalueselectionsetting-resolutionstrategy>
                                       resolutionStrategy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotValueSelectionSettingProperty ::
  Value Prelude.Text -> SlotValueSelectionSettingProperty
mkSlotValueSelectionSettingProperty resolutionStrategy
  = SlotValueSelectionSettingProperty
      {haddock_workaround_ = (), resolutionStrategy = resolutionStrategy,
       advancedRecognitionSetting = Prelude.Nothing,
       regexFilter = Prelude.Nothing}
instance ToResourceProperties SlotValueSelectionSettingProperty where
  toResourceProperties SlotValueSelectionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValueSelectionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResolutionStrategy" JSON..= resolutionStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "AdvancedRecognitionSetting"
                                 Prelude.<$> advancedRecognitionSetting,
                               (JSON..=) "RegexFilter" Prelude.<$> regexFilter]))}
instance JSON.ToJSON SlotValueSelectionSettingProperty where
  toJSON SlotValueSelectionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResolutionStrategy" JSON..= resolutionStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "AdvancedRecognitionSetting"
                    Prelude.<$> advancedRecognitionSetting,
                  (JSON..=) "RegexFilter" Prelude.<$> regexFilter])))
instance Property "AdvancedRecognitionSetting" SlotValueSelectionSettingProperty where
  type PropertyType "AdvancedRecognitionSetting" SlotValueSelectionSettingProperty = AdvancedRecognitionSettingProperty
  set newValue SlotValueSelectionSettingProperty {..}
    = SlotValueSelectionSettingProperty
        {advancedRecognitionSetting = Prelude.pure newValue, ..}
instance Property "RegexFilter" SlotValueSelectionSettingProperty where
  type PropertyType "RegexFilter" SlotValueSelectionSettingProperty = SlotValueRegexFilterProperty
  set newValue SlotValueSelectionSettingProperty {..}
    = SlotValueSelectionSettingProperty
        {regexFilter = Prelude.pure newValue, ..}
instance Property "ResolutionStrategy" SlotValueSelectionSettingProperty where
  type PropertyType "ResolutionStrategy" SlotValueSelectionSettingProperty = Value Prelude.Text
  set newValue SlotValueSelectionSettingProperty {..}
    = SlotValueSelectionSettingProperty
        {resolutionStrategy = newValue, ..}