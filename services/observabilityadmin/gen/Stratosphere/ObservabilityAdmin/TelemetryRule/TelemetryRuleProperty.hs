module Stratosphere.ObservabilityAdmin.TelemetryRule.TelemetryRuleProperty (
        module Exports, TelemetryRuleProperty(..), mkTelemetryRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.TelemetryRule.TelemetryDestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TelemetryRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetryrule.html>
    TelemetryRuleProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetryrule.html#cfn-observabilityadmin-telemetryrule-telemetryrule-destinationconfiguration>
                           destinationConfiguration :: (Prelude.Maybe TelemetryDestinationConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetryrule.html#cfn-observabilityadmin-telemetryrule-telemetryrule-resourcetype>
                           resourceType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetryrule.html#cfn-observabilityadmin-telemetryrule-telemetryrule-selectioncriteria>
                           selectionCriteria :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetryrule.html#cfn-observabilityadmin-telemetryrule-telemetryrule-telemetrytype>
                           telemetryType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTelemetryRuleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TelemetryRuleProperty
mkTelemetryRuleProperty resourceType telemetryType
  = TelemetryRuleProperty
      {haddock_workaround_ = (), resourceType = resourceType,
       telemetryType = telemetryType,
       destinationConfiguration = Prelude.Nothing,
       selectionCriteria = Prelude.Nothing}
instance ToResourceProperties TelemetryRuleProperty where
  toResourceProperties TelemetryRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::TelemetryRule.TelemetryRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceType" JSON..= resourceType,
                            "TelemetryType" JSON..= telemetryType]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationConfiguration"
                                 Prelude.<$> destinationConfiguration,
                               (JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria]))}
instance JSON.ToJSON TelemetryRuleProperty where
  toJSON TelemetryRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceType" JSON..= resourceType,
               "TelemetryType" JSON..= telemetryType]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationConfiguration"
                    Prelude.<$> destinationConfiguration,
                  (JSON..=) "SelectionCriteria" Prelude.<$> selectionCriteria])))
instance Property "DestinationConfiguration" TelemetryRuleProperty where
  type PropertyType "DestinationConfiguration" TelemetryRuleProperty = TelemetryDestinationConfigurationProperty
  set newValue TelemetryRuleProperty {..}
    = TelemetryRuleProperty
        {destinationConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceType" TelemetryRuleProperty where
  type PropertyType "ResourceType" TelemetryRuleProperty = Value Prelude.Text
  set newValue TelemetryRuleProperty {..}
    = TelemetryRuleProperty {resourceType = newValue, ..}
instance Property "SelectionCriteria" TelemetryRuleProperty where
  type PropertyType "SelectionCriteria" TelemetryRuleProperty = Value Prelude.Text
  set newValue TelemetryRuleProperty {..}
    = TelemetryRuleProperty
        {selectionCriteria = Prelude.pure newValue, ..}
instance Property "TelemetryType" TelemetryRuleProperty where
  type PropertyType "TelemetryType" TelemetryRuleProperty = Value Prelude.Text
  set newValue TelemetryRuleProperty {..}
    = TelemetryRuleProperty {telemetryType = newValue, ..}