module Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleCustomProperty (
        AnalysisRuleCustomProperty(..), mkAnalysisRuleCustomProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRuleCustomProperty
  = AnalysisRuleCustomProperty {allowedAnalyses :: (ValueList Prelude.Text),
                                allowedAnalysisProviders :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRuleCustomProperty ::
  ValueList Prelude.Text -> AnalysisRuleCustomProperty
mkAnalysisRuleCustomProperty allowedAnalyses
  = AnalysisRuleCustomProperty
      {allowedAnalyses = allowedAnalyses,
       allowedAnalysisProviders = Prelude.Nothing}
instance ToResourceProperties AnalysisRuleCustomProperty where
  toResourceProperties AnalysisRuleCustomProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AnalysisRuleCustom",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedAnalyses" JSON..= allowedAnalyses]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedAnalysisProviders"
                                 Prelude.<$> allowedAnalysisProviders]))}
instance JSON.ToJSON AnalysisRuleCustomProperty where
  toJSON AnalysisRuleCustomProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedAnalyses" JSON..= allowedAnalyses]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedAnalysisProviders"
                    Prelude.<$> allowedAnalysisProviders])))
instance Property "AllowedAnalyses" AnalysisRuleCustomProperty where
  type PropertyType "AllowedAnalyses" AnalysisRuleCustomProperty = ValueList Prelude.Text
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty {allowedAnalyses = newValue, ..}
instance Property "AllowedAnalysisProviders" AnalysisRuleCustomProperty where
  type PropertyType "AllowedAnalysisProviders" AnalysisRuleCustomProperty = ValueList Prelude.Text
  set newValue AnalysisRuleCustomProperty {..}
    = AnalysisRuleCustomProperty
        {allowedAnalysisProviders = Prelude.pure newValue, ..}