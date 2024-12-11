module Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleCustomProperty (
        module Exports, AnalysisRuleCustomProperty(..),
        mkAnalysisRuleCustomProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.DifferentialPrivacyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRuleCustomProperty
  = AnalysisRuleCustomProperty {additionalAnalyses :: (Prelude.Maybe (Value Prelude.Text)),
                                allowedAnalyses :: (ValueList Prelude.Text),
                                allowedAnalysisProviders :: (Prelude.Maybe (ValueList Prelude.Text)),
                                differentialPrivacy :: (Prelude.Maybe DifferentialPrivacyProperty),
                                disallowedOutputColumns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleCustomProperty ::
  ValueList Prelude.Text -> AnalysisRuleCustomProperty
mkAnalysisRuleCustomProperty allowedAnalyses
  = AnalysisRuleCustomProperty
      {allowedAnalyses = allowedAnalyses,
       additionalAnalyses = Prelude.Nothing,
       allowedAnalysisProviders = Prelude.Nothing,
       differentialPrivacy = Prelude.Nothing,
       disallowedOutputColumns = Prelude.Nothing}
instance ToResourceProperties AnalysisRuleCustomProperty where
  toResourceProperties AnalysisRuleCustomProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AnalysisRuleCustom",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedAnalyses" JSON..= allowedAnalyses]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalAnalyses" Prelude.<$> additionalAnalyses,
                               (JSON..=) "AllowedAnalysisProviders"
                                 Prelude.<$> allowedAnalysisProviders,
                               (JSON..=) "DifferentialPrivacy" Prelude.<$> differentialPrivacy,
                               (JSON..=) "DisallowedOutputColumns"
                                 Prelude.<$> disallowedOutputColumns]))}
instance JSON.ToJSON AnalysisRuleCustomProperty where
  toJSON AnalysisRuleCustomProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedAnalyses" JSON..= allowedAnalyses]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalAnalyses" Prelude.<$> additionalAnalyses,
                  (JSON..=) "AllowedAnalysisProviders"
                    Prelude.<$> allowedAnalysisProviders,
                  (JSON..=) "DifferentialPrivacy" Prelude.<$> differentialPrivacy,
                  (JSON..=) "DisallowedOutputColumns"
                    Prelude.<$> disallowedOutputColumns])))
instance Property "AdditionalAnalyses" AnalysisRuleCustomProperty where
  type PropertyType "AdditionalAnalyses" AnalysisRuleCustomProperty = Value Prelude.Text
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty
        {additionalAnalyses = Prelude.pure newValue, ..}
instance Property "AllowedAnalyses" AnalysisRuleCustomProperty where
  type PropertyType "AllowedAnalyses" AnalysisRuleCustomProperty = ValueList Prelude.Text
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty {allowedAnalyses = newValue, ..}
instance Property "AllowedAnalysisProviders" AnalysisRuleCustomProperty where
  type PropertyType "AllowedAnalysisProviders" AnalysisRuleCustomProperty = ValueList Prelude.Text
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty
        {allowedAnalysisProviders = Prelude.pure newValue, ..}
instance Property "DifferentialPrivacy" AnalysisRuleCustomProperty where
  type PropertyType "DifferentialPrivacy" AnalysisRuleCustomProperty = DifferentialPrivacyProperty
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty
        {differentialPrivacy = Prelude.pure newValue, ..}
instance Property "DisallowedOutputColumns" AnalysisRuleCustomProperty where
  type PropertyType "DisallowedOutputColumns" AnalysisRuleCustomProperty = ValueList Prelude.Text
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty
        {disallowedOutputColumns = Prelude.pure newValue, ..}