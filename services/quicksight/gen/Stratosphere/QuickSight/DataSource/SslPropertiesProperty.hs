module Stratosphere.QuickSight.DataSource.SslPropertiesProperty (
        SslPropertiesProperty(..), mkSslPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SslPropertiesProperty
  = SslPropertiesProperty {disableSsl :: (Prelude.Maybe (Value Prelude.Bool))}
mkSslPropertiesProperty :: SslPropertiesProperty
mkSslPropertiesProperty
  = SslPropertiesProperty {disableSsl = Prelude.Nothing}
instance ToResourceProperties SslPropertiesProperty where
  toResourceProperties SslPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.SslProperties",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisableSsl" Prelude.<$> disableSsl])}
instance JSON.ToJSON SslPropertiesProperty where
  toJSON SslPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisableSsl" Prelude.<$> disableSsl]))
instance Property "DisableSsl" SslPropertiesProperty where
  type PropertyType "DisableSsl" SslPropertiesProperty = Value Prelude.Bool
  set newValue SslPropertiesProperty {}
    = SslPropertiesProperty {disableSsl = Prelude.pure newValue, ..}