module Stratosphere.Connect.QuickConnect.PhoneNumberQuickConnectConfigProperty (
        PhoneNumberQuickConnectConfigProperty(..),
        mkPhoneNumberQuickConnectConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PhoneNumberQuickConnectConfigProperty
  = PhoneNumberQuickConnectConfigProperty {phoneNumber :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhoneNumberQuickConnectConfigProperty ::
  Value Prelude.Text -> PhoneNumberQuickConnectConfigProperty
mkPhoneNumberQuickConnectConfigProperty phoneNumber
  = PhoneNumberQuickConnectConfigProperty {phoneNumber = phoneNumber}
instance ToResourceProperties PhoneNumberQuickConnectConfigProperty where
  toResourceProperties PhoneNumberQuickConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::QuickConnect.PhoneNumberQuickConnectConfig",
         supportsTags = Prelude.False,
         properties = ["PhoneNumber" JSON..= phoneNumber]}
instance JSON.ToJSON PhoneNumberQuickConnectConfigProperty where
  toJSON PhoneNumberQuickConnectConfigProperty {..}
    = JSON.object ["PhoneNumber" JSON..= phoneNumber]
instance Property "PhoneNumber" PhoneNumberQuickConnectConfigProperty where
  type PropertyType "PhoneNumber" PhoneNumberQuickConnectConfigProperty = Value Prelude.Text
  set newValue PhoneNumberQuickConnectConfigProperty {}
    = PhoneNumberQuickConnectConfigProperty
        {phoneNumber = newValue, ..}