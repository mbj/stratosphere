module Stratosphere.GroundStation.Config.FrequencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FrequencyProperty :: Prelude.Type
instance ToResourceProperties FrequencyProperty
instance JSON.ToJSON FrequencyProperty