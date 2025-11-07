module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleSourceProperty (
        module Exports, CentralizationRuleSourceProperty(..),
        mkCentralizationRuleSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.SourceLogsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CentralizationRuleSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrulesource.html>
    CentralizationRuleSourceProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrulesource.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrulesource-regions>
                                      regions :: (ValueList Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrulesource.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrulesource-scope>
                                      scope :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrulesource.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrulesource-sourcelogsconfiguration>
                                      sourceLogsConfiguration :: (Prelude.Maybe SourceLogsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCentralizationRuleSourceProperty ::
  ValueList Prelude.Text -> CentralizationRuleSourceProperty
mkCentralizationRuleSourceProperty regions
  = CentralizationRuleSourceProperty
      {haddock_workaround_ = (), regions = regions,
       scope = Prelude.Nothing, sourceLogsConfiguration = Prelude.Nothing}
instance ToResourceProperties CentralizationRuleSourceProperty where
  toResourceProperties CentralizationRuleSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRuleSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Regions" JSON..= regions]
                           (Prelude.catMaybes
                              [(JSON..=) "Scope" Prelude.<$> scope,
                               (JSON..=) "SourceLogsConfiguration"
                                 Prelude.<$> sourceLogsConfiguration]))}
instance JSON.ToJSON CentralizationRuleSourceProperty where
  toJSON CentralizationRuleSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Regions" JSON..= regions]
              (Prelude.catMaybes
                 [(JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "SourceLogsConfiguration"
                    Prelude.<$> sourceLogsConfiguration])))
instance Property "Regions" CentralizationRuleSourceProperty where
  type PropertyType "Regions" CentralizationRuleSourceProperty = ValueList Prelude.Text
  set newValue CentralizationRuleSourceProperty {..}
    = CentralizationRuleSourceProperty {regions = newValue, ..}
instance Property "Scope" CentralizationRuleSourceProperty where
  type PropertyType "Scope" CentralizationRuleSourceProperty = Value Prelude.Text
  set newValue CentralizationRuleSourceProperty {..}
    = CentralizationRuleSourceProperty
        {scope = Prelude.pure newValue, ..}
instance Property "SourceLogsConfiguration" CentralizationRuleSourceProperty where
  type PropertyType "SourceLogsConfiguration" CentralizationRuleSourceProperty = SourceLogsConfigurationProperty
  set newValue CentralizationRuleSourceProperty {..}
    = CentralizationRuleSourceProperty
        {sourceLogsConfiguration = Prelude.pure newValue, ..}