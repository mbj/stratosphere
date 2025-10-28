module Stratosphere.Lex.Bot.SlotTypeProperty (
        module Exports, SlotTypeProperty(..), mkSlotTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ExternalSourceSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotTypeValueProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueSelectionSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotTypeProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html>
    SlotTypeProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html#cfn-lex-bot-slottype-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html#cfn-lex-bot-slottype-externalsourcesetting>
                      externalSourceSetting :: (Prelude.Maybe ExternalSourceSettingProperty),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html#cfn-lex-bot-slottype-name>
                      name :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html#cfn-lex-bot-slottype-parentslottypesignature>
                      parentSlotTypeSignature :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html#cfn-lex-bot-slottype-slottypevalues>
                      slotTypeValues :: (Prelude.Maybe [SlotTypeValueProperty]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slottype.html#cfn-lex-bot-slottype-valueselectionsetting>
                      valueSelectionSetting :: (Prelude.Maybe SlotValueSelectionSettingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotTypeProperty :: Value Prelude.Text -> SlotTypeProperty
mkSlotTypeProperty name
  = SlotTypeProperty
      {name = name, description = Prelude.Nothing,
       externalSourceSetting = Prelude.Nothing,
       parentSlotTypeSignature = Prelude.Nothing,
       slotTypeValues = Prelude.Nothing,
       valueSelectionSetting = Prelude.Nothing}
instance ToResourceProperties SlotTypeProperty where
  toResourceProperties SlotTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotType", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExternalSourceSetting"
                                 Prelude.<$> externalSourceSetting,
                               (JSON..=) "ParentSlotTypeSignature"
                                 Prelude.<$> parentSlotTypeSignature,
                               (JSON..=) "SlotTypeValues" Prelude.<$> slotTypeValues,
                               (JSON..=) "ValueSelectionSetting"
                                 Prelude.<$> valueSelectionSetting]))}
instance JSON.ToJSON SlotTypeProperty where
  toJSON SlotTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExternalSourceSetting"
                    Prelude.<$> externalSourceSetting,
                  (JSON..=) "ParentSlotTypeSignature"
                    Prelude.<$> parentSlotTypeSignature,
                  (JSON..=) "SlotTypeValues" Prelude.<$> slotTypeValues,
                  (JSON..=) "ValueSelectionSetting"
                    Prelude.<$> valueSelectionSetting])))
instance Property "Description" SlotTypeProperty where
  type PropertyType "Description" SlotTypeProperty = Value Prelude.Text
  set newValue SlotTypeProperty {..}
    = SlotTypeProperty {description = Prelude.pure newValue, ..}
instance Property "ExternalSourceSetting" SlotTypeProperty where
  type PropertyType "ExternalSourceSetting" SlotTypeProperty = ExternalSourceSettingProperty
  set newValue SlotTypeProperty {..}
    = SlotTypeProperty
        {externalSourceSetting = Prelude.pure newValue, ..}
instance Property "Name" SlotTypeProperty where
  type PropertyType "Name" SlotTypeProperty = Value Prelude.Text
  set newValue SlotTypeProperty {..}
    = SlotTypeProperty {name = newValue, ..}
instance Property "ParentSlotTypeSignature" SlotTypeProperty where
  type PropertyType "ParentSlotTypeSignature" SlotTypeProperty = Value Prelude.Text
  set newValue SlotTypeProperty {..}
    = SlotTypeProperty
        {parentSlotTypeSignature = Prelude.pure newValue, ..}
instance Property "SlotTypeValues" SlotTypeProperty where
  type PropertyType "SlotTypeValues" SlotTypeProperty = [SlotTypeValueProperty]
  set newValue SlotTypeProperty {..}
    = SlotTypeProperty {slotTypeValues = Prelude.pure newValue, ..}
instance Property "ValueSelectionSetting" SlotTypeProperty where
  type PropertyType "ValueSelectionSetting" SlotTypeProperty = SlotValueSelectionSettingProperty
  set newValue SlotTypeProperty {..}
    = SlotTypeProperty
        {valueSelectionSetting = Prelude.pure newValue, ..}