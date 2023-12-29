module Stratosphere.XRay.SamplingRule (
        module Exports, SamplingRule(..), mkSamplingRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.XRay.SamplingRule.SamplingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data SamplingRule
  = SamplingRule {samplingRule :: (Prelude.Maybe SamplingRuleProperty),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSamplingRule :: SamplingRule
mkSamplingRule
  = SamplingRule
      {samplingRule = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SamplingRule where
  toResourceProperties SamplingRule {..}
    = ResourceProperties
        {awsType = "AWS::XRay::SamplingRule", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SamplingRule" Prelude.<$> samplingRule,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SamplingRule where
  toJSON SamplingRule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SamplingRule" Prelude.<$> samplingRule,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "SamplingRule" SamplingRule where
  type PropertyType "SamplingRule" SamplingRule = SamplingRuleProperty
  set newValue SamplingRule {..}
    = SamplingRule {samplingRule = Prelude.pure newValue, ..}
instance Property "Tags" SamplingRule where
  type PropertyType "Tags" SamplingRule = [Tag]
  set newValue SamplingRule {..}
    = SamplingRule {tags = Prelude.pure newValue, ..}