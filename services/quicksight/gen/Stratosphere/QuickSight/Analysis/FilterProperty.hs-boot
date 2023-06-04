module Stratosphere.QuickSight.Analysis.FilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterProperty :: Prelude.Type
instance ToResourceProperties FilterProperty
instance JSON.ToJSON FilterProperty