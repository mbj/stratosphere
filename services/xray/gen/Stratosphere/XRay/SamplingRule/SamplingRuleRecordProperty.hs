module Stratosphere.XRay.SamplingRule.SamplingRuleRecordProperty (
        module Exports, SamplingRuleRecordProperty(..),
        mkSamplingRuleRecordProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.XRay.SamplingRule.SamplingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamplingRuleRecordProperty
  = SamplingRuleRecordProperty {createdAt :: (Prelude.Maybe (Value Prelude.Text)),
                                modifiedAt :: (Prelude.Maybe (Value Prelude.Text)),
                                samplingRule :: (Prelude.Maybe SamplingRuleProperty)}
mkSamplingRuleRecordProperty :: SamplingRuleRecordProperty
mkSamplingRuleRecordProperty
  = SamplingRuleRecordProperty
      {createdAt = Prelude.Nothing, modifiedAt = Prelude.Nothing,
       samplingRule = Prelude.Nothing}
instance ToResourceProperties SamplingRuleRecordProperty where
  toResourceProperties SamplingRuleRecordProperty {..}
    = ResourceProperties
        {awsType = "AWS::XRay::SamplingRule.SamplingRuleRecord",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
                            (JSON..=) "ModifiedAt" Prelude.<$> modifiedAt,
                            (JSON..=) "SamplingRule" Prelude.<$> samplingRule])}
instance JSON.ToJSON SamplingRuleRecordProperty where
  toJSON SamplingRuleRecordProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
               (JSON..=) "ModifiedAt" Prelude.<$> modifiedAt,
               (JSON..=) "SamplingRule" Prelude.<$> samplingRule]))
instance Property "CreatedAt" SamplingRuleRecordProperty where
  type PropertyType "CreatedAt" SamplingRuleRecordProperty = Value Prelude.Text
  set newValue SamplingRuleRecordProperty {..}
    = SamplingRuleRecordProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "ModifiedAt" SamplingRuleRecordProperty where
  type PropertyType "ModifiedAt" SamplingRuleRecordProperty = Value Prelude.Text
  set newValue SamplingRuleRecordProperty {..}
    = SamplingRuleRecordProperty
        {modifiedAt = Prelude.pure newValue, ..}
instance Property "SamplingRule" SamplingRuleRecordProperty where
  type PropertyType "SamplingRule" SamplingRuleRecordProperty = SamplingRuleProperty
  set newValue SamplingRuleRecordProperty {..}
    = SamplingRuleRecordProperty
        {samplingRule = Prelude.pure newValue, ..}