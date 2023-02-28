module Stratosphere.Lightsail.Instance.NetworkingProperty (
        module Exports, NetworkingProperty(..), mkNetworkingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.MonthlyTransferProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.PortProperty as Exports
import Stratosphere.ResourceProperties
data NetworkingProperty
  = NetworkingProperty {monthlyTransfer :: (Prelude.Maybe MonthlyTransferProperty),
                        ports :: [PortProperty]}
mkNetworkingProperty :: [PortProperty] -> NetworkingProperty
mkNetworkingProperty ports
  = NetworkingProperty
      {ports = ports, monthlyTransfer = Prelude.Nothing}
instance ToResourceProperties NetworkingProperty where
  toResourceProperties NetworkingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.Networking",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ports" JSON..= ports]
                           (Prelude.catMaybes
                              [(JSON..=) "MonthlyTransfer" Prelude.<$> monthlyTransfer]))}
instance JSON.ToJSON NetworkingProperty where
  toJSON NetworkingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ports" JSON..= ports]
              (Prelude.catMaybes
                 [(JSON..=) "MonthlyTransfer" Prelude.<$> monthlyTransfer])))
instance Property "MonthlyTransfer" NetworkingProperty where
  type PropertyType "MonthlyTransfer" NetworkingProperty = MonthlyTransferProperty
  set newValue NetworkingProperty {..}
    = NetworkingProperty {monthlyTransfer = Prelude.pure newValue, ..}
instance Property "Ports" NetworkingProperty where
  type PropertyType "Ports" NetworkingProperty = [PortProperty]
  set newValue NetworkingProperty {..}
    = NetworkingProperty {ports = newValue, ..}