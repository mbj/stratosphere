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
  = EnableIoTLoggingParamsProperty {logLevel :: (Value Prelude.Text),
                                    roleArnForLogging :: (Value Prelude.Text)}
mkEnableIoTLoggingParamsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnableIoTLoggingParamsProperty
mkEnableIoTLoggingParamsProperty logLevel roleArnForLogging
  = EnableIoTLoggingParamsProperty
      {logLevel = logLevel, roleArnForLogging = roleArnForLogging}
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