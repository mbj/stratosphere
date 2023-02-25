module Stratosphere.GroundStation.Config.TrackingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TrackingConfigProperty :: Prelude.Type
instance ToResourceProperties TrackingConfigProperty
instance JSON.ToJSON TrackingConfigProperty