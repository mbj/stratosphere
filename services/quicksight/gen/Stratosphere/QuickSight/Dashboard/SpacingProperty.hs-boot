module Stratosphere.QuickSight.Dashboard.SpacingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SpacingProperty :: Prelude.Type
instance ToResourceProperties SpacingProperty
instance JSON.ToJSON SpacingProperty