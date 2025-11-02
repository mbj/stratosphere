module Stratosphere.GroundStation.DataflowEndpointGroup.EndpointDetailsProperty (
        module Exports, EndpointDetailsProperty(..),
        mkEndpointDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.AwsGroundStationAgentEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.DataflowEndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.SecurityDetailsProperty as Exports
import Stratosphere.ResourceProperties
data EndpointDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-endpointdetails.html>
    EndpointDetailsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-endpointdetails.html#cfn-groundstation-dataflowendpointgroup-endpointdetails-awsgroundstationagentendpoint>
                             awsGroundStationAgentEndpoint :: (Prelude.Maybe AwsGroundStationAgentEndpointProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-endpointdetails.html#cfn-groundstation-dataflowendpointgroup-endpointdetails-endpoint>
                             endpoint :: (Prelude.Maybe DataflowEndpointProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-endpointdetails.html#cfn-groundstation-dataflowendpointgroup-endpointdetails-securitydetails>
                             securityDetails :: (Prelude.Maybe SecurityDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointDetailsProperty :: EndpointDetailsProperty
mkEndpointDetailsProperty
  = EndpointDetailsProperty
      {haddock_workaround_ = (),
       awsGroundStationAgentEndpoint = Prelude.Nothing,
       endpoint = Prelude.Nothing, securityDetails = Prelude.Nothing}
instance ToResourceProperties EndpointDetailsProperty where
  toResourceProperties EndpointDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.EndpointDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsGroundStationAgentEndpoint"
                              Prelude.<$> awsGroundStationAgentEndpoint,
                            (JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "SecurityDetails" Prelude.<$> securityDetails])}
instance JSON.ToJSON EndpointDetailsProperty where
  toJSON EndpointDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsGroundStationAgentEndpoint"
                 Prelude.<$> awsGroundStationAgentEndpoint,
               (JSON..=) "Endpoint" Prelude.<$> endpoint,
               (JSON..=) "SecurityDetails" Prelude.<$> securityDetails]))
instance Property "AwsGroundStationAgentEndpoint" EndpointDetailsProperty where
  type PropertyType "AwsGroundStationAgentEndpoint" EndpointDetailsProperty = AwsGroundStationAgentEndpointProperty
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty
        {awsGroundStationAgentEndpoint = Prelude.pure newValue, ..}
instance Property "Endpoint" EndpointDetailsProperty where
  type PropertyType "Endpoint" EndpointDetailsProperty = DataflowEndpointProperty
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty {endpoint = Prelude.pure newValue, ..}
instance Property "SecurityDetails" EndpointDetailsProperty where
  type PropertyType "SecurityDetails" EndpointDetailsProperty = SecurityDetailsProperty
  set newValue EndpointDetailsProperty {..}
    = EndpointDetailsProperty
        {securityDetails = Prelude.pure newValue, ..}