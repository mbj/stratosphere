module Stratosphere.QuickSight.Template.GradientColorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GradientColorProperty :: Prelude.Type
instance ToResourceProperties GradientColorProperty
instance JSON.ToJSON GradientColorProperty