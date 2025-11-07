module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleDestinationProperty (
        module Exports, CentralizationRuleDestinationProperty(..),
        mkCentralizationRuleDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.DestinationLogsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CentralizationRuleDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html>
    CentralizationRuleDestinationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationruledestination-account>
                                           account :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationruledestination-destinationlogsconfiguration>
                                           destinationLogsConfiguration :: (Prelude.Maybe DestinationLogsConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationruledestination-region>
                                           region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCentralizationRuleDestinationProperty ::
  Value Prelude.Text -> CentralizationRuleDestinationProperty
mkCentralizationRuleDestinationProperty region
  = CentralizationRuleDestinationProperty
      {haddock_workaround_ = (), region = region,
       account = Prelude.Nothing,
       destinationLogsConfiguration = Prelude.Nothing}
instance ToResourceProperties CentralizationRuleDestinationProperty where
  toResourceProperties CentralizationRuleDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRuleDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes
                              [(JSON..=) "Account" Prelude.<$> account,
                               (JSON..=) "DestinationLogsConfiguration"
                                 Prelude.<$> destinationLogsConfiguration]))}
instance JSON.ToJSON CentralizationRuleDestinationProperty where
  toJSON CentralizationRuleDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region]
              (Prelude.catMaybes
                 [(JSON..=) "Account" Prelude.<$> account,
                  (JSON..=) "DestinationLogsConfiguration"
                    Prelude.<$> destinationLogsConfiguration])))
instance Property "Account" CentralizationRuleDestinationProperty where
  type PropertyType "Account" CentralizationRuleDestinationProperty = Value Prelude.Text
  set newValue CentralizationRuleDestinationProperty {..}
    = CentralizationRuleDestinationProperty
        {account = Prelude.pure newValue, ..}
instance Property "DestinationLogsConfiguration" CentralizationRuleDestinationProperty where
  type PropertyType "DestinationLogsConfiguration" CentralizationRuleDestinationProperty = DestinationLogsConfigurationProperty
  set newValue CentralizationRuleDestinationProperty {..}
    = CentralizationRuleDestinationProperty
        {destinationLogsConfiguration = Prelude.pure newValue, ..}
instance Property "Region" CentralizationRuleDestinationProperty where
  type PropertyType "Region" CentralizationRuleDestinationProperty = Value Prelude.Text
  set newValue CentralizationRuleDestinationProperty {..}
    = CentralizationRuleDestinationProperty {region = newValue, ..}