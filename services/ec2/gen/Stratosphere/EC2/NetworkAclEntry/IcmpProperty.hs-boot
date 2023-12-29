module Stratosphere.EC2.NetworkAclEntry.IcmpProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IcmpProperty :: Prelude.Type
instance ToResourceProperties IcmpProperty
instance Prelude.Eq IcmpProperty
instance Prelude.Show IcmpProperty
instance JSON.ToJSON IcmpProperty