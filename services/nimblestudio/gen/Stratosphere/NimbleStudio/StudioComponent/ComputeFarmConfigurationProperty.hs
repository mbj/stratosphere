module Stratosphere.NimbleStudio.StudioComponent.ComputeFarmConfigurationProperty (
        ComputeFarmConfigurationProperty(..),
        mkComputeFarmConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeFarmConfigurationProperty
  = ComputeFarmConfigurationProperty {activeDirectoryUser :: (Prelude.Maybe (Value Prelude.Text)),
                                      endpoint :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeFarmConfigurationProperty ::
  ComputeFarmConfigurationProperty
mkComputeFarmConfigurationProperty
  = ComputeFarmConfigurationProperty
      {activeDirectoryUser = Prelude.Nothing, endpoint = Prelude.Nothing}
instance ToResourceProperties ComputeFarmConfigurationProperty where
  toResourceProperties ComputeFarmConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.ComputeFarmConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActiveDirectoryUser" Prelude.<$> activeDirectoryUser,
                            (JSON..=) "Endpoint" Prelude.<$> endpoint])}
instance JSON.ToJSON ComputeFarmConfigurationProperty where
  toJSON ComputeFarmConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActiveDirectoryUser" Prelude.<$> activeDirectoryUser,
               (JSON..=) "Endpoint" Prelude.<$> endpoint]))
instance Property "ActiveDirectoryUser" ComputeFarmConfigurationProperty where
  type PropertyType "ActiveDirectoryUser" ComputeFarmConfigurationProperty = Value Prelude.Text
  set newValue ComputeFarmConfigurationProperty {..}
    = ComputeFarmConfigurationProperty
        {activeDirectoryUser = Prelude.pure newValue, ..}
instance Property "Endpoint" ComputeFarmConfigurationProperty where
  type PropertyType "Endpoint" ComputeFarmConfigurationProperty = Value Prelude.Text
  set newValue ComputeFarmConfigurationProperty {..}
    = ComputeFarmConfigurationProperty
        {endpoint = Prelude.pure newValue, ..}