module Stratosphere.EMRServerless.Application.MaximumAllowedResourcesProperty (
        MaximumAllowedResourcesProperty(..),
        mkMaximumAllowedResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaximumAllowedResourcesProperty
  = MaximumAllowedResourcesProperty {cpu :: (Value Prelude.Text),
                                     disk :: (Prelude.Maybe (Value Prelude.Text)),
                                     memory :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaximumAllowedResourcesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MaximumAllowedResourcesProperty
mkMaximumAllowedResourcesProperty cpu memory
  = MaximumAllowedResourcesProperty
      {cpu = cpu, memory = memory, disk = Prelude.Nothing}
instance ToResourceProperties MaximumAllowedResourcesProperty where
  toResourceProperties MaximumAllowedResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.MaximumAllowedResources",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Cpu" JSON..= cpu, "Memory" JSON..= memory]
                           (Prelude.catMaybes [(JSON..=) "Disk" Prelude.<$> disk]))}
instance JSON.ToJSON MaximumAllowedResourcesProperty where
  toJSON MaximumAllowedResourcesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Cpu" JSON..= cpu, "Memory" JSON..= memory]
              (Prelude.catMaybes [(JSON..=) "Disk" Prelude.<$> disk])))
instance Property "Cpu" MaximumAllowedResourcesProperty where
  type PropertyType "Cpu" MaximumAllowedResourcesProperty = Value Prelude.Text
  set newValue MaximumAllowedResourcesProperty {..}
    = MaximumAllowedResourcesProperty {cpu = newValue, ..}
instance Property "Disk" MaximumAllowedResourcesProperty where
  type PropertyType "Disk" MaximumAllowedResourcesProperty = Value Prelude.Text
  set newValue MaximumAllowedResourcesProperty {..}
    = MaximumAllowedResourcesProperty
        {disk = Prelude.pure newValue, ..}
instance Property "Memory" MaximumAllowedResourcesProperty where
  type PropertyType "Memory" MaximumAllowedResourcesProperty = Value Prelude.Text
  set newValue MaximumAllowedResourcesProperty {..}
    = MaximumAllowedResourcesProperty {memory = newValue, ..}