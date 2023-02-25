module Stratosphere.DataSync.LocationHDFS.QopConfigurationProperty (
        QopConfigurationProperty(..), mkQopConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QopConfigurationProperty
  = QopConfigurationProperty {dataTransferProtection :: (Prelude.Maybe (Value Prelude.Text)),
                              rpcProtection :: (Prelude.Maybe (Value Prelude.Text))}
mkQopConfigurationProperty :: QopConfigurationProperty
mkQopConfigurationProperty
  = QopConfigurationProperty
      {dataTransferProtection = Prelude.Nothing,
       rpcProtection = Prelude.Nothing}
instance ToResourceProperties QopConfigurationProperty where
  toResourceProperties QopConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationHDFS.QopConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataTransferProtection"
                              Prelude.<$> dataTransferProtection,
                            (JSON..=) "RpcProtection" Prelude.<$> rpcProtection])}
instance JSON.ToJSON QopConfigurationProperty where
  toJSON QopConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataTransferProtection"
                 Prelude.<$> dataTransferProtection,
               (JSON..=) "RpcProtection" Prelude.<$> rpcProtection]))
instance Property "DataTransferProtection" QopConfigurationProperty where
  type PropertyType "DataTransferProtection" QopConfigurationProperty = Value Prelude.Text
  set newValue QopConfigurationProperty {..}
    = QopConfigurationProperty
        {dataTransferProtection = Prelude.pure newValue, ..}
instance Property "RpcProtection" QopConfigurationProperty where
  type PropertyType "RpcProtection" QopConfigurationProperty = Value Prelude.Text
  set newValue QopConfigurationProperty {..}
    = QopConfigurationProperty
        {rpcProtection = Prelude.pure newValue, ..}