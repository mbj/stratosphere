module Stratosphere.EC2.NetworkAclEntry.IcmpProperty (
        IcmpProperty(..), mkIcmpProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcmpProperty
  = IcmpProperty {code :: (Prelude.Maybe (Value Prelude.Integer)),
                  type' :: (Prelude.Maybe (Value Prelude.Integer))}
mkIcmpProperty :: IcmpProperty
mkIcmpProperty
  = IcmpProperty {code = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties IcmpProperty where
  toResourceProperties IcmpProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkAclEntry.Icmp",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Code" Prelude.<$> code,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON IcmpProperty where
  toJSON IcmpProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Code" Prelude.<$> code,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Code" IcmpProperty where
  type PropertyType "Code" IcmpProperty = Value Prelude.Integer
  set newValue IcmpProperty {..}
    = IcmpProperty {code = Prelude.pure newValue, ..}
instance Property "Type" IcmpProperty where
  type PropertyType "Type" IcmpProperty = Value Prelude.Integer
  set newValue IcmpProperty {..}
    = IcmpProperty {type' = Prelude.pure newValue, ..}