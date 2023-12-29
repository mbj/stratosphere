module Stratosphere.Route53.HostedZone.VPCProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VPCProperty :: Prelude.Type
instance ToResourceProperties VPCProperty
instance Prelude.Eq VPCProperty
instance Prelude.Show VPCProperty
instance JSON.ToJSON VPCProperty