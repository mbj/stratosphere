module Stratosphere.CustomerProfiles.Domain.RuleBasedMatchingProperty (
        module Exports, RuleBasedMatchingProperty(..),
        mkRuleBasedMatchingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.AttributeTypesSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.ConflictResolutionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.ExportingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Domain.MatchingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleBasedMatchingProperty
  = RuleBasedMatchingProperty {attributeTypesSelector :: (Prelude.Maybe AttributeTypesSelectorProperty),
                               conflictResolution :: (Prelude.Maybe ConflictResolutionProperty),
                               enabled :: (Value Prelude.Bool),
                               exportingConfig :: (Prelude.Maybe ExportingConfigProperty),
                               matchingRules :: (Prelude.Maybe [MatchingRuleProperty]),
                               maxAllowedRuleLevelForMatching :: (Prelude.Maybe (Value Prelude.Integer)),
                               maxAllowedRuleLevelForMerging :: (Prelude.Maybe (Value Prelude.Integer)),
                               status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleBasedMatchingProperty ::
  Value Prelude.Bool -> RuleBasedMatchingProperty
mkRuleBasedMatchingProperty enabled
  = RuleBasedMatchingProperty
      {enabled = enabled, attributeTypesSelector = Prelude.Nothing,
       conflictResolution = Prelude.Nothing,
       exportingConfig = Prelude.Nothing, matchingRules = Prelude.Nothing,
       maxAllowedRuleLevelForMatching = Prelude.Nothing,
       maxAllowedRuleLevelForMerging = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties RuleBasedMatchingProperty where
  toResourceProperties RuleBasedMatchingProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.RuleBasedMatching",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeTypesSelector"
                                 Prelude.<$> attributeTypesSelector,
                               (JSON..=) "ConflictResolution" Prelude.<$> conflictResolution,
                               (JSON..=) "ExportingConfig" Prelude.<$> exportingConfig,
                               (JSON..=) "MatchingRules" Prelude.<$> matchingRules,
                               (JSON..=) "MaxAllowedRuleLevelForMatching"
                                 Prelude.<$> maxAllowedRuleLevelForMatching,
                               (JSON..=) "MaxAllowedRuleLevelForMerging"
                                 Prelude.<$> maxAllowedRuleLevelForMerging,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON RuleBasedMatchingProperty where
  toJSON RuleBasedMatchingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeTypesSelector"
                    Prelude.<$> attributeTypesSelector,
                  (JSON..=) "ConflictResolution" Prelude.<$> conflictResolution,
                  (JSON..=) "ExportingConfig" Prelude.<$> exportingConfig,
                  (JSON..=) "MatchingRules" Prelude.<$> matchingRules,
                  (JSON..=) "MaxAllowedRuleLevelForMatching"
                    Prelude.<$> maxAllowedRuleLevelForMatching,
                  (JSON..=) "MaxAllowedRuleLevelForMerging"
                    Prelude.<$> maxAllowedRuleLevelForMerging,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "AttributeTypesSelector" RuleBasedMatchingProperty where
  type PropertyType "AttributeTypesSelector" RuleBasedMatchingProperty = AttributeTypesSelectorProperty
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty
        {attributeTypesSelector = Prelude.pure newValue, ..}
instance Property "ConflictResolution" RuleBasedMatchingProperty where
  type PropertyType "ConflictResolution" RuleBasedMatchingProperty = ConflictResolutionProperty
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty
        {conflictResolution = Prelude.pure newValue, ..}
instance Property "Enabled" RuleBasedMatchingProperty where
  type PropertyType "Enabled" RuleBasedMatchingProperty = Value Prelude.Bool
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty {enabled = newValue, ..}
instance Property "ExportingConfig" RuleBasedMatchingProperty where
  type PropertyType "ExportingConfig" RuleBasedMatchingProperty = ExportingConfigProperty
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty
        {exportingConfig = Prelude.pure newValue, ..}
instance Property "MatchingRules" RuleBasedMatchingProperty where
  type PropertyType "MatchingRules" RuleBasedMatchingProperty = [MatchingRuleProperty]
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty
        {matchingRules = Prelude.pure newValue, ..}
instance Property "MaxAllowedRuleLevelForMatching" RuleBasedMatchingProperty where
  type PropertyType "MaxAllowedRuleLevelForMatching" RuleBasedMatchingProperty = Value Prelude.Integer
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty
        {maxAllowedRuleLevelForMatching = Prelude.pure newValue, ..}
instance Property "MaxAllowedRuleLevelForMerging" RuleBasedMatchingProperty where
  type PropertyType "MaxAllowedRuleLevelForMerging" RuleBasedMatchingProperty = Value Prelude.Integer
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty
        {maxAllowedRuleLevelForMerging = Prelude.pure newValue, ..}
instance Property "Status" RuleBasedMatchingProperty where
  type PropertyType "Status" RuleBasedMatchingProperty = Value Prelude.Text
  set newValue RuleBasedMatchingProperty {..}
    = RuleBasedMatchingProperty {status = Prelude.pure newValue, ..}