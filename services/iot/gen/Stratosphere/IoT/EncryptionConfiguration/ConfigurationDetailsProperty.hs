module Stratosphere.IoT.EncryptionConfiguration.ConfigurationDetailsProperty (
        ConfigurationDetailsProperty(..), mkConfigurationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-encryptionconfiguration-configurationdetails.html>
    ConfigurationDetailsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-encryptionconfiguration-configurationdetails.html#cfn-iot-encryptionconfiguration-configurationdetails-configurationstatus>
                                  configurationStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-encryptionconfiguration-configurationdetails.html#cfn-iot-encryptionconfiguration-configurationdetails-errorcode>
                                  errorCode :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-encryptionconfiguration-configurationdetails.html#cfn-iot-encryptionconfiguration-configurationdetails-errormessage>
                                  errorMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationDetailsProperty :: ConfigurationDetailsProperty
mkConfigurationDetailsProperty
  = ConfigurationDetailsProperty
      {haddock_workaround_ = (), configurationStatus = Prelude.Nothing,
       errorCode = Prelude.Nothing, errorMessage = Prelude.Nothing}
instance ToResourceProperties ConfigurationDetailsProperty where
  toResourceProperties ConfigurationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::EncryptionConfiguration.ConfigurationDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigurationStatus" Prelude.<$> configurationStatus,
                            (JSON..=) "ErrorCode" Prelude.<$> errorCode,
                            (JSON..=) "ErrorMessage" Prelude.<$> errorMessage])}
instance JSON.ToJSON ConfigurationDetailsProperty where
  toJSON ConfigurationDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigurationStatus" Prelude.<$> configurationStatus,
               (JSON..=) "ErrorCode" Prelude.<$> errorCode,
               (JSON..=) "ErrorMessage" Prelude.<$> errorMessage]))
instance Property "ConfigurationStatus" ConfigurationDetailsProperty where
  type PropertyType "ConfigurationStatus" ConfigurationDetailsProperty = Value Prelude.Text
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {configurationStatus = Prelude.pure newValue, ..}
instance Property "ErrorCode" ConfigurationDetailsProperty where
  type PropertyType "ErrorCode" ConfigurationDetailsProperty = Value Prelude.Text
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {errorCode = Prelude.pure newValue, ..}
instance Property "ErrorMessage" ConfigurationDetailsProperty where
  type PropertyType "ErrorMessage" ConfigurationDetailsProperty = Value Prelude.Text
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {errorMessage = Prelude.pure newValue, ..}