module Stratosphere.Lex.Bot.SlotProperty (
        module Exports, SlotProperty(..), mkSlotProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MultipleValuesSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ObfuscationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotValueElicitationSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotProperty
  = SlotProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                  multipleValuesSetting :: (Prelude.Maybe MultipleValuesSettingProperty),
                  name :: (Value Prelude.Text),
                  obfuscationSetting :: (Prelude.Maybe ObfuscationSettingProperty),
                  slotTypeName :: (Value Prelude.Text),
                  valueElicitationSetting :: SlotValueElicitationSettingProperty}
mkSlotProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SlotValueElicitationSettingProperty -> SlotProperty
mkSlotProperty name slotTypeName valueElicitationSetting
  = SlotProperty
      {name = name, slotTypeName = slotTypeName,
       valueElicitationSetting = valueElicitationSetting,
       description = Prelude.Nothing,
       multipleValuesSetting = Prelude.Nothing,
       obfuscationSetting = Prelude.Nothing}
instance ToResourceProperties SlotProperty where
  toResourceProperties SlotProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Slot",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SlotTypeName" JSON..= slotTypeName,
                            "ValueElicitationSetting" JSON..= valueElicitationSetting]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MultipleValuesSetting"
                                 Prelude.<$> multipleValuesSetting,
                               (JSON..=) "ObfuscationSetting" Prelude.<$> obfuscationSetting]))}
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
                  (JSON..=) "ObfuscationSetting" Prelude.<$> obfuscationSetting])))
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
instance Property "ValueElicitationSetting" SlotProperty where
  type PropertyType "ValueElicitationSetting" SlotProperty = SlotValueElicitationSettingProperty
  set newValue SlotProperty {..}
    = SlotProperty {valueElicitationSetting = newValue, ..}