module Stratosphere.ObservabilityAdmin.OrganizationTelemetryRule.VPCFlowLogParametersProperty (
        VPCFlowLogParametersProperty(..), mkVPCFlowLogParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCFlowLogParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters.html>
    VPCFlowLogParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters.html#cfn-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters-logformat>
                                  logFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters.html#cfn-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters-maxaggregationinterval>
                                  maxAggregationInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters.html#cfn-observabilityadmin-organizationtelemetryrule-vpcflowlogparameters-traffictype>
                                  trafficType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCFlowLogParametersProperty :: VPCFlowLogParametersProperty
mkVPCFlowLogParametersProperty
  = VPCFlowLogParametersProperty
      {haddock_workaround_ = (), logFormat = Prelude.Nothing,
       maxAggregationInterval = Prelude.Nothing,
       trafficType = Prelude.Nothing}
instance ToResourceProperties VPCFlowLogParametersProperty where
  toResourceProperties VPCFlowLogParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationTelemetryRule.VPCFlowLogParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogFormat" Prelude.<$> logFormat,
                            (JSON..=) "MaxAggregationInterval"
                              Prelude.<$> maxAggregationInterval,
                            (JSON..=) "TrafficType" Prelude.<$> trafficType])}
instance JSON.ToJSON VPCFlowLogParametersProperty where
  toJSON VPCFlowLogParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogFormat" Prelude.<$> logFormat,
               (JSON..=) "MaxAggregationInterval"
                 Prelude.<$> maxAggregationInterval,
               (JSON..=) "TrafficType" Prelude.<$> trafficType]))
instance Property "LogFormat" VPCFlowLogParametersProperty where
  type PropertyType "LogFormat" VPCFlowLogParametersProperty = Value Prelude.Text
  set newValue VPCFlowLogParametersProperty {..}
    = VPCFlowLogParametersProperty
        {logFormat = Prelude.pure newValue, ..}
instance Property "MaxAggregationInterval" VPCFlowLogParametersProperty where
  type PropertyType "MaxAggregationInterval" VPCFlowLogParametersProperty = Value Prelude.Integer
  set newValue VPCFlowLogParametersProperty {..}
    = VPCFlowLogParametersProperty
        {maxAggregationInterval = Prelude.pure newValue, ..}
instance Property "TrafficType" VPCFlowLogParametersProperty where
  type PropertyType "TrafficType" VPCFlowLogParametersProperty = Value Prelude.Text
  set newValue VPCFlowLogParametersProperty {..}
    = VPCFlowLogParametersProperty
        {trafficType = Prelude.pure newValue, ..}