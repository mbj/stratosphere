module Stratosphere.Pinpoint.Campaign.SetDimensionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SetDimensionProperty :: Prelude.Type
instance ToResourceProperties SetDimensionProperty
instance JSON.ToJSON SetDimensionProperty