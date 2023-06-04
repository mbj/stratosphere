module Stratosphere.QuickSight.Topic.NegativeFormatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NegativeFormatProperty :: Prelude.Type
instance ToResourceProperties NegativeFormatProperty
instance JSON.ToJSON NegativeFormatProperty