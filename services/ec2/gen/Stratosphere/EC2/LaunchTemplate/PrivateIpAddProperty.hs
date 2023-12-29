module Stratosphere.EC2.LaunchTemplate.PrivateIpAddProperty (
        PrivateIpAddProperty(..), mkPrivateIpAddProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateIpAddProperty
  = PrivateIpAddProperty {primary :: (Prelude.Maybe (Value Prelude.Bool)),
                          privateIpAddress :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateIpAddProperty :: PrivateIpAddProperty
mkPrivateIpAddProperty
  = PrivateIpAddProperty
      {primary = Prelude.Nothing, privateIpAddress = Prelude.Nothing}
instance ToResourceProperties PrivateIpAddProperty where
  toResourceProperties PrivateIpAddProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.PrivateIpAdd",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Primary" Prelude.<$> primary,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress])}
instance JSON.ToJSON PrivateIpAddProperty where
  toJSON PrivateIpAddProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Primary" Prelude.<$> primary,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress]))
instance Property "Primary" PrivateIpAddProperty where
  type PropertyType "Primary" PrivateIpAddProperty = Value Prelude.Bool
  set newValue PrivateIpAddProperty {..}
    = PrivateIpAddProperty {primary = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" PrivateIpAddProperty where
  type PropertyType "PrivateIpAddress" PrivateIpAddProperty = Value Prelude.Text
  set newValue PrivateIpAddProperty {..}
    = PrivateIpAddProperty
        {privateIpAddress = Prelude.pure newValue, ..}