module Stratosphere.IoTSiteWise.AccessPolicy.ProjectProperty (
        ProjectProperty(..), mkProjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectProperty
  = ProjectProperty {id :: (Prelude.Maybe (Value Prelude.Text))}
mkProjectProperty :: ProjectProperty
mkProjectProperty = ProjectProperty {id = Prelude.Nothing}
instance ToResourceProperties ProjectProperty where
  toResourceProperties ProjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.Project",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id])}
instance JSON.ToJSON ProjectProperty where
  toJSON ProjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id]))
instance Property "id" ProjectProperty where
  type PropertyType "id" ProjectProperty = Value Prelude.Text
  set newValue ProjectProperty {}
    = ProjectProperty {id = Prelude.pure newValue, ..}