module Stratosphere.Lex.Bot.SubSlotValueElicitationSettingProperty (
        module Exports, SubSlotValueElicitationSettingProperty(..),
        mkSubSlotValueElicitationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.PromptSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SampleUtteranceProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotDefaultValueSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.WaitAndContinueSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data SubSlotValueElicitationSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotvalueelicitationsetting.html>
    SubSlotValueElicitationSettingProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotvalueelicitationsetting.html#cfn-lex-bot-subslotvalueelicitationsetting-defaultvaluespecification>
                                            defaultValueSpecification :: (Prelude.Maybe SlotDefaultValueSpecificationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotvalueelicitationsetting.html#cfn-lex-bot-subslotvalueelicitationsetting-promptspecification>
                                            promptSpecification :: (Prelude.Maybe PromptSpecificationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotvalueelicitationsetting.html#cfn-lex-bot-subslotvalueelicitationsetting-sampleutterances>
                                            sampleUtterances :: (Prelude.Maybe [SampleUtteranceProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-subslotvalueelicitationsetting.html#cfn-lex-bot-subslotvalueelicitationsetting-waitandcontinuespecification>
                                            waitAndContinueSpecification :: (Prelude.Maybe WaitAndContinueSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubSlotValueElicitationSettingProperty ::
  SubSlotValueElicitationSettingProperty
mkSubSlotValueElicitationSettingProperty
  = SubSlotValueElicitationSettingProperty
      {haddock_workaround_ = (),
       defaultValueSpecification = Prelude.Nothing,
       promptSpecification = Prelude.Nothing,
       sampleUtterances = Prelude.Nothing,
       waitAndContinueSpecification = Prelude.Nothing}
instance ToResourceProperties SubSlotValueElicitationSettingProperty where
  toResourceProperties SubSlotValueElicitationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SubSlotValueElicitationSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultValueSpecification"
                              Prelude.<$> defaultValueSpecification,
                            (JSON..=) "PromptSpecification" Prelude.<$> promptSpecification,
                            (JSON..=) "SampleUtterances" Prelude.<$> sampleUtterances,
                            (JSON..=) "WaitAndContinueSpecification"
                              Prelude.<$> waitAndContinueSpecification])}
instance JSON.ToJSON SubSlotValueElicitationSettingProperty where
  toJSON SubSlotValueElicitationSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultValueSpecification"
                 Prelude.<$> defaultValueSpecification,
               (JSON..=) "PromptSpecification" Prelude.<$> promptSpecification,
               (JSON..=) "SampleUtterances" Prelude.<$> sampleUtterances,
               (JSON..=) "WaitAndContinueSpecification"
                 Prelude.<$> waitAndContinueSpecification]))
instance Property "DefaultValueSpecification" SubSlotValueElicitationSettingProperty where
  type PropertyType "DefaultValueSpecification" SubSlotValueElicitationSettingProperty = SlotDefaultValueSpecificationProperty
  set newValue SubSlotValueElicitationSettingProperty {..}
    = SubSlotValueElicitationSettingProperty
        {defaultValueSpecification = Prelude.pure newValue, ..}
instance Property "PromptSpecification" SubSlotValueElicitationSettingProperty where
  type PropertyType "PromptSpecification" SubSlotValueElicitationSettingProperty = PromptSpecificationProperty
  set newValue SubSlotValueElicitationSettingProperty {..}
    = SubSlotValueElicitationSettingProperty
        {promptSpecification = Prelude.pure newValue, ..}
instance Property "SampleUtterances" SubSlotValueElicitationSettingProperty where
  type PropertyType "SampleUtterances" SubSlotValueElicitationSettingProperty = [SampleUtteranceProperty]
  set newValue SubSlotValueElicitationSettingProperty {..}
    = SubSlotValueElicitationSettingProperty
        {sampleUtterances = Prelude.pure newValue, ..}
instance Property "WaitAndContinueSpecification" SubSlotValueElicitationSettingProperty where
  type PropertyType "WaitAndContinueSpecification" SubSlotValueElicitationSettingProperty = WaitAndContinueSpecificationProperty
  set newValue SubSlotValueElicitationSettingProperty {..}
    = SubSlotValueElicitationSettingProperty
        {waitAndContinueSpecification = Prelude.pure newValue, ..}