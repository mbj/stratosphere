module Stratosphere.FraudDetector.Detector.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.OutcomeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RuleProperty
  = RuleProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                  createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  detectorId :: (Prelude.Maybe (Value Prelude.Text)),
                  expression :: (Prelude.Maybe (Value Prelude.Text)),
                  language :: (Prelude.Maybe (Value Prelude.Text)),
                  lastUpdatedTime :: (Prelude.Maybe (Value Prelude.Text)),
                  outcomes :: (Prelude.Maybe [OutcomeProperty]),
                  ruleId :: (Prelude.Maybe (Value Prelude.Text)),
                  ruleVersion :: (Prelude.Maybe (Value Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
mkRuleProperty :: RuleProperty
mkRuleProperty
  = RuleProperty
      {arn = Prelude.Nothing, createdTime = Prelude.Nothing,
       description = Prelude.Nothing, detectorId = Prelude.Nothing,
       expression = Prelude.Nothing, language = Prelude.Nothing,
       lastUpdatedTime = Prelude.Nothing, outcomes = Prelude.Nothing,
       ruleId = Prelude.Nothing, ruleVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector.Rule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DetectorId" Prelude.<$> detectorId,
                            (JSON..=) "Expression" Prelude.<$> expression,
                            (JSON..=) "Language" Prelude.<$> language,
                            (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
                            (JSON..=) "Outcomes" Prelude.<$> outcomes,
                            (JSON..=) "RuleId" Prelude.<$> ruleId,
                            (JSON..=) "RuleVersion" Prelude.<$> ruleVersion,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DetectorId" Prelude.<$> detectorId,
               (JSON..=) "Expression" Prelude.<$> expression,
               (JSON..=) "Language" Prelude.<$> language,
               (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
               (JSON..=) "Outcomes" Prelude.<$> outcomes,
               (JSON..=) "RuleId" Prelude.<$> ruleId,
               (JSON..=) "RuleVersion" Prelude.<$> ruleVersion,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Arn" RuleProperty where
  type PropertyType "Arn" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" RuleProperty where
  type PropertyType "CreatedTime" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {createdTime = Prelude.pure newValue, ..}
instance Property "Description" RuleProperty where
  type PropertyType "Description" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {description = Prelude.pure newValue, ..}
instance Property "DetectorId" RuleProperty where
  type PropertyType "DetectorId" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {detectorId = Prelude.pure newValue, ..}
instance Property "Expression" RuleProperty where
  type PropertyType "Expression" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {expression = Prelude.pure newValue, ..}
instance Property "Language" RuleProperty where
  type PropertyType "Language" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {language = Prelude.pure newValue, ..}
instance Property "LastUpdatedTime" RuleProperty where
  type PropertyType "LastUpdatedTime" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {lastUpdatedTime = Prelude.pure newValue, ..}
instance Property "Outcomes" RuleProperty where
  type PropertyType "Outcomes" RuleProperty = [OutcomeProperty]
  set newValue RuleProperty {..}
    = RuleProperty {outcomes = Prelude.pure newValue, ..}
instance Property "RuleId" RuleProperty where
  type PropertyType "RuleId" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {ruleId = Prelude.pure newValue, ..}
instance Property "RuleVersion" RuleProperty where
  type PropertyType "RuleVersion" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {ruleVersion = Prelude.pure newValue, ..}
instance Property "Tags" RuleProperty where
  type PropertyType "Tags" RuleProperty = [Tag]
  set newValue RuleProperty {..}
    = RuleProperty {tags = Prelude.pure newValue, ..}