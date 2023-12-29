module Stratosphere.Lex.Bot.IntentProperty (
        module Exports, IntentProperty(..), mkIntentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogCodeHookSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.FulfillmentCodeHookSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.InitialResponseSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.InputContextProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.IntentClosingSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.IntentConfirmationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.KendraConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.OutputContextProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SampleUtteranceProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotPriorityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntentProperty
  = IntentProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                    dialogCodeHook :: (Prelude.Maybe DialogCodeHookSettingProperty),
                    fulfillmentCodeHook :: (Prelude.Maybe FulfillmentCodeHookSettingProperty),
                    initialResponseSetting :: (Prelude.Maybe InitialResponseSettingProperty),
                    inputContexts :: (Prelude.Maybe [InputContextProperty]),
                    intentClosingSetting :: (Prelude.Maybe IntentClosingSettingProperty),
                    intentConfirmationSetting :: (Prelude.Maybe IntentConfirmationSettingProperty),
                    kendraConfiguration :: (Prelude.Maybe KendraConfigurationProperty),
                    name :: (Value Prelude.Text),
                    outputContexts :: (Prelude.Maybe [OutputContextProperty]),
                    parentIntentSignature :: (Prelude.Maybe (Value Prelude.Text)),
                    sampleUtterances :: (Prelude.Maybe [SampleUtteranceProperty]),
                    slotPriorities :: (Prelude.Maybe [SlotPriorityProperty]),
                    slots :: (Prelude.Maybe [SlotProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntentProperty :: Value Prelude.Text -> IntentProperty
mkIntentProperty name
  = IntentProperty
      {name = name, description = Prelude.Nothing,
       dialogCodeHook = Prelude.Nothing,
       fulfillmentCodeHook = Prelude.Nothing,
       initialResponseSetting = Prelude.Nothing,
       inputContexts = Prelude.Nothing,
       intentClosingSetting = Prelude.Nothing,
       intentConfirmationSetting = Prelude.Nothing,
       kendraConfiguration = Prelude.Nothing,
       outputContexts = Prelude.Nothing,
       parentIntentSignature = Prelude.Nothing,
       sampleUtterances = Prelude.Nothing,
       slotPriorities = Prelude.Nothing, slots = Prelude.Nothing}
instance ToResourceProperties IntentProperty where
  toResourceProperties IntentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Intent", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DialogCodeHook" Prelude.<$> dialogCodeHook,
                               (JSON..=) "FulfillmentCodeHook" Prelude.<$> fulfillmentCodeHook,
                               (JSON..=) "InitialResponseSetting"
                                 Prelude.<$> initialResponseSetting,
                               (JSON..=) "InputContexts" Prelude.<$> inputContexts,
                               (JSON..=) "IntentClosingSetting" Prelude.<$> intentClosingSetting,
                               (JSON..=) "IntentConfirmationSetting"
                                 Prelude.<$> intentConfirmationSetting,
                               (JSON..=) "KendraConfiguration" Prelude.<$> kendraConfiguration,
                               (JSON..=) "OutputContexts" Prelude.<$> outputContexts,
                               (JSON..=) "ParentIntentSignature"
                                 Prelude.<$> parentIntentSignature,
                               (JSON..=) "SampleUtterances" Prelude.<$> sampleUtterances,
                               (JSON..=) "SlotPriorities" Prelude.<$> slotPriorities,
                               (JSON..=) "Slots" Prelude.<$> slots]))}
instance JSON.ToJSON IntentProperty where
  toJSON IntentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DialogCodeHook" Prelude.<$> dialogCodeHook,
                  (JSON..=) "FulfillmentCodeHook" Prelude.<$> fulfillmentCodeHook,
                  (JSON..=) "InitialResponseSetting"
                    Prelude.<$> initialResponseSetting,
                  (JSON..=) "InputContexts" Prelude.<$> inputContexts,
                  (JSON..=) "IntentClosingSetting" Prelude.<$> intentClosingSetting,
                  (JSON..=) "IntentConfirmationSetting"
                    Prelude.<$> intentConfirmationSetting,
                  (JSON..=) "KendraConfiguration" Prelude.<$> kendraConfiguration,
                  (JSON..=) "OutputContexts" Prelude.<$> outputContexts,
                  (JSON..=) "ParentIntentSignature"
                    Prelude.<$> parentIntentSignature,
                  (JSON..=) "SampleUtterances" Prelude.<$> sampleUtterances,
                  (JSON..=) "SlotPriorities" Prelude.<$> slotPriorities,
                  (JSON..=) "Slots" Prelude.<$> slots])))
