module Stratosphere.QuickSight.Analysis.CustomColorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomColorProperty :: Prelude.Type
instance ToResourceProperties CustomColorProperty
instance JSON.ToJSON CustomColorProperty