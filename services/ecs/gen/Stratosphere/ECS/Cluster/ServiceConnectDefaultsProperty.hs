module Stratosphere.ECS.Cluster.ServiceConnectDefaultsProperty (
        ServiceConnectDefaultsProperty(..),
        mkServiceConnectDefaultsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectDefaultsProperty
  = ServiceConnectDefaultsProperty {namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectDefaultsProperty :: ServiceConnectDefaultsProperty
mkServiceConnectDefaultsProperty
  = ServiceConnectDefaultsProperty {namespace = Prelude.Nothing}
instance ToResourceProperties ServiceConnectDefaultsProperty where
  toResourceProperties ServiceConnectDefaultsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ServiceConnectDefaults",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Namespace" Prelude.<$> namespace])}
instance JSON.ToJSON ServiceConnectDefaultsProperty where
  toJSON ServiceConnectDefaultsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Namespace" Prelude.<$> namespace]))
instance Property "Namespace" ServiceConnectDefaultsProperty where
  type PropertyType "Namespace" ServiceConnectDefaultsProperty = Value Prelude.Text
  set newValue ServiceConnectDefaultsProperty {}
    = ServiceConnectDefaultsProperty
        {namespace = Prelude.pure newValue, ..}