module Stratosphere.Lex.Bot.SlotCaptureSettingProperty (
        module Exports, SlotCaptureSettingProperty(..),
        mkSlotCaptureSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogCodeHookInvocationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ElicitationCodeHookInvocationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data SlotCaptureSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html>
    SlotCaptureSettingProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-captureconditional>
                                captureConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-capturenextstep>
                                captureNextStep :: (Prelude.Maybe DialogStateProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-captureresponse>
                                captureResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-codehook>
                                codeHook :: (Prelude.Maybe DialogCodeHookInvocationSettingProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-elicitationcodehook>
                                elicitationCodeHook :: (Prelude.Maybe ElicitationCodeHookInvocationSettingProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-failureconditional>
                                failureConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-failurenextstep>
                                failureNextStep :: (Prelude.Maybe DialogStateProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-slotcapturesetting.html#cfn-lex-bot-slotcapturesetting-failureresponse>
                                failureResponse :: (Prelude.Maybe ResponseSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlotCaptureSettingProperty :: SlotCaptureSettingProperty
mkSlotCaptureSettingProperty
  = SlotCaptureSettingProperty
      {haddock_workaround_ = (), captureConditional = Prelude.Nothing,
       captureNextStep = Prelude.Nothing,
       captureResponse = Prelude.Nothing, codeHook = Prelude.Nothing,
       elicitationCodeHook = Prelude.Nothing,
       failureConditional = Prelude.Nothing,
       failureNextStep = Prelude.Nothing,
       failureResponse = Prelude.Nothing}
instance ToResourceProperties SlotCaptureSettingProperty where
  toResourceProperties SlotCaptureSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SlotCaptureSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaptureConditional" Prelude.<$> captureConditional,
                            (JSON..=) "CaptureNextStep" Prelude.<$> captureNextStep,
                            (JSON..=) "CaptureResponse" Prelude.<$> captureResponse,
                            (JSON..=) "CodeHook" Prelude.<$> codeHook,
                            (JSON..=) "ElicitationCodeHook" Prelude.<$> elicitationCodeHook,
                            (JSON..=) "FailureConditional" Prelude.<$> failureConditional,
                            (JSON..=) "FailureNextStep" Prelude.<$> failureNextStep,
                            (JSON..=) "FailureResponse" Prelude.<$> failureResponse])}
instance JSON.ToJSON SlotCaptureSettingProperty where
  toJSON SlotCaptureSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaptureConditional" Prelude.<$> captureConditional,
               (JSON..=) "CaptureNextStep" Prelude.<$> captureNextStep,
               (JSON..=) "CaptureResponse" Prelude.<$> captureResponse,
               (JSON..=) "CodeHook" Prelude.<$> codeHook,
               (JSON..=) "ElicitationCodeHook" Prelude.<$> elicitationCodeHook,
               (JSON..=) "FailureConditional" Prelude.<$> failureConditional,
               (JSON..=) "FailureNextStep" Prelude.<$> failureNextStep,
               (JSON..=) "FailureResponse" Prelude.<$> failureResponse]))
instance Property "CaptureConditional" SlotCaptureSettingProperty where
  type PropertyType "CaptureConditional" SlotCaptureSettingProperty = ConditionalSpecificationProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {captureConditional = Prelude.pure newValue, ..}
instance Property "CaptureNextStep" SlotCaptureSettingProperty where
  type PropertyType "CaptureNextStep" SlotCaptureSettingProperty = DialogStateProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {captureNextStep = Prelude.pure newValue, ..}
instance Property "CaptureResponse" SlotCaptureSettingProperty where
  type PropertyType "CaptureResponse" SlotCaptureSettingProperty = ResponseSpecificationProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {captureResponse = Prelude.pure newValue, ..}
instance Property "CodeHook" SlotCaptureSettingProperty where
  type PropertyType "CodeHook" SlotCaptureSettingProperty = DialogCodeHookInvocationSettingProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty {codeHook = Prelude.pure newValue, ..}
instance Property "ElicitationCodeHook" SlotCaptureSettingProperty where
  type PropertyType "ElicitationCodeHook" SlotCaptureSettingProperty = ElicitationCodeHookInvocationSettingProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {elicitationCodeHook = Prelude.pure newValue, ..}
instance Property "FailureConditional" SlotCaptureSettingProperty where
  type PropertyType "FailureConditional" SlotCaptureSettingProperty = ConditionalSpecificationProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {failureConditional = Prelude.pure newValue, ..}
instance Property "FailureNextStep" SlotCaptureSettingProperty where
  type PropertyType "FailureNextStep" SlotCaptureSettingProperty = DialogStateProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {failureNextStep = Prelude.pure newValue, ..}
instance Property "FailureResponse" SlotCaptureSettingProperty where
  type PropertyType "FailureResponse" SlotCaptureSettingProperty = ResponseSpecificationProperty
  set newValue SlotCaptureSettingProperty {..}
    = SlotCaptureSettingProperty
        {failureResponse = Prelude.pure newValue, ..}