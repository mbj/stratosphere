module Stratosphere.QuickSight.Analysis.TimeEqualityFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimeEqualityFilterProperty :: Prelude.Type
instance ToResourceProperties TimeEqualityFilterProperty
instance JSON.ToJSON TimeEqualityFilterProperty