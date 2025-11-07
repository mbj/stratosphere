module Stratosphere.ObservabilityAdmin.OrganizationTelemetryRule.TelemetryDestinationConfigurationProperty (
        module Exports, TelemetryDestinationConfigurationProperty(..),
        mkTelemetryDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ObservabilityAdmin.OrganizationTelemetryRule.VPCFlowLogParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TelemetryDestinationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration.html>
    TelemetryDestinationConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration-destinationpattern>
                                               destinationPattern :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration-destinationtype>
                                               destinationType :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration-retentionindays>
                                               retentionInDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-organizationtelemetryrule-telemetrydestinationconfiguration-vpcflowlogparameters>
                                               vPCFlowLogParameters :: (Prelude.Maybe VPCFlowLogParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTelemetryDestinationConfigurationProperty ::
  TelemetryDestinationConfigurationProperty
mkTelemetryDestinationConfigurationProperty
  = TelemetryDestinationConfigurationProperty
      {haddock_workaround_ = (), destinationPattern = Prelude.Nothing,
       destinationType = Prelude.Nothing,
       retentionInDays = Prelude.Nothing,
       vPCFlowLogParameters = Prelude.Nothing}
instance ToResourceProperties TelemetryDestinationConfigurationProperty where
  toResourceProperties TelemetryDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationTelemetryRule.TelemetryDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationPattern" Prelude.<$> destinationPattern,
                            (JSON..=) "DestinationType" Prelude.<$> destinationType,
                            (JSON..=) "RetentionInDays" Prelude.<$> retentionInDays,
                            (JSON..=) "VPCFlowLogParameters"
                              Prelude.<$> vPCFlowLogParameters])}
instance JSON.ToJSON TelemetryDestinationConfigurationProperty where
  toJSON TelemetryDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationPattern" Prelude.<$> destinationPattern,
               (JSON..=) "DestinationType" Prelude.<$> destinationType,
               (JSON..=) "RetentionInDays" Prelude.<$> retentionInDays,
               (JSON..=) "VPCFlowLogParameters"
                 Prelude.<$> vPCFlowLogParameters]))
instance Property "DestinationPattern" TelemetryDestinationConfigurationProperty where
  type PropertyType "DestinationPattern" TelemetryDestinationConfigurationProperty = Value Prelude.Text
  set newValue TelemetryDestinationConfigurationProperty {..}
    = TelemetryDestinationConfigurationProperty
        {destinationPattern = Prelude.pure newValue, ..}
instance Property "DestinationType" TelemetryDestinationConfigurationProperty where
  type PropertyType "DestinationType" TelemetryDestinationConfigurationProperty = Value Prelude.Text
  set newValue TelemetryDestinationConfigurationProperty {..}
    = TelemetryDestinationConfigurationProperty
        {destinationType = Prelude.pure newValue, ..}
instance Property "RetentionInDays" TelemetryDestinationConfigurationProperty where
  type PropertyType "RetentionInDays" TelemetryDestinationConfigurationProperty = Value Prelude.Integer
  set newValue TelemetryDestinationConfigurationProperty {..}
    = TelemetryDestinationConfigurationProperty
        {retentionInDays = Prelude.pure newValue, ..}
instance Property "VPCFlowLogParameters" TelemetryDestinationConfigurationProperty where
  type PropertyType "VPCFlowLogParameters" TelemetryDestinationConfigurationProperty = VPCFlowLogParametersProperty
  set newValue TelemetryDestinationConfigurationProperty {..}
    = TelemetryDestinationConfigurationProperty
        {vPCFlowLogParameters = Prelude.pure newValue, ..}