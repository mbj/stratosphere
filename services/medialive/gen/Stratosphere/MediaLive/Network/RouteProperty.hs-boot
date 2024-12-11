module Stratosphere.MediaLive.Network.RouteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RouteProperty :: Prelude.Type
instance ToResourceProperties RouteProperty
instance Prelude.Eq RouteProperty
instance Prelude.Show RouteProperty
instance JSON.ToJSON RouteProperty