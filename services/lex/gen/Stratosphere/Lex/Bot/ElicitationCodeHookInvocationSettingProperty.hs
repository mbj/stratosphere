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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-elicitationcodehookinvocationsetting.html>
    ElicitationCodeHookInvocationSettingProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-elicitationcodehookinvocationsetting.html#cfn-lex-bot-elicitationcodehookinvocationsetting-enablecodehookinvocation>
                                                  enableCodeHookInvocation :: (Value Prelude.Bool),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-elicitationcodehookinvocationsetting.html#cfn-lex-bot-elicitationcodehookinvocationsetting-invocationlabel>
                                                  invocationLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElicitationCodeHookInvocationSettingProperty ::
  Value Prelude.Bool -> ElicitationCodeHookInvocationSettingProperty
mkElicitationCodeHookInvocationSettingProperty
  enableCodeHookInvocation
  = ElicitationCodeHookInvocationSettingProperty
      {haddock_workaround_ = (),
       enableCodeHookInvocation = enableCodeHookInvocation,
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