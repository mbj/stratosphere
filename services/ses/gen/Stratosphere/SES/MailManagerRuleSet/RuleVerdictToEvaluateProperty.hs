module Stratosphere.SES.MailManagerRuleSet.RuleVerdictToEvaluateProperty (
        module Exports, RuleVerdictToEvaluateProperty(..),
        mkRuleVerdictToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.AnalysisProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleVerdictToEvaluateProperty
  = RuleVerdictToEvaluateProperty {analysis :: (Prelude.Maybe AnalysisProperty),
                                   attribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleVerdictToEvaluateProperty :: RuleVerdictToEvaluateProperty
mkRuleVerdictToEvaluateProperty
  = RuleVerdictToEvaluateProperty
      {analysis = Prelude.Nothing, attribute = Prelude.Nothing}
instance ToResourceProperties RuleVerdictToEvaluateProperty where
  toResourceProperties RuleVerdictToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleVerdictToEvaluate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Analysis" Prelude.<$> analysis,
                            (JSON..=) "Attribute" Prelude.<$> attribute])}
instance JSON.ToJSON RuleVerdictToEvaluateProperty where
  toJSON RuleVerdictToEvaluateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Analysis" Prelude.<$> analysis,
               (JSON..=) "Attribute" Prelude.<$> attribute]))
instance Property "Analysis" RuleVerdictToEvaluateProperty where
  type PropertyType "Analysis" RuleVerdictToEvaluateProperty = AnalysisProperty
  set newValue RuleVerdictToEvaluateProperty {..}
    = RuleVerdictToEvaluateProperty
        {analysis = Prelude.pure newValue, ..}
instance Property "Attribute" RuleVerdictToEvaluateProperty where
  type PropertyType "Attribute" RuleVerdictToEvaluateProperty = Value Prelude.Text
  set newValue RuleVerdictToEvaluateProperty {..}
    = RuleVerdictToEvaluateProperty
        {attribute = Prelude.pure newValue, ..}