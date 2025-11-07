module Stratosphere.VpcLattice.ResourceConfiguration.DnsResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DnsResourceProperty :: Prelude.Type
instance ToResourceProperties DnsResourceProperty
instance Prelude.Eq DnsResourceProperty
instance Prelude.Show DnsResourceProperty
instance JSON.ToJSON DnsResourceProperty