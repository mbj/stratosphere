module Stratosphere.QuickSight.Analysis.TableVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableVisualProperty :: Prelude.Type
instance ToResourceProperties TableVisualProperty
instance JSON.ToJSON TableVisualProperty