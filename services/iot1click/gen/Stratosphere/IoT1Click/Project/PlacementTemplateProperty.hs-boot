module Stratosphere.IoT1Click.Project.PlacementTemplateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlacementTemplateProperty :: Prelude.Type
instance ToResourceProperties PlacementTemplateProperty
instance JSON.ToJSON PlacementTemplateProperty