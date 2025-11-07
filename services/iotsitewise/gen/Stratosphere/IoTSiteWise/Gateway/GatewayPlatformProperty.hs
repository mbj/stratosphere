module Stratosphere.IoTSiteWise.Gateway.GatewayPlatformProperty (
        module Exports, GatewayPlatformProperty(..),
        mkGatewayPlatformProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Gateway.GreengrassV2Property as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Gateway.SiemensIEProperty as Exports
import Stratosphere.ResourceProperties
data GatewayPlatformProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html>
    GatewayPlatformProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-greengrassv2>
                             greengrassV2 :: (Prelude.Maybe GreengrassV2Property),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-gateway-gatewayplatform.html#cfn-iotsitewise-gateway-gatewayplatform-siemensie>
                             siemensIE :: (Prelude.Maybe SiemensIEProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayPlatformProperty :: GatewayPlatformProperty
mkGatewayPlatformProperty
  = GatewayPlatformProperty
      {haddock_workaround_ = (), greengrassV2 = Prelude.Nothing,
       siemensIE = Prelude.Nothing}
instance ToResourceProperties GatewayPlatformProperty where
  toResourceProperties GatewayPlatformProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Gateway.GatewayPlatform",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GreengrassV2" Prelude.<$> greengrassV2,
                            (JSON..=) "SiemensIE" Prelude.<$> siemensIE])}
instance JSON.ToJSON GatewayPlatformProperty where
  toJSON GatewayPlatformProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GreengrassV2" Prelude.<$> greengrassV2,
               (JSON..=) "SiemensIE" Prelude.<$> siemensIE]))
instance Property "GreengrassV2" GatewayPlatformProperty where
  type PropertyType "GreengrassV2" GatewayPlatformProperty = GreengrassV2Property
  set newValue GatewayPlatformProperty {..}
    = GatewayPlatformProperty
        {greengrassV2 = Prelude.pure newValue, ..}
instance Property "SiemensIE" GatewayPlatformProperty where
  type PropertyType "SiemensIE" GatewayPlatformProperty = SiemensIEProperty
  set newValue GatewayPlatformProperty {..}
    = GatewayPlatformProperty {siemensIE = Prelude.pure newValue, ..}