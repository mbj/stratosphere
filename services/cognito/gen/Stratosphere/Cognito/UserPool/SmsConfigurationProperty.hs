module Stratosphere.Cognito.UserPool.SmsConfigurationProperty (
        SmsConfigurationProperty(..), mkSmsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmsConfigurationProperty
  = SmsConfigurationProperty {externalId :: (Prelude.Maybe (Value Prelude.Text)),
                              snsCallerArn :: (Prelude.Maybe (Value Prelude.Text)),
                              snsRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsConfigurationProperty :: SmsConfigurationProperty
mkSmsConfigurationProperty
  = SmsConfigurationProperty
      {externalId = Prelude.Nothing, snsCallerArn = Prelude.Nothing,
       snsRegion = Prelude.Nothing}
instance ToResourceProperties SmsConfigurationProperty where
  toResourceProperties SmsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.SmsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExternalId" Prelude.<$> externalId,
                            (JSON..=) "SnsCallerArn" Prelude.<$> snsCallerArn,
                            (JSON..=) "SnsRegion" Prelude.<$> snsRegion])}
instance JSON.ToJSON SmsConfigurationProperty where
  toJSON SmsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExternalId" Prelude.<$> externalId,
               (JSON..=) "SnsCallerArn" Prelude.<$> snsCallerArn,
               (JSON..=) "SnsRegion" Prelude.<$> snsRegion]))
instance Property "ExternalId" SmsConfigurationProperty where
  type PropertyType "ExternalId" SmsConfigurationProperty = Value Prelude.Text
  set newValue SmsConfigurationProperty {..}
    = SmsConfigurationProperty {externalId = Prelude.pure newValue, ..}
instance Property "SnsCallerArn" SmsConfigurationProperty where
  type PropertyType "SnsCallerArn" SmsConfigurationProperty = Value Prelude.Text
  set newValue SmsConfigurationProperty {..}
    = SmsConfigurationProperty
        {snsCallerArn = Prelude.pure newValue, ..}
instance Property "SnsRegion" SmsConfigurationProperty where
  type PropertyType "SnsRegion" SmsConfigurationProperty = Value Prelude.Text
  set newValue SmsConfigurationProperty {..}
    = SmsConfigurationProperty {snsRegion = Prelude.pure newValue, ..}