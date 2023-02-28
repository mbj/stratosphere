module Stratosphere.Lightsail.Distribution.InputOriginProperty (
        InputOriginProperty(..), mkInputOriginProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputOriginProperty
  = InputOriginProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                         protocolPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                         regionName :: (Prelude.Maybe (Value Prelude.Text))}
mkInputOriginProperty :: InputOriginProperty
mkInputOriginProperty
  = InputOriginProperty
      {name = Prelude.Nothing, protocolPolicy = Prelude.Nothing,
       regionName = Prelude.Nothing}
instance ToResourceProperties InputOriginProperty where
  toResourceProperties InputOriginProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.InputOrigin",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ProtocolPolicy" Prelude.<$> protocolPolicy,
                            (JSON..=) "RegionName" Prelude.<$> regionName])}
instance JSON.ToJSON InputOriginProperty where
  toJSON InputOriginProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ProtocolPolicy" Prelude.<$> protocolPolicy,
               (JSON..=) "RegionName" Prelude.<$> regionName]))
instance Property "Name" InputOriginProperty where
  type PropertyType "Name" InputOriginProperty = Value Prelude.Text
  set newValue InputOriginProperty {..}
    = InputOriginProperty {name = Prelude.pure newValue, ..}
instance Property "ProtocolPolicy" InputOriginProperty where
  type PropertyType "ProtocolPolicy" InputOriginProperty = Value Prelude.Text
  set newValue InputOriginProperty {..}
    = InputOriginProperty {protocolPolicy = Prelude.pure newValue, ..}
instance Property "RegionName" InputOriginProperty where
  type PropertyType "RegionName" InputOriginProperty = Value Prelude.Text
  set newValue InputOriginProperty {..}
    = InputOriginProperty {regionName = Prelude.pure newValue, ..}