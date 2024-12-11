module Stratosphere.CloudTrail.Dashboard.WidgetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WidgetProperty :: Prelude.Type
instance ToResourceProperties WidgetProperty
instance Prelude.Eq WidgetProperty
instance Prelude.Show WidgetProperty
instance JSON.ToJSON WidgetProperty