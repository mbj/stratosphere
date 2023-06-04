module Stratosphere.QuickSight.Analysis.FontSizeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FontSizeProperty :: Prelude.Type
instance ToResourceProperties FontSizeProperty
instance JSON.ToJSON FontSizeProperty