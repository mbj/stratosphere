module Stratosphere.MediaConnect.Gateway (
        module Exports, Gateway(..), mkGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Gateway.GatewayNetworkProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Gateway
  = Gateway {egressCidrBlocks :: (ValueList Prelude.Text),
             name :: (Value Prelude.Text),
             networks :: [GatewayNetworkProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGateway ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> [GatewayNetworkProperty] -> Gateway
mkGateway egressCidrBlocks name networks
  = Gateway
      {egressCidrBlocks = egressCidrBlocks, name = name,
       networks = networks}
instance ToResourceProperties Gateway where
  toResourceProperties Gateway {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Gateway",
         supportsTags = Prelude.False,
         properties = ["EgressCidrBlocks" JSON..= egressCidrBlocks,
                       "Name" JSON..= name, "Networks" JSON..= networks]}
instance JSON.ToJSON Gateway where
  toJSON Gateway {..}
    = JSON.object
        ["EgressCidrBlocks" JSON..= egressCidrBlocks, "Name" JSON..= name,
         "Networks" JSON..= networks]
instance Property "EgressCidrBlocks" Gateway where
  type PropertyType "EgressCidrBlocks" Gateway = ValueList Prelude.Text
  set newValue Gateway {..}
    = Gateway {egressCidrBlocks = newValue, ..}
instance Property "Name" Gateway where
  type PropertyType "Name" Gateway = Value Prelude.Text
  set newValue Gateway {..} = Gateway {name = newValue, ..}
instance Property "Networks" Gateway where
  type PropertyType "Networks" Gateway = [GatewayNetworkProperty]
  set newValue Gateway {..} = Gateway {networks = newValue, ..}