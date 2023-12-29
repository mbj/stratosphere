module Stratosphere.Lex.Bot.IntentClosingSettingProperty (
        module Exports, IntentClosingSettingProperty(..),
        mkIntentClosingSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntentClosingSettingProperty
  = IntentClosingSettingProperty {closingResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                  conditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                  isActive :: (Prelude.Maybe (Value Prelude.Bool)),
                                  nextStep :: (Prelude.Maybe DialogStateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntentClosingSettingProperty :: IntentClosingSettingProperty
mkIntentClosingSettingProperty
  = IntentClosingSettingProperty
      {closingResponse = Prelude.Nothing, conditional = Prelude.Nothing,
       isActive = Prelude.Nothing, nextStep = Prelude.Nothing}
instance ToResourceProperties IntentClosingSettingProperty where
  toResourceProperties IntentClosingSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.IntentClosingSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClosingResponse" Prelude.<$> closingResponse,
                            (JSON..=) "Conditional" Prelude.<$> conditional,
                            (JSON..=) "IsActive" Prelude.<$> isActive,
                            (JSON..=) "NextStep" Prelude.<$> nextStep])}
instance JSON.ToJSON IntentClosingSettingProperty where
  toJSON IntentClosingSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClosingResponse" Prelude.<$> closingResponse,
               (JSON..=) "Conditional" Prelude.<$> conditional,
               (JSON..=) "IsActive" Prelude.<$> isActive,
               (JSON..=) "NextStep" Prelude.<$> nextStep]))
instance Property "ClosingResponse" IntentClosingSettingProperty where
  type PropertyType "ClosingResponse" IntentClosingSettingProperty = ResponseSpecificationProperty
  set newValue IntentClosingSettingProperty {..}
    = IntentClosingSettingProperty
        {closingResponse = Prelude.pure newValue, ..}
instance Property "Conditional" IntentClosingSettingProperty where
  type PropertyType "Conditional" IntentClosingSettingProperty = ConditionalSpecificationProperty
  set newValue IntentClosingSettingProperty {..}
    = IntentClosingSettingProperty
        {conditional = Prelude.pure newValue, ..}
instance Property "IsActive" IntentClosingSettingProperty where
  type PropertyType "IsActive" IntentClosingSettingProperty = Value Prelude.Bool
  set newValue IntentClosingSettingProperty {..}
    = IntentClosingSettingProperty
        {isActive = Prelude.pure newValue, ..}
instance Property "NextStep" IntentClosingSettingProperty where
  type PropertyType "NextStep" IntentClosingSettingProperty = DialogStateProperty
  set newValue IntentClosingSettingProperty {..}
    = IntentClosingSettingProperty
        {nextStep = Prelude.pure newValue, ..}