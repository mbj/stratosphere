module Stratosphere.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicyProperty (
        module Exports, ConfiguredTableAnalysisRulePolicyProperty(..),
        mkConfiguredTableAnalysisRulePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1Property as Exports
import Stratosphere.ResourceProperties
data ConfiguredTableAnalysisRulePolicyProperty
  = ConfiguredTableAnalysisRulePolicyProperty {v1 :: ConfiguredTableAnalysisRulePolicyV1Property}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAnalysisRulePolicyProperty ::
  ConfiguredTableAnalysisRulePolicyV1Property
  -> ConfiguredTableAnalysisRulePolicyProperty
mkConfiguredTableAnalysisRulePolicyProperty v1
  = ConfiguredTableAnalysisRulePolicyProperty {v1 = v1}
instance ToResourceProperties ConfiguredTableAnalysisRulePolicyProperty where
  toResourceProperties ConfiguredTableAnalysisRulePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.ConfiguredTableAnalysisRulePolicy",
         supportsTags = Prelude.False, properties = ["V1" JSON..= v1]}
instance JSON.ToJSON ConfiguredTableAnalysisRulePolicyProperty where
  toJSON ConfiguredTableAnalysisRulePolicyProperty {..}
    = JSON.object ["V1" JSON..= v1]
instance Property "V1" ConfiguredTableAnalysisRulePolicyProperty where
  type PropertyType "V1" ConfiguredTableAnalysisRulePolicyProperty = ConfiguredTableAnalysisRulePolicyV1Property
  set newValue ConfiguredTableAnalysisRulePolicyProperty {}
    = ConfiguredTableAnalysisRulePolicyProperty {v1 = newValue, ..}