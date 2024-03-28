module Stratosphere.WAFv2.WebACL.RequestInspectionACFPProperty (
        module Exports, RequestInspectionACFPProperty(..),
        mkRequestInspectionACFPProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestInspectionACFPProperty
  = RequestInspectionACFPProperty {addressFields :: (Prelude.Maybe [FieldIdentifierProperty]),
                                   emailField :: (Prelude.Maybe FieldIdentifierProperty),
                                   passwordField :: (Prelude.Maybe FieldIdentifierProperty),
                                   payloadType :: (Value Prelude.Text),
                                   phoneNumberFields :: (Prelude.Maybe [FieldIdentifierProperty]),
                                   usernameField :: (Prelude.Maybe FieldIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestInspectionACFPProperty ::
  Value Prelude.Text -> RequestInspectionACFPProperty
mkRequestInspectionACFPProperty payloadType
  = RequestInspectionACFPProperty
      {payloadType = payloadType, addressFields = Prelude.Nothing,
       emailField = Prelude.Nothing, passwordField = Prelude.Nothing,
       phoneNumberFields = Prelude.Nothing,
       usernameField = Prelude.Nothing}
instance ToResourceProperties RequestInspectionACFPProperty where
  toResourceProperties RequestInspectionACFPProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RequestInspectionACFP",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PayloadType" JSON..= payloadType]
                           (Prelude.catMaybes
                              [(JSON..=) "AddressFields" Prelude.<$> addressFields,
                               (JSON..=) "EmailField" Prelude.<$> emailField,
                               (JSON..=) "PasswordField" Prelude.<$> passwordField,
                               (JSON..=) "PhoneNumberFields" Prelude.<$> phoneNumberFields,
                               (JSON..=) "UsernameField" Prelude.<$> usernameField]))}
instance JSON.ToJSON RequestInspectionACFPProperty where
  toJSON RequestInspectionACFPProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PayloadType" JSON..= payloadType]
              (Prelude.catMaybes
                 [(JSON..=) "AddressFields" Prelude.<$> addressFields,
                  (JSON..=) "EmailField" Prelude.<$> emailField,
                  (JSON..=) "PasswordField" Prelude.<$> passwordField,
                  (JSON..=) "PhoneNumberFields" Prelude.<$> phoneNumberFields,
                  (JSON..=) "UsernameField" Prelude.<$> usernameField])))
instance Property "AddressFields" RequestInspectionACFPProperty where
  type PropertyType "AddressFields" RequestInspectionACFPProperty = [FieldIdentifierProperty]
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {addressFields = Prelude.pure newValue, ..}
instance Property "EmailField" RequestInspectionACFPProperty where
  type PropertyType "EmailField" RequestInspectionACFPProperty = FieldIdentifierProperty
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {emailField = Prelude.pure newValue, ..}
instance Property "PasswordField" RequestInspectionACFPProperty where
  type PropertyType "PasswordField" RequestInspectionACFPProperty = FieldIdentifierProperty
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {passwordField = Prelude.pure newValue, ..}
instance Property "PayloadType" RequestInspectionACFPProperty where
  type PropertyType "PayloadType" RequestInspectionACFPProperty = Value Prelude.Text
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty {payloadType = newValue, ..}
instance Property "PhoneNumberFields" RequestInspectionACFPProperty where
  type PropertyType "PhoneNumberFields" RequestInspectionACFPProperty = [FieldIdentifierProperty]
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {phoneNumberFields = Prelude.pure newValue, ..}
instance Property "UsernameField" RequestInspectionACFPProperty where
  type PropertyType "UsernameField" RequestInspectionACFPProperty = FieldIdentifierProperty
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {usernameField = Prelude.pure newValue, ..}