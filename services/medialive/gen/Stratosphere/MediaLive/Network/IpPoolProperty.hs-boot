module Stratosphere.MediaLive.Network.IpPoolProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IpPoolProperty :: Prelude.Type
instance ToResourceProperties IpPoolProperty
instance Prelude.Eq IpPoolProperty
instance Prelude.Show IpPoolProperty
instance JSON.ToJSON IpPoolProperty