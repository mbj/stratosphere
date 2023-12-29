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
  = DialogCodeHookInvocationSettingProperty {enableCodeHookInvocation :: (Value Prelude.Bool),
                                             invocationLabel :: (Prelude.Maybe (Value Prelude.Text)),
                                             isActive :: (Value Prelude.Bool),
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
      {enableCodeHookInvocation = enableCodeHookInvocation,
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