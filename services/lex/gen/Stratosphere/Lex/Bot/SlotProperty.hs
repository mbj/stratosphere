module Stratosphere.Lex.Bot.SlotProperty (
        module Exports, SlotProperty(..), mkSlotProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MultipleValuesSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ObfuscationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueElicitationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SubSlotSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html>
    SlotProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-multiplevaluessetting>
                  multipleValuesSetting :: (Prelude.Maybe MultipleValuesSettingProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-obfuscationsetting>
                  obfuscationSetting :: (Prelude.Maybe ObfuscationSettingProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-slottypename>
                  slotTypeName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-subslotsetting>
                  subSlotSetting :: (Prelude.Maybe SubSlotSettingProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slot.html#cfn-lex-bot-slot-valueelicitationsetting>
                  valueElicitationSetting :: SlotValueElicitationSettingProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SlotValueElicitationSettingProperty -> SlotProperty
mkSlotProperty name slotTypeName valueElicitationSetting
  = SlotProperty
      {haddock_workaround_ = (), name = name,
       slotTypeName = slotTypeName,
       valueElicitationSetting = valueElicitationSetting,
       description = Prelude.Nothing,
       multipleValuesSetting = Prelude.Nothing,
       obfuscationSetting = Prelude.Nothing,
       subSlotSetting = Prelude.Nothing}
instance ToResourceProperties SlotProperty where
  toResourceProperties SlotProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Slot", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SlotTypeName" JSON..= slotTypeName,
                            "ValueElicitationSetting" JSON..= valueElicitationSetting]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MultipleValuesSetting"
                                 Prelude.<$> multipleValuesSetting,
                               (JSON..=) "ObfuscationSetting" Prelude.<$> obfuscationSetting,
                               (JSON..=) "SubSlotSetting" Prelude.<$> subSlotSetting]))}
instance JSON.ToJSON SlotProperty where
  toJSON SlotProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SlotTypeName" JSON..= slotTypeName,
               "ValueElicitationSetting" JSON..= valueElicitationSetting]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MultipleValuesSetting"
                    Prelude.<$> multipleValuesSetting,
                  (JSON..=) "ObfuscationSetting" Prelude.<$> obfuscationSetting,
                  (JSON..=) "SubSlotSetting" Prelude.<$> subSlotSetting])))
instance Property "Description" SlotProperty where
  type PropertyType "Description" SlotProperty = Value Prelude.Text
  set newValue SlotProperty {..}
    = SlotProperty {description = Prelude.pure newValue, ..}
instance Property "MultipleValuesSetting" SlotProperty where
  type PropertyType "MultipleValuesSetting" SlotProperty = MultipleValuesSettingProperty
  set newValue SlotProperty {..}
    = SlotProperty {multipleValuesSetting = Prelude.pure newValue, ..}
instance Property "Name" SlotProperty where
  type PropertyType "Name" SlotProperty = Value Prelude.Text
  set newValue SlotProperty {..} = SlotProperty {name = newValue, ..}
instance Property "ObfuscationSetting" SlotProperty where
  type PropertyType "ObfuscationSetting" SlotProperty = ObfuscationSettingProperty
  set newValue SlotProperty {..}
    = SlotProperty {obfuscationSetting = Prelude.pure newValue, ..}
instance Property "SlotTypeName" SlotProperty where
  type PropertyType "SlotTypeName" SlotProperty = Value Prelude.Text
  set newValue SlotProperty {..}
    = SlotProperty {slotTypeName = newValue, ..}
instance Property "SubSlotSetting" SlotProperty where
  type PropertyType "SubSlotSetting" SlotProperty = SubSlotSettingProperty
  set newValue SlotProperty {..}
    = SlotProperty {subSlotSetting = Prelude.pure newValue, ..}
instance Property "ValueElicitationSetting" SlotProperty where
  type PropertyType "ValueElicitationSetting" SlotProperty = SlotValueElicitationSettingProperty
  set newValue SlotProperty {..}
    = SlotProperty {valueElicitationSetting = newValue, ..}