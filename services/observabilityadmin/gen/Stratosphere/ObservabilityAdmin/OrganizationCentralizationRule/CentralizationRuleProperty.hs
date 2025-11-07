module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleProperty (
        module Exports, CentralizationRuleProperty(..),
        mkCentralizationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleSourceProperty as Exports
import Stratosphere.ResourceProperties
data CentralizationRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrule.html>
    CentralizationRuleProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrule-destination>
                                destination :: CentralizationRuleDestinationProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrule-source>
                                source :: CentralizationRuleSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCentralizationRuleProperty ::
  CentralizationRuleDestinationProperty
  -> CentralizationRuleSourceProperty -> CentralizationRuleProperty
mkCentralizationRuleProperty destination source
  = CentralizationRuleProperty
      {haddock_workaround_ = (), destination = destination,
       source = source}
instance ToResourceProperties CentralizationRuleProperty where
  toResourceProperties CentralizationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRule",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "Source" JSON..= source]}
instance JSON.ToJSON CentralizationRuleProperty where
  toJSON CentralizationRuleProperty {..}
    = JSON.object
        ["Destination" JSON..= destination, "Source" JSON..= source]
instance Property "Destination" CentralizationRuleProperty where
  type PropertyType "Destination" CentralizationRuleProperty = CentralizationRuleDestinationProperty
  set newValue CentralizationRuleProperty {..}
    = CentralizationRuleProperty {destination = newValue, ..}
instance Property "Source" CentralizationRuleProperty where
  type PropertyType "Source" CentralizationRuleProperty = CentralizationRuleSourceProperty
  set newValue CentralizationRuleProperty {..}
    = CentralizationRuleProperty {source = newValue, ..}