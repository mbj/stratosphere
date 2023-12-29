module Stratosphere.EFS.AccessPoint.AccessPointTagProperty (
        AccessPointTagProperty(..), mkAccessPointTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPointTagProperty
  = AccessPointTagProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                            value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPointTagProperty :: AccessPointTagProperty
mkAccessPointTagProperty
  = AccessPointTagProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties AccessPointTagProperty where
  toResourceProperties AccessPointTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::AccessPoint.AccessPointTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON AccessPointTagProperty where
  toJSON AccessPointTagProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" AccessPointTagProperty where
  type PropertyType "Key" AccessPointTagProperty = Value Prelude.Text
  set newValue AccessPointTagProperty {..}
    = AccessPointTagProperty {key = Prelude.pure newValue, ..}
instance Property "Value" AccessPointTagProperty where
  type PropertyType "Value" AccessPointTagProperty = Value Prelude.Text
  set newValue AccessPointTagProperty {..}
    = AccessPointTagProperty {value = Prelude.pure newValue, ..}