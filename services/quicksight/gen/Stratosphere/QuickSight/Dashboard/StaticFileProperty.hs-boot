module Stratosphere.QuickSight.Dashboard.StaticFileProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StaticFileProperty :: Prelude.Type
instance ToResourceProperties StaticFileProperty
instance Prelude.Eq StaticFileProperty
instance Prelude.Show StaticFileProperty
instance JSON.ToJSON StaticFileProperty