module Stratosphere.ImageBuilder.LifecyclePolicy.LastLaunchedProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LastLaunchedProperty :: Prelude.Type
instance ToResourceProperties LastLaunchedProperty
instance Prelude.Eq LastLaunchedProperty
instance Prelude.Show LastLaunchedProperty
instance JSON.ToJSON LastLaunchedProperty