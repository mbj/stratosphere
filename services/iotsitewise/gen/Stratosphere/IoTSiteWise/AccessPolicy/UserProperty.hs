module Stratosphere.IoTSiteWise.AccessPolicy.UserProperty (
        UserProperty(..), mkUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProperty
  = UserProperty {id :: (Prelude.Maybe (Value Prelude.Text))}
mkUserProperty :: UserProperty
mkUserProperty = UserProperty {id = Prelude.Nothing}
instance ToResourceProperties UserProperty where
  toResourceProperties UserProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AccessPolicy.User",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id])}
instance JSON.ToJSON UserProperty where
  toJSON UserProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "id" Prelude.<$> id]))
instance Property "id" UserProperty where
  type PropertyType "id" UserProperty = Value Prelude.Text
  set newValue UserProperty {}
    = UserProperty {id = Prelude.pure newValue, ..}