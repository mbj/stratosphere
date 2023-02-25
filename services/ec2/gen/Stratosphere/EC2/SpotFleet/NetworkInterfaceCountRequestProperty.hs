module Stratosphere.EC2.SpotFleet.NetworkInterfaceCountRequestProperty (
        NetworkInterfaceCountRequestProperty(..),
        mkNetworkInterfaceCountRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceCountRequestProperty
  = NetworkInterfaceCountRequestProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                          min :: (Prelude.Maybe (Value Prelude.Integer))}
mkNetworkInterfaceCountRequestProperty ::
  NetworkInterfaceCountRequestProperty
mkNetworkInterfaceCountRequestProperty
  = NetworkInterfaceCountRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceCountRequestProperty where
  toResourceProperties NetworkInterfaceCountRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.NetworkInterfaceCountRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkInterfaceCountRequestProperty where
  toJSON NetworkInterfaceCountRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkInterfaceCountRequestProperty where
  type PropertyType "Max" NetworkInterfaceCountRequestProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountRequestProperty {..}
    = NetworkInterfaceCountRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkInterfaceCountRequestProperty where
  type PropertyType "Min" NetworkInterfaceCountRequestProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountRequestProperty {..}
    = NetworkInterfaceCountRequestProperty
        {min = Prelude.pure newValue, ..}