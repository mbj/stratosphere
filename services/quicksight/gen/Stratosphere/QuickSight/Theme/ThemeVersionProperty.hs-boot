module Stratosphere.QuickSight.Theme.ThemeVersionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ThemeVersionProperty :: Prelude.Type
instance ToResourceProperties ThemeVersionProperty
instance JSON.ToJSON ThemeVersionProperty