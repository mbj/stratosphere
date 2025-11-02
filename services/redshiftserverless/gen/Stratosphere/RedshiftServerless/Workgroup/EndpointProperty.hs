module Stratosphere.RedshiftServerless.Workgroup.EndpointProperty (
        module Exports, EndpointProperty(..), mkEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Workgroup.VpcEndpointProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-endpoint.html>
    EndpointProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-endpoint.html#cfn-redshiftserverless-workgroup-endpoint-address>
                      address :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-endpoint.html#cfn-redshiftserverless-workgroup-endpoint-port>
                      port :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-workgroup-endpoint.html#cfn-redshiftserverless-workgroup-endpoint-vpcendpoints>
                      vpcEndpoints :: (Prelude.Maybe [VpcEndpointProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointProperty :: EndpointProperty
mkEndpointProperty
  = EndpointProperty
      {haddock_workaround_ = (), address = Prelude.Nothing,
       port = Prelude.Nothing, vpcEndpoints = Prelude.Nothing}
instance ToResourceProperties EndpointProperty where
  toResourceProperties EndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup.Endpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "VpcEndpoints" Prelude.<$> vpcEndpoints])}
instance JSON.ToJSON EndpointProperty where
  toJSON EndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "VpcEndpoints" Prelude.<$> vpcEndpoints]))
instance Property "Address" EndpointProperty where
  type PropertyType "Address" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {address = Prelude.pure newValue, ..}
instance Property "Port" EndpointProperty where
  type PropertyType "Port" EndpointProperty = Value Prelude.Integer
  set newValue EndpointProperty {..}
    = EndpointProperty {port = Prelude.pure newValue, ..}
instance Property "VpcEndpoints" EndpointProperty where
  type PropertyType "VpcEndpoints" EndpointProperty = [VpcEndpointProperty]
  set newValue EndpointProperty {..}
    = EndpointProperty {vpcEndpoints = Prelude.pure newValue, ..}