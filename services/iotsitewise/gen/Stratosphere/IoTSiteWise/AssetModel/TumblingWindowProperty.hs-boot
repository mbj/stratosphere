module Stratosphere.IoTSiteWise.AssetModel.TumblingWindowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TumblingWindowProperty :: Prelude.Type
instance ToResourceProperties TumblingWindowProperty
instance JSON.ToJSON TumblingWindowProperty