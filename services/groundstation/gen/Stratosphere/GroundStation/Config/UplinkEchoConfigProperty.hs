module Stratosphere.GroundStation.Config.UplinkEchoConfigProperty (
        UplinkEchoConfigProperty(..), mkUplinkEchoConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UplinkEchoConfigProperty
  = UplinkEchoConfigProperty {antennaUplinkConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                              enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkUplinkEchoConfigProperty :: UplinkEchoConfigProperty
mkUplinkEchoConfigProperty
  = UplinkEchoConfigProperty
      {antennaUplinkConfigArn = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties UplinkEchoConfigProperty where
  toResourceProperties UplinkEchoConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.UplinkEchoConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AntennaUplinkConfigArn"
                              Prelude.<$> antennaUplinkConfigArn,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON UplinkEchoConfigProperty where
  toJSON UplinkEchoConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AntennaUplinkConfigArn"
                 Prelude.<$> antennaUplinkConfigArn,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "AntennaUplinkConfigArn" UplinkEchoConfigProperty where
  type PropertyType "AntennaUplinkConfigArn" UplinkEchoConfigProperty = Value Prelude.Text
  set newValue UplinkEchoConfigProperty {..}
    = UplinkEchoConfigProperty
        {antennaUplinkConfigArn = Prelude.pure newValue, ..}
instance Property "Enabled" UplinkEchoConfigProperty where
  type PropertyType "Enabled" UplinkEchoConfigProperty = Value Prelude.Bool
  set newValue UplinkEchoConfigProperty {..}
    = UplinkEchoConfigProperty {enabled = Prelude.pure newValue, ..}