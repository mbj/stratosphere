module Stratosphere.OSIS.Pipeline.VpcEndpointProperty (
        module Exports, VpcEndpointProperty(..), mkVpcEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.VpcOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcEndpointProperty
  = VpcEndpointProperty {vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                         vpcId :: (Prelude.Maybe (Value Prelude.Text)),
                         vpcOptions :: (Prelude.Maybe VpcOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcEndpointProperty :: VpcEndpointProperty
mkVpcEndpointProperty
  = VpcEndpointProperty
      {vpcEndpointId = Prelude.Nothing, vpcId = Prelude.Nothing,
       vpcOptions = Prelude.Nothing}
instance ToResourceProperties VpcEndpointProperty where
  toResourceProperties VpcEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.VpcEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
                            (JSON..=) "VpcId" Prelude.<$> vpcId,
                            (JSON..=) "VpcOptions" Prelude.<$> vpcOptions])}
instance JSON.ToJSON VpcEndpointProperty where
  toJSON VpcEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
               (JSON..=) "VpcId" Prelude.<$> vpcId,
               (JSON..=) "VpcOptions" Prelude.<$> vpcOptions]))
instance Property "VpcEndpointId" VpcEndpointProperty where
  type PropertyType "VpcEndpointId" VpcEndpointProperty = Value Prelude.Text
  set newValue VpcEndpointProperty {..}
    = VpcEndpointProperty {vpcEndpointId = Prelude.pure newValue, ..}
instance Property "VpcId" VpcEndpointProperty where
  type PropertyType "VpcId" VpcEndpointProperty = Value Prelude.Text
  set newValue VpcEndpointProperty {..}
    = VpcEndpointProperty {vpcId = Prelude.pure newValue, ..}
instance Property "VpcOptions" VpcEndpointProperty where
  type PropertyType "VpcOptions" VpcEndpointProperty = VpcOptionsProperty
  set newValue VpcEndpointProperty {..}
    = VpcEndpointProperty {vpcOptions = Prelude.pure newValue, ..}