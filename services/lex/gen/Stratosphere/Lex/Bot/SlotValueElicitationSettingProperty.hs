module Stratosphere.Lex.Bot.SlotValueElicitationSettingProperty (
        module Exports, SlotValueElicitationSettingProperty(..),
        mkSlotValueElicitationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.PromptSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SampleUtteranceProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotCaptureSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotDefaultValueSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.WaitAndContinueSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlotValueElicitationSettingProperty
  = SlotValueElicitationSettingProperty {defaultValueSpecification :: (Prelude.Maybe SlotDefaultValueSpecificationProperty),
                                         promptSpecification :: (Prelude.Maybe PromptSpecificationProperty),
                                         sampleUtterances :: (Prelude.Maybe [SampleUtteranceProperty]),
                                         slotCaptureSetting :: (Prelude.Maybe SlotCaptureSettingProperty),
                                         slotConstraint :: (Value Prelude.Text),
                                         waitAndContinueSpecification :: (Prelude.Maybe WaitAndContinueSpecificationProperty)}
mkSlotValueElicitationSettingProperty ::
  Value Prelude.Text -> SlotValueElicitationSettingProperty
mkSlotValueElicitationSettingProperty slotConstraint
  = SlotValueElicitationSettingProperty
      {slotConstraint = slotConstraint,
       defaultValueSpecification = Prelude.Nothing,
       promptSpecification = Prelude.Nothing,
       sampleUtterances = Prelude.Nothing,
       slotCaptureSetting = Prelude.Nothing,
       waitAndContinueSpecification = Prelude.Nothing}
instance ToResourceProperties SlotValueElicitationSettingProperty where
  toResourceProperties SlotValueElicitationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotValueElicitationSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SlotConstraint" JSON..= slotConstraint]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValueSpecification"
                                 Prelude.<$> defaultValueSpecification,
                               (JSON..=) "PromptSpecification" Prelude.<$> promptSpecification,
                               (JSON..=) "SampleUtterances" Prelude.<$> sampleUtterances,
                               (JSON..=) "SlotCaptureSetting" Prelude.<$> slotCaptureSetting,
                               (JSON..=) "WaitAndContinueSpecification"
                                 Prelude.<$> waitAndContinueSpecification]))}
instance JSON.ToJSON SlotValueElicitationSettingProperty where
  toJSON SlotValueElicitationSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SlotConstraint" JSON..= slotConstraint]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValueSpecification"
                    Prelude.<$> defaultValueSpecification,
                  (JSON..=) "PromptSpecification" Prelude.<$> promptSpecification,
                  (JSON..=) "SampleUtterances" Prelude.<$> sampleUtterances,
                  (JSON..=) "SlotCaptureSetting" Prelude.<$> slotCaptureSetting,
                  (JSON..=) "WaitAndContinueSpecification"
                    Prelude.<$> waitAndContinueSpecification])))
instance Property "DefaultValueSpecification" SlotValueElicitationSettingProperty where
  type PropertyType "DefaultValueSpecification" SlotValueElicitationSettingProperty = SlotDefaultValueSpecificationProperty
  set newValue SlotValueElicitationSettingProperty {..}
    = SlotValueElicitationSettingProperty
        {defaultValueSpecification = Prelude.pure newValue, ..}
instance Property "PromptSpecification" SlotValueElicitationSettingProperty where
  type PropertyType "PromptSpecification" SlotValueElicitationSettingProperty = PromptSpecificationProperty
  set newValue SlotValueElicitationSettingProperty {..}
    = SlotValueElicitationSettingProperty
        {promptSpecification = Prelude.pure newValue, ..}
instance Property "SampleUtterances" SlotValueElicitationSettingProperty where
  type PropertyType "SampleUtterances" SlotValueElicitationSettingProperty = [SampleUtteranceProperty]
  set newValue SlotValueElicitationSettingProperty {..}
    = SlotValueElicitationSettingProperty
        {sampleUtterances = Prelude.pure newValue, ..}
instance Property "SlotCaptureSetting" SlotValueElicitationSettingProperty where
  type PropertyType "SlotCaptureSetting" SlotValueElicitationSettingProperty = SlotCaptureSettingProperty
  set newValue SlotValueElicitationSettingProperty {..}
    = SlotValueElicitationSettingProperty
        {slotCaptureSetting = Prelude.pure newValue, ..}
instance Property "SlotConstraint" SlotValueElicitationSettingProperty where
  type PropertyType "SlotConstraint" SlotValueElicitationSettingProperty = Value Prelude.Text
  set newValue SlotValueElicitationSettingProperty {..}
    = SlotValueElicitationSettingProperty
        {slotConstraint = newValue, ..}
instance Property "WaitAndContinueSpecification" SlotValueElicitationSettingProperty where
  type PropertyType "WaitAndContinueSpecification" SlotValueElicitationSettingProperty = WaitAndContinueSpecificationProperty
  set newValue SlotValueElicitationSettingProperty {..}
    = SlotValueElicitationSettingProperty
        {waitAndContinueSpecification = Prelude.pure newValue, ..}