module Stratosphere.Lex.Bot.DialogCodeHookInvocationSettingProperty (
        module Exports, DialogCodeHookInvocationSettingProperty(..),
        mkDialogCodeHookInvocationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.PostDialogCodeHookInvocationSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DialogCodeHookInvocationSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehookinvocationsetting.html>
    DialogCodeHookInvocationSettingProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehookinvocationsetting.html#cfn-lex-bot-dialogcodehookinvocationsetting-enablecodehookinvocation>
                                             enableCodeHookInvocation :: (Value Prelude.Bool),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehookinvocationsetting.html#cfn-lex-bot-dialogcodehookinvocationsetting-invocationlabel>
                                             invocationLabel :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehookinvocationsetting.html#cfn-lex-bot-dialogcodehookinvocationsetting-isactive>
                                             isActive :: (Value Prelude.Bool),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dialogcodehookinvocationsetting.html#cfn-lex-bot-dialogcodehookinvocationsetting-postcodehookspecification>
                                             postCodeHookSpecification :: PostDialogCodeHookInvocationSpecificationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDialogCodeHookInvocationSettingProperty ::
  Value Prelude.Bool
  -> Value Prelude.Bool
     -> PostDialogCodeHookInvocationSpecificationProperty
        -> DialogCodeHookInvocationSettingProperty
mkDialogCodeHookInvocationSettingProperty
  enableCodeHookInvocation
  isActive
  postCodeHookSpecification
  = DialogCodeHookInvocationSettingProperty
      {haddock_workaround_ = (),
       enableCodeHookInvocation = enableCodeHookInvocation,
       isActive = isActive,
       postCodeHookSpecification = postCodeHookSpecification,
       invocationLabel = Prelude.Nothing}
instance ToResourceProperties DialogCodeHookInvocationSettingProperty where
  toResourceProperties DialogCodeHookInvocationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DialogCodeHookInvocationSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EnableCodeHookInvocation" JSON..= enableCodeHookInvocation,
                            "IsActive" JSON..= isActive,
                            "PostCodeHookSpecification" JSON..= postCodeHookSpecification]
                           (Prelude.catMaybes
                              [(JSON..=) "InvocationLabel" Prelude.<$> invocationLabel]))}
instance JSON.ToJSON DialogCodeHookInvocationSettingProperty where
  toJSON DialogCodeHookInvocationSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EnableCodeHookInvocation" JSON..= enableCodeHookInvocation,
               "IsActive" JSON..= isActive,
               "PostCodeHookSpecification" JSON..= postCodeHookSpecification]
              (Prelude.catMaybes
                 [(JSON..=) "InvocationLabel" Prelude.<$> invocationLabel])))
instance Property "EnableCodeHookInvocation" DialogCodeHookInvocationSettingProperty where
  type PropertyType "EnableCodeHookInvocation" DialogCodeHookInvocationSettingProperty = Value Prelude.Bool
  set newValue DialogCodeHookInvocationSettingProperty {..}
    = DialogCodeHookInvocationSettingProperty
        {enableCodeHookInvocation = newValue, ..}
instance Property "InvocationLabel" DialogCodeHookInvocationSettingProperty where
  type PropertyType "InvocationLabel" DialogCodeHookInvocationSettingProperty = Value Prelude.Text
  set newValue DialogCodeHookInvocationSettingProperty {..}
    = DialogCodeHookInvocationSettingProperty
        {invocationLabel = Prelude.pure newValue, ..}
instance Property "IsActive" DialogCodeHookInvocationSettingProperty where
  type PropertyType "IsActive" DialogCodeHookInvocationSettingProperty = Value Prelude.Bool
  set newValue DialogCodeHookInvocationSettingProperty {..}
    = DialogCodeHookInvocationSettingProperty {isActive = newValue, ..}
instance Property "PostCodeHookSpecification" DialogCodeHookInvocationSettingProperty where
  type PropertyType "PostCodeHookSpecification" DialogCodeHookInvocationSettingProperty = PostDialogCodeHookInvocationSpecificationProperty
  set newValue DialogCodeHookInvocationSettingProperty {..}
    = DialogCodeHookInvocationSettingProperty
        {postCodeHookSpecification = newValue, ..}