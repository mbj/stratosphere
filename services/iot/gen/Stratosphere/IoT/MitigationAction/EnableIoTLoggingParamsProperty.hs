module Stratosphere.IoT.MitigationAction.EnableIoTLoggingParamsProperty (
        EnableIoTLoggingParamsProperty(..),
        mkEnableIoTLoggingParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnableIoTLoggingParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-enableiotloggingparams.html>
    EnableIoTLoggingParamsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-enableiotloggingparams.html#cfn-iot-mitigationaction-enableiotloggingparams-loglevel>
                                    logLevel :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-enableiotloggingparams.html#cfn-iot-mitigationaction-enableiotloggingparams-rolearnforlogging>
                                    roleArnForLogging :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnableIoTLoggingParamsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnableIoTLoggingParamsProperty
mkEnableIoTLoggingParamsProperty logLevel roleArnForLogging
  = EnableIoTLoggingParamsProperty
      {haddock_workaround_ = (), logLevel = logLevel,
       roleArnForLogging = roleArnForLogging}
instance ToResourceProperties EnableIoTLoggingParamsProperty where
  toResourceProperties EnableIoTLoggingParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.EnableIoTLoggingParams",
         supportsTags = Prelude.False,
         properties = ["LogLevel" JSON..= logLevel,
                       "RoleArnForLogging" JSON..= roleArnForLogging]}
instance JSON.ToJSON EnableIoTLoggingParamsProperty where
  toJSON EnableIoTLoggingParamsProperty {..}
    = JSON.object
        ["LogLevel" JSON..= logLevel,
         "RoleArnForLogging" JSON..= roleArnForLogging]
instance Property "LogLevel" EnableIoTLoggingParamsProperty where
  type PropertyType "LogLevel" EnableIoTLoggingParamsProperty = Value Prelude.Text
  set newValue EnableIoTLoggingParamsProperty {..}
    = EnableIoTLoggingParamsProperty {logLevel = newValue, ..}
instance Property "RoleArnForLogging" EnableIoTLoggingParamsProperty where
  type PropertyType "RoleArnForLogging" EnableIoTLoggingParamsProperty = Value Prelude.Text
  set newValue EnableIoTLoggingParamsProperty {..}
    = EnableIoTLoggingParamsProperty {roleArnForLogging = newValue, ..}