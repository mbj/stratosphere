module Stratosphere.QuickSight.Dashboard.ColorScaleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColorScaleProperty :: Prelude.Type
instance ToResourceProperties ColorScaleProperty
instance JSON.ToJSON ColorScaleProperty