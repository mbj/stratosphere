module Stratosphere.Pinpoint.Campaign.EventDimensionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventDimensionsProperty :: Prelude.Type
instance ToResourceProperties EventDimensionsProperty
instance JSON.ToJSON EventDimensionsProperty