module Stratosphere.SecurityHub.Insight.IpFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IpFilterProperty :: Prelude.Type
instance ToResourceProperties IpFilterProperty
instance Prelude.Eq IpFilterProperty
instance Prelude.Show IpFilterProperty
instance JSON.ToJSON IpFilterProperty