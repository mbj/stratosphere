module Stratosphere.EMR.Cluster.KerberosAttributesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KerberosAttributesProperty :: Prelude.Type
instance ToResourceProperties KerberosAttributesProperty
instance JSON.ToJSON KerberosAttributesProperty