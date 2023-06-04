module Stratosphere.QuickSight.Analysis.DataPathColorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataPathColorProperty :: Prelude.Type
instance ToResourceProperties DataPathColorProperty
instance JSON.ToJSON DataPathColorProperty