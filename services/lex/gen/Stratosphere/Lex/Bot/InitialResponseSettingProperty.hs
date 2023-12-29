module Stratosphere.Lex.Bot.InitialResponseSettingProperty (
        module Exports, InitialResponseSettingProperty(..),
        mkInitialResponseSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogCodeHookInvocationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data InitialResponseSettingProperty
  = InitialResponseSettingProperty {codeHook :: (Prelude.Maybe DialogCodeHookInvocationSettingProperty),
                                    conditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                    initialResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                    nextStep :: (Prelude.Maybe DialogStateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInitialResponseSettingProperty :: InitialResponseSettingProperty
mkInitialResponseSettingProperty
  = InitialResponseSettingProperty
      {codeHook = Prelude.Nothing, conditional = Prelude.Nothing,
       initialResponse = Prelude.Nothing, nextStep = Prelude.Nothing}
instance ToResourceProperties InitialResponseSettingProperty where
  toResourceProperties InitialResponseSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.InitialResponseSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodeHook" Prelude.<$> codeHook,
                            (JSON..=) "Conditional" Prelude.<$> conditional,
                            (JSON..=) "InitialResponse" Prelude.<$> initialResponse,
                            (JSON..=) "NextStep" Prelude.<$> nextStep])}
instance JSON.ToJSON InitialResponseSettingProperty where
  toJSON InitialResponseSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodeHook" Prelude.<$> codeHook,
               (JSON..=) "Conditional" Prelude.<$> conditional,
               (JSON..=) "InitialResponse" Prelude.<$> initialResponse,
               (JSON..=) "NextStep" Prelude.<$> nextStep]))
instance Property "CodeHook" InitialResponseSettingProperty where
  type PropertyType "CodeHook" InitialResponseSettingProperty = DialogCodeHookInvocationSettingProperty
  set newValue InitialResponseSettingProperty {..}
    = InitialResponseSettingProperty
        {codeHook = Prelude.pure newValue, ..}
instance Property "Conditional" InitialResponseSettingProperty where
  type PropertyType "Conditional" InitialResponseSettingProperty = ConditionalSpecificationProperty
  set newValue InitialResponseSettingProperty {..}
    = InitialResponseSettingProperty
        {conditional = Prelude.pure newValue, ..}
instance Property "InitialResponse" InitialResponseSettingProperty where
  type PropertyType "InitialResponse" InitialResponseSettingProperty = ResponseSpecificationProperty
  set newValue InitialResponseSettingProperty {..}
    = InitialResponseSettingProperty
        {initialResponse = Prelude.pure newValue, ..}
instance Property "NextStep" InitialResponseSettingProperty where
  type PropertyType "NextStep" InitialResponseSettingProperty = DialogStateProperty
  set newValue InitialResponseSettingProperty {..}
    = InitialResponseSettingProperty
        {nextStep = Prelude.pure newValue, ..}