instance Property "Description" IntentProperty where
  type PropertyType "Description" IntentProperty = Value Prelude.Text
  set newValue IntentProperty {..}
    = IntentProperty {description = Prelude.pure newValue, ..}
instance Property "DialogCodeHook" IntentProperty where
  type PropertyType "DialogCodeHook" IntentProperty = DialogCodeHookSettingProperty
  set newValue IntentProperty {..}
    = IntentProperty {dialogCodeHook = Prelude.pure newValue, ..}
instance Property "FulfillmentCodeHook" IntentProperty where
  type PropertyType "FulfillmentCodeHook" IntentProperty = FulfillmentCodeHookSettingProperty
  set newValue IntentProperty {..}
    = IntentProperty {fulfillmentCodeHook = Prelude.pure newValue, ..}
instance Property "InitialResponseSetting" IntentProperty where
  type PropertyType "InitialResponseSetting" IntentProperty = InitialResponseSettingProperty
  set newValue IntentProperty {..}
    = IntentProperty
        {initialResponseSetting = Prelude.pure newValue, ..}
instance Property "InputContexts" IntentProperty where
  type PropertyType "InputContexts" IntentProperty = [InputContextProperty]
  set newValue IntentProperty {..}
    = IntentProperty {inputContexts = Prelude.pure newValue, ..}
instance Property "IntentClosingSetting" IntentProperty where
  type PropertyType "IntentClosingSetting" IntentProperty = IntentClosingSettingProperty
  set newValue IntentProperty {..}
    = IntentProperty {intentClosingSetting = Prelude.pure newValue, ..}
instance Property "IntentConfirmationSetting" IntentProperty where
  type PropertyType "IntentConfirmationSetting" IntentProperty = IntentConfirmationSettingProperty
  set newValue IntentProperty {..}
    = IntentProperty
        {intentConfirmationSetting = Prelude.pure newValue, ..}
instance Property "KendraConfiguration" IntentProperty where
  type PropertyType "KendraConfiguration" IntentProperty = KendraConfigurationProperty
  set newValue IntentProperty {..}
    = IntentProperty {kendraConfiguration = Prelude.pure newValue, ..}
instance Property "Name" IntentProperty where
  type PropertyType "Name" IntentProperty = Value Prelude.Text
  set newValue IntentProperty {..}
    = IntentProperty {name = newValue, ..}
instance Property "OutputContexts" IntentProperty where
  type PropertyType "OutputContexts" IntentProperty = [OutputContextProperty]
  set newValue IntentProperty {..}
    = IntentProperty {outputContexts = Prelude.pure newValue, ..}
instance Property "ParentIntentSignature" IntentProperty where
  type PropertyType "ParentIntentSignature" IntentProperty = Value Prelude.Text
  set newValue IntentProperty {..}
    = IntentProperty
        {parentIntentSignature = Prelude.pure newValue, ..}
instance Property "SampleUtterances" IntentProperty where
  type PropertyType "SampleUtterances" IntentProperty = [SampleUtteranceProperty]
  set newValue IntentProperty {..}
    = IntentProperty {sampleUtterances = Prelude.pure newValue, ..}
instance Property "SlotPriorities" IntentProperty where
  type PropertyType "SlotPriorities" IntentProperty = [SlotPriorityProperty]
  set newValue IntentProperty {..}
    = IntentProperty {slotPriorities = Prelude.pure newValue, ..}
instance Property "Slots" IntentProperty where
  type PropertyType "Slots" IntentProperty = [SlotProperty]
  set newValue IntentProperty {..}
    = IntentProperty {slots = Prelude.pure newValue, ..}