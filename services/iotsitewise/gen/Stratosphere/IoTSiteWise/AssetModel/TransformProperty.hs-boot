module Stratosphere.IoTSiteWise.AssetModel.TransformProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TransformProperty :: Prelude.Type
instance ToResourceProperties TransformProperty
instance JSON.ToJSON TransformProperty