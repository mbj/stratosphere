module Stratosphere.Lex.Bot.ElicitationCodeHookInvocationSettingProperty (
        ElicitationCodeHookInvocationSettingProperty(..),
        mkElicitationCodeHookInvocationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElicitationCodeHookInvocationSettingProperty
  = ElicitationCodeHookInvocationSettingProperty {enableCodeHookInvocation :: (Value Prelude.Bool),
                                                  invocationLabel :: (Prelude.Maybe (Value Prelude.Text))}
mkElicitationCodeHookInvocationSettingProperty ::
  Value Prelude.Bool -> ElicitationCodeHookInvocationSettingProperty
mkElicitationCodeHookInvocationSettingProperty
  enableCodeHookInvocation
  = ElicitationCodeHookInvocationSettingProperty
      {enableCodeHookInvocation = enableCodeHookInvocation,
       invocationLabel = Prelude.Nothing}
instance ToResourceProperties ElicitationCodeHookInvocationSettingProperty where
  toResourceProperties
    ElicitationCodeHookInvocationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ElicitationCodeHookInvocationSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EnableCodeHookInvocation" JSON..= enableCodeHookInvocation]
                           (Prelude.catMaybes
                              [(JSON..=) "InvocationLabel" Prelude.<$> invocationLabel]))}
instance JSON.ToJSON ElicitationCodeHookInvocationSettingProperty where
  toJSON ElicitationCodeHookInvocationSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EnableCodeHookInvocation" JSON..= enableCodeHookInvocation]
              (Prelude.catMaybes
                 [(JSON..=) "InvocationLabel" Prelude.<$> invocationLabel])))
instance Property "EnableCodeHookInvocation" ElicitationCodeHookInvocationSettingProperty where
  type PropertyType "EnableCodeHookInvocation" ElicitationCodeHookInvocationSettingProperty = Value Prelude.Bool
  set newValue ElicitationCodeHookInvocationSettingProperty {..}
    = ElicitationCodeHookInvocationSettingProperty
        {enableCodeHookInvocation = newValue, ..}
instance Property "InvocationLabel" ElicitationCodeHookInvocationSettingProperty where
  type PropertyType "InvocationLabel" ElicitationCodeHookInvocationSettingProperty = Value Prelude.Text
  set newValue ElicitationCodeHookInvocationSettingProperty {..}
    = ElicitationCodeHookInvocationSettingProperty
        {invocationLabel = Prelude.pure newValue, ..}