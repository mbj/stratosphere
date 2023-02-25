module Stratosphere.WAFv2.LoggingConfiguration.JsonBodyProperty (
        module Exports, JsonBodyProperty(..), mkJsonBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.MatchPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonBodyProperty
  = JsonBodyProperty {invalidFallbackBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                      matchPattern :: MatchPatternProperty,
                      matchScope :: (Value Prelude.Text)}
mkJsonBodyProperty ::
  MatchPatternProperty -> Value Prelude.Text -> JsonBodyProperty
mkJsonBodyProperty matchPattern matchScope
  = JsonBodyProperty
      {matchPattern = matchPattern, matchScope = matchScope,
       invalidFallbackBehavior = Prelude.Nothing}
instance ToResourceProperties JsonBodyProperty where
  toResourceProperties JsonBodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.JsonBody",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchPattern" JSON..= matchPattern,
                            "MatchScope" JSON..= matchScope]
                           (Prelude.catMaybes
                              [(JSON..=) "InvalidFallbackBehavior"
                                 Prelude.<$> invalidFallbackBehavior]))}
instance JSON.ToJSON JsonBodyProperty where
  toJSON JsonBodyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchPattern" JSON..= matchPattern,
               "MatchScope" JSON..= matchScope]
              (Prelude.catMaybes
                 [(JSON..=) "InvalidFallbackBehavior"
                    Prelude.<$> invalidFallbackBehavior])))
instance Property "InvalidFallbackBehavior" JsonBodyProperty where
  type PropertyType "InvalidFallbackBehavior" JsonBodyProperty = Value Prelude.Text
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty
        {invalidFallbackBehavior = Prelude.pure newValue, ..}
instance Property "MatchPattern" JsonBodyProperty where
  type PropertyType "MatchPattern" JsonBodyProperty = MatchPatternProperty
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty {matchPattern = newValue, ..}
instance Property "MatchScope" JsonBodyProperty where
  type PropertyType "MatchScope" JsonBodyProperty = Value Prelude.Text
  set newValue JsonBodyProperty {..}
    = JsonBodyProperty {matchScope = newValue, ..}