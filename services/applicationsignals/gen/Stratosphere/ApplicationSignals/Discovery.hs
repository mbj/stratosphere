module Stratosphere.ApplicationSignals.Discovery (
        Discovery(..), mkDiscovery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Discovery
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationsignals-discovery.html>
    Discovery {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDiscovery :: Discovery
mkDiscovery = Discovery {haddock_workaround_ = ()}
instance ToResourceProperties Discovery where
  toResourceProperties Discovery {}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::Discovery",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON Discovery where
  toJSON Discovery {} = JSON.object []