module Stratosphere.XRay.SamplingRule (
        module Exports, SamplingRule(..), mkSamplingRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.XRay.SamplingRule.SamplingRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.XRay.SamplingRule.SamplingRuleRecordProperty as Exports
import {-# SOURCE #-} Stratosphere.XRay.SamplingRule.SamplingRuleUpdateProperty as Exports
import {-# SOURCE #-} Stratosphere.XRay.SamplingRule.TagsItemsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamplingRule
  = SamplingRule {ruleName :: (Prelude.Maybe (Value Prelude.Text)),
                  samplingRule :: (Prelude.Maybe SamplingRuleProperty),
                  samplingRuleRecord :: (Prelude.Maybe SamplingRuleRecordProperty),
                  samplingRuleUpdate :: (Prelude.Maybe SamplingRuleUpdateProperty),
                  tags :: (Prelude.Maybe [TagsItemsProperty])}
mkSamplingRule :: SamplingRule
mkSamplingRule
  = SamplingRule
      {ruleName = Prelude.Nothing, samplingRule = Prelude.Nothing,
       samplingRuleRecord = Prelude.Nothing,
       samplingRuleUpdate = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SamplingRule where
  toResourceProperties SamplingRule {..}
    = ResourceProperties
        {awsType = "AWS::XRay::SamplingRule", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RuleName" Prelude.<$> ruleName,
                            (JSON..=) "SamplingRule" Prelude.<$> samplingRule,
                            (JSON..=) "SamplingRuleRecord" Prelude.<$> samplingRuleRecord,
                            (JSON..=) "SamplingRuleUpdate" Prelude.<$> samplingRuleUpdate,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SamplingRule where
  toJSON SamplingRule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RuleName" Prelude.<$> ruleName,
               (JSON..=) "SamplingRule" Prelude.<$> samplingRule,
               (JSON..=) "SamplingRuleRecord" Prelude.<$> samplingRuleRecord,
               (JSON..=) "SamplingRuleUpdate" Prelude.<$> samplingRuleUpdate,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "RuleName" SamplingRule where
  type PropertyType "RuleName" SamplingRule = Value Prelude.Text
  set newValue SamplingRule {..}
    = SamplingRule {ruleName = Prelude.pure newValue, ..}
instance Property "SamplingRule" SamplingRule where
  type PropertyType "SamplingRule" SamplingRule = SamplingRuleProperty
  set newValue SamplingRule {..}
    = SamplingRule {samplingRule = Prelude.pure newValue, ..}
instance Property "SamplingRuleRecord" SamplingRule where
  type PropertyType "SamplingRuleRecord" SamplingRule = SamplingRuleRecordProperty
  set newValue SamplingRule {..}
    = SamplingRule {samplingRuleRecord = Prelude.pure newValue, ..}
instance Property "SamplingRuleUpdate" SamplingRule where
  type PropertyType "SamplingRuleUpdate" SamplingRule = SamplingRuleUpdateProperty
  set newValue SamplingRule {..}
    = SamplingRule {samplingRuleUpdate = Prelude.pure newValue, ..}
instance Property "Tags" SamplingRule where
  type PropertyType "Tags" SamplingRule = [TagsItemsProperty]
  set newValue SamplingRule {..}
    = SamplingRule {tags = Prelude.pure newValue, ..}