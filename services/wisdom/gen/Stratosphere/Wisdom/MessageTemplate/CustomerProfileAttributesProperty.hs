module Stratosphere.Wisdom.MessageTemplate.CustomerProfileAttributesProperty (
        CustomerProfileAttributesProperty(..),
        mkCustomerProfileAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerProfileAttributesProperty
  = CustomerProfileAttributesProperty {accountNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                       additionalInformation :: (Prelude.Maybe (Value Prelude.Text)),
                                       address1 :: (Prelude.Maybe (Value Prelude.Text)),
                                       address2 :: (Prelude.Maybe (Value Prelude.Text)),
                                       address3 :: (Prelude.Maybe (Value Prelude.Text)),
                                       address4 :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingAddress1 :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingAddress2 :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingAddress3 :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingAddress4 :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingCity :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingCountry :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingCounty :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingPostalCode :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingProvince :: (Prelude.Maybe (Value Prelude.Text)),
                                       billingState :: (Prelude.Maybe (Value Prelude.Text)),
                                       birthDate :: (Prelude.Maybe (Value Prelude.Text)),
                                       businessEmailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                       businessName :: (Prelude.Maybe (Value Prelude.Text)),
                                       businessPhoneNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                       city :: (Prelude.Maybe (Value Prelude.Text)),
                                       country :: (Prelude.Maybe (Value Prelude.Text)),
                                       county :: (Prelude.Maybe (Value Prelude.Text)),
                                       custom :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       emailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                       firstName :: (Prelude.Maybe (Value Prelude.Text)),
                                       gender :: (Prelude.Maybe (Value Prelude.Text)),
                                       homePhoneNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                       lastName :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingAddress1 :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingAddress2 :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingAddress3 :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingAddress4 :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingCity :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingCountry :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingCounty :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingPostalCode :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingProvince :: (Prelude.Maybe (Value Prelude.Text)),
                                       mailingState :: (Prelude.Maybe (Value Prelude.Text)),
                                       middleName :: (Prelude.Maybe (Value Prelude.Text)),
                                       mobilePhoneNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                       partyType :: (Prelude.Maybe (Value Prelude.Text)),
                                       phoneNumber :: (Prelude.Maybe (Value Prelude.Text)),
                                       postalCode :: (Prelude.Maybe (Value Prelude.Text)),
                                       profileARN :: (Prelude.Maybe (Value Prelude.Text)),
                                       profileId :: (Prelude.Maybe (Value Prelude.Text)),
                                       province :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingAddress1 :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingAddress2 :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingAddress3 :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingAddress4 :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingCity :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingCountry :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingCounty :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingPostalCode :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingProvince :: (Prelude.Maybe (Value Prelude.Text)),
                                       shippingState :: (Prelude.Maybe (Value Prelude.Text)),
                                       state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerProfileAttributesProperty ::
  CustomerProfileAttributesProperty
mkCustomerProfileAttributesProperty
  = CustomerProfileAttributesProperty
      {accountNumber = Prelude.Nothing,
       additionalInformation = Prelude.Nothing,
       address1 = Prelude.Nothing, address2 = Prelude.Nothing,
       address3 = Prelude.Nothing, address4 = Prelude.Nothing,
       billingAddress1 = Prelude.Nothing,
       billingAddress2 = Prelude.Nothing,
       billingAddress3 = Prelude.Nothing,
       billingAddress4 = Prelude.Nothing, billingCity = Prelude.Nothing,
       billingCountry = Prelude.Nothing, billingCounty = Prelude.Nothing,
       billingPostalCode = Prelude.Nothing,
       billingProvince = Prelude.Nothing, billingState = Prelude.Nothing,
       birthDate = Prelude.Nothing,
       businessEmailAddress = Prelude.Nothing,
       businessName = Prelude.Nothing,
       businessPhoneNumber = Prelude.Nothing, city = Prelude.Nothing,
       country = Prelude.Nothing, county = Prelude.Nothing,
       custom = Prelude.Nothing, emailAddress = Prelude.Nothing,
       firstName = Prelude.Nothing, gender = Prelude.Nothing,
       homePhoneNumber = Prelude.Nothing, lastName = Prelude.Nothing,
       mailingAddress1 = Prelude.Nothing,
       mailingAddress2 = Prelude.Nothing,
       mailingAddress3 = Prelude.Nothing,
       mailingAddress4 = Prelude.Nothing, mailingCity = Prelude.Nothing,
       mailingCountry = Prelude.Nothing, mailingCounty = Prelude.Nothing,
       mailingPostalCode = Prelude.Nothing,
       mailingProvince = Prelude.Nothing, mailingState = Prelude.Nothing,
       middleName = Prelude.Nothing, mobilePhoneNumber = Prelude.Nothing,
       partyType = Prelude.Nothing, phoneNumber = Prelude.Nothing,
       postalCode = Prelude.Nothing, profileARN = Prelude.Nothing,
       profileId = Prelude.Nothing, province = Prelude.Nothing,
       shippingAddress1 = Prelude.Nothing,
       shippingAddress2 = Prelude.Nothing,
       shippingAddress3 = Prelude.Nothing,
       shippingAddress4 = Prelude.Nothing, shippingCity = Prelude.Nothing,
       shippingCountry = Prelude.Nothing,
       shippingCounty = Prelude.Nothing,
       shippingPostalCode = Prelude.Nothing,
       shippingProvince = Prelude.Nothing,
       shippingState = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties CustomerProfileAttributesProperty where
  toResourceProperties CustomerProfileAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.CustomerProfileAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountNumber" Prelude.<$> accountNumber,
                            (JSON..=) "AdditionalInformation"
                              Prelude.<$> additionalInformation,
                            (JSON..=) "Address1" Prelude.<$> address1,
                            (JSON..=) "Address2" Prelude.<$> address2,
                            (JSON..=) "Address3" Prelude.<$> address3,
                            (JSON..=) "Address4" Prelude.<$> address4,
                            (JSON..=) "BillingAddress1" Prelude.<$> billingAddress1,
                            (JSON..=) "BillingAddress2" Prelude.<$> billingAddress2,
                            (JSON..=) "BillingAddress3" Prelude.<$> billingAddress3,
                            (JSON..=) "BillingAddress4" Prelude.<$> billingAddress4,
                            (JSON..=) "BillingCity" Prelude.<$> billingCity,
                            (JSON..=) "BillingCountry" Prelude.<$> billingCountry,
                            (JSON..=) "BillingCounty" Prelude.<$> billingCounty,
                            (JSON..=) "BillingPostalCode" Prelude.<$> billingPostalCode,
                            (JSON..=) "BillingProvince" Prelude.<$> billingProvince,
                            (JSON..=) "BillingState" Prelude.<$> billingState,
                            (JSON..=) "BirthDate" Prelude.<$> birthDate,
                            (JSON..=) "BusinessEmailAddress" Prelude.<$> businessEmailAddress,
                            (JSON..=) "BusinessName" Prelude.<$> businessName,
                            (JSON..=) "BusinessPhoneNumber" Prelude.<$> businessPhoneNumber,
                            (JSON..=) "City" Prelude.<$> city,
                            (JSON..=) "Country" Prelude.<$> country,
                            (JSON..=) "County" Prelude.<$> county,
                            (JSON..=) "Custom" Prelude.<$> custom,
                            (JSON..=) "EmailAddress" Prelude.<$> emailAddress,
                            (JSON..=) "FirstName" Prelude.<$> firstName,
                            (JSON..=) "Gender" Prelude.<$> gender,
                            (JSON..=) "HomePhoneNumber" Prelude.<$> homePhoneNumber,
                            (JSON..=) "LastName" Prelude.<$> lastName,
                            (JSON..=) "MailingAddress1" Prelude.<$> mailingAddress1,
                            (JSON..=) "MailingAddress2" Prelude.<$> mailingAddress2,
                            (JSON..=) "MailingAddress3" Prelude.<$> mailingAddress3,
                            (JSON..=) "MailingAddress4" Prelude.<$> mailingAddress4,
                            (JSON..=) "MailingCity" Prelude.<$> mailingCity,
                            (JSON..=) "MailingCountry" Prelude.<$> mailingCountry,
                            (JSON..=) "MailingCounty" Prelude.<$> mailingCounty,
                            (JSON..=) "MailingPostalCode" Prelude.<$> mailingPostalCode,
                            (JSON..=) "MailingProvince" Prelude.<$> mailingProvince,
                            (JSON..=) "MailingState" Prelude.<$> mailingState,
                            (JSON..=) "MiddleName" Prelude.<$> middleName,
                            (JSON..=) "MobilePhoneNumber" Prelude.<$> mobilePhoneNumber,
                            (JSON..=) "PartyType" Prelude.<$> partyType,
                            (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber,
                            (JSON..=) "PostalCode" Prelude.<$> postalCode,
                            (JSON..=) "ProfileARN" Prelude.<$> profileARN,
                            (JSON..=) "ProfileId" Prelude.<$> profileId,
                            (JSON..=) "Province" Prelude.<$> province,
                            (JSON..=) "ShippingAddress1" Prelude.<$> shippingAddress1,
                            (JSON..=) "ShippingAddress2" Prelude.<$> shippingAddress2,
                            (JSON..=) "ShippingAddress3" Prelude.<$> shippingAddress3,
                            (JSON..=) "ShippingAddress4" Prelude.<$> shippingAddress4,
                            (JSON..=) "ShippingCity" Prelude.<$> shippingCity,
                            (JSON..=) "ShippingCountry" Prelude.<$> shippingCountry,
                            (JSON..=) "ShippingCounty" Prelude.<$> shippingCounty,
                            (JSON..=) "ShippingPostalCode" Prelude.<$> shippingPostalCode,
                            (JSON..=) "ShippingProvince" Prelude.<$> shippingProvince,
                            (JSON..=) "ShippingState" Prelude.<$> shippingState,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON CustomerProfileAttributesProperty where
  toJSON CustomerProfileAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountNumber" Prelude.<$> accountNumber,
               (JSON..=) "AdditionalInformation"
                 Prelude.<$> additionalInformation,
               (JSON..=) "Address1" Prelude.<$> address1,
               (JSON..=) "Address2" Prelude.<$> address2,
               (JSON..=) "Address3" Prelude.<$> address3,
               (JSON..=) "Address4" Prelude.<$> address4,
               (JSON..=) "BillingAddress1" Prelude.<$> billingAddress1,
               (JSON..=) "BillingAddress2" Prelude.<$> billingAddress2,
               (JSON..=) "BillingAddress3" Prelude.<$> billingAddress3,
               (JSON..=) "BillingAddress4" Prelude.<$> billingAddress4,
               (JSON..=) "BillingCity" Prelude.<$> billingCity,
               (JSON..=) "BillingCountry" Prelude.<$> billingCountry,
               (JSON..=) "BillingCounty" Prelude.<$> billingCounty,
               (JSON..=) "BillingPostalCode" Prelude.<$> billingPostalCode,
               (JSON..=) "BillingProvince" Prelude.<$> billingProvince,
               (JSON..=) "BillingState" Prelude.<$> billingState,
               (JSON..=) "BirthDate" Prelude.<$> birthDate,
               (JSON..=) "BusinessEmailAddress" Prelude.<$> businessEmailAddress,
               (JSON..=) "BusinessName" Prelude.<$> businessName,
               (JSON..=) "BusinessPhoneNumber" Prelude.<$> businessPhoneNumber,
               (JSON..=) "City" Prelude.<$> city,
               (JSON..=) "Country" Prelude.<$> country,
               (JSON..=) "County" Prelude.<$> county,
               (JSON..=) "Custom" Prelude.<$> custom,
               (JSON..=) "EmailAddress" Prelude.<$> emailAddress,
               (JSON..=) "FirstName" Prelude.<$> firstName,
               (JSON..=) "Gender" Prelude.<$> gender,
               (JSON..=) "HomePhoneNumber" Prelude.<$> homePhoneNumber,
               (JSON..=) "LastName" Prelude.<$> lastName,
               (JSON..=) "MailingAddress1" Prelude.<$> mailingAddress1,
               (JSON..=) "MailingAddress2" Prelude.<$> mailingAddress2,
               (JSON..=) "MailingAddress3" Prelude.<$> mailingAddress3,
               (JSON..=) "MailingAddress4" Prelude.<$> mailingAddress4,
               (JSON..=) "MailingCity" Prelude.<$> mailingCity,
               (JSON..=) "MailingCountry" Prelude.<$> mailingCountry,
               (JSON..=) "MailingCounty" Prelude.<$> mailingCounty,
               (JSON..=) "MailingPostalCode" Prelude.<$> mailingPostalCode,
               (JSON..=) "MailingProvince" Prelude.<$> mailingProvince,
               (JSON..=) "MailingState" Prelude.<$> mailingState,
               (JSON..=) "MiddleName" Prelude.<$> middleName,
               (JSON..=) "MobilePhoneNumber" Prelude.<$> mobilePhoneNumber,
               (JSON..=) "PartyType" Prelude.<$> partyType,
               (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber,
               (JSON..=) "PostalCode" Prelude.<$> postalCode,
               (JSON..=) "ProfileARN" Prelude.<$> profileARN,
               (JSON..=) "ProfileId" Prelude.<$> profileId,
               (JSON..=) "Province" Prelude.<$> province,
               (JSON..=) "ShippingAddress1" Prelude.<$> shippingAddress1,
               (JSON..=) "ShippingAddress2" Prelude.<$> shippingAddress2,
               (JSON..=) "ShippingAddress3" Prelude.<$> shippingAddress3,
               (JSON..=) "ShippingAddress4" Prelude.<$> shippingAddress4,
               (JSON..=) "ShippingCity" Prelude.<$> shippingCity,
               (JSON..=) "ShippingCountry" Prelude.<$> shippingCountry,
               (JSON..=) "ShippingCounty" Prelude.<$> shippingCounty,
               (JSON..=) "ShippingPostalCode" Prelude.<$> shippingPostalCode,
               (JSON..=) "ShippingProvince" Prelude.<$> shippingProvince,
               (JSON..=) "ShippingState" Prelude.<$> shippingState,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "AccountNumber" CustomerProfileAttributesProperty where
  type PropertyType "AccountNumber" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {accountNumber = Prelude.pure newValue, ..}
instance Property "AdditionalInformation" CustomerProfileAttributesProperty where
  type PropertyType "AdditionalInformation" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {additionalInformation = Prelude.pure newValue, ..}
instance Property "Address1" CustomerProfileAttributesProperty where
  type PropertyType "Address1" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {address1 = Prelude.pure newValue, ..}
instance Property "Address2" CustomerProfileAttributesProperty where
  type PropertyType "Address2" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {address2 = Prelude.pure newValue, ..}
instance Property "Address3" CustomerProfileAttributesProperty where
  type PropertyType "Address3" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {address3 = Prelude.pure newValue, ..}
instance Property "Address4" CustomerProfileAttributesProperty where
  type PropertyType "Address4" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {address4 = Prelude.pure newValue, ..}
instance Property "BillingAddress1" CustomerProfileAttributesProperty where
  type PropertyType "BillingAddress1" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingAddress1 = Prelude.pure newValue, ..}
instance Property "BillingAddress2" CustomerProfileAttributesProperty where
  type PropertyType "BillingAddress2" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingAddress2 = Prelude.pure newValue, ..}
instance Property "BillingAddress3" CustomerProfileAttributesProperty where
  type PropertyType "BillingAddress3" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingAddress3 = Prelude.pure newValue, ..}
instance Property "BillingAddress4" CustomerProfileAttributesProperty where
  type PropertyType "BillingAddress4" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingAddress4 = Prelude.pure newValue, ..}
instance Property "BillingCity" CustomerProfileAttributesProperty where
  type PropertyType "BillingCity" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingCity = Prelude.pure newValue, ..}
instance Property "BillingCountry" CustomerProfileAttributesProperty where
  type PropertyType "BillingCountry" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingCountry = Prelude.pure newValue, ..}
instance Property "BillingCounty" CustomerProfileAttributesProperty where
  type PropertyType "BillingCounty" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingCounty = Prelude.pure newValue, ..}
instance Property "BillingPostalCode" CustomerProfileAttributesProperty where
  type PropertyType "BillingPostalCode" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingPostalCode = Prelude.pure newValue, ..}
instance Property "BillingProvince" CustomerProfileAttributesProperty where
  type PropertyType "BillingProvince" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingProvince = Prelude.pure newValue, ..}
instance Property "BillingState" CustomerProfileAttributesProperty where
  type PropertyType "BillingState" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {billingState = Prelude.pure newValue, ..}
instance Property "BirthDate" CustomerProfileAttributesProperty where
  type PropertyType "BirthDate" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {birthDate = Prelude.pure newValue, ..}
instance Property "BusinessEmailAddress" CustomerProfileAttributesProperty where
  type PropertyType "BusinessEmailAddress" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {businessEmailAddress = Prelude.pure newValue, ..}
instance Property "BusinessName" CustomerProfileAttributesProperty where
  type PropertyType "BusinessName" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {businessName = Prelude.pure newValue, ..}
instance Property "BusinessPhoneNumber" CustomerProfileAttributesProperty where
  type PropertyType "BusinessPhoneNumber" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {businessPhoneNumber = Prelude.pure newValue, ..}
instance Property "City" CustomerProfileAttributesProperty where
  type PropertyType "City" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {city = Prelude.pure newValue, ..}
instance Property "Country" CustomerProfileAttributesProperty where
  type PropertyType "Country" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {country = Prelude.pure newValue, ..}
instance Property "County" CustomerProfileAttributesProperty where
  type PropertyType "County" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {county = Prelude.pure newValue, ..}
instance Property "Custom" CustomerProfileAttributesProperty where
  type PropertyType "Custom" CustomerProfileAttributesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {custom = Prelude.pure newValue, ..}
instance Property "EmailAddress" CustomerProfileAttributesProperty where
  type PropertyType "EmailAddress" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {emailAddress = Prelude.pure newValue, ..}
instance Property "FirstName" CustomerProfileAttributesProperty where
  type PropertyType "FirstName" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {firstName = Prelude.pure newValue, ..}
instance Property "Gender" CustomerProfileAttributesProperty where
  type PropertyType "Gender" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {gender = Prelude.pure newValue, ..}
instance Property "HomePhoneNumber" CustomerProfileAttributesProperty where
  type PropertyType "HomePhoneNumber" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {homePhoneNumber = Prelude.pure newValue, ..}
instance Property "LastName" CustomerProfileAttributesProperty where
  type PropertyType "LastName" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {lastName = Prelude.pure newValue, ..}
instance Property "MailingAddress1" CustomerProfileAttributesProperty where
  type PropertyType "MailingAddress1" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingAddress1 = Prelude.pure newValue, ..}
instance Property "MailingAddress2" CustomerProfileAttributesProperty where
  type PropertyType "MailingAddress2" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingAddress2 = Prelude.pure newValue, ..}
instance Property "MailingAddress3" CustomerProfileAttributesProperty where
  type PropertyType "MailingAddress3" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingAddress3 = Prelude.pure newValue, ..}
instance Property "MailingAddress4" CustomerProfileAttributesProperty where
  type PropertyType "MailingAddress4" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingAddress4 = Prelude.pure newValue, ..}
instance Property "MailingCity" CustomerProfileAttributesProperty where
  type PropertyType "MailingCity" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingCity = Prelude.pure newValue, ..}
instance Property "MailingCountry" CustomerProfileAttributesProperty where
  type PropertyType "MailingCountry" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingCountry = Prelude.pure newValue, ..}
instance Property "MailingCounty" CustomerProfileAttributesProperty where
  type PropertyType "MailingCounty" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingCounty = Prelude.pure newValue, ..}
instance Property "MailingPostalCode" CustomerProfileAttributesProperty where
  type PropertyType "MailingPostalCode" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingPostalCode = Prelude.pure newValue, ..}
instance Property "MailingProvince" CustomerProfileAttributesProperty where
  type PropertyType "MailingProvince" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingProvince = Prelude.pure newValue, ..}
instance Property "MailingState" CustomerProfileAttributesProperty where
  type PropertyType "MailingState" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mailingState = Prelude.pure newValue, ..}
instance Property "MiddleName" CustomerProfileAttributesProperty where
  type PropertyType "MiddleName" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {middleName = Prelude.pure newValue, ..}
instance Property "MobilePhoneNumber" CustomerProfileAttributesProperty where
  type PropertyType "MobilePhoneNumber" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {mobilePhoneNumber = Prelude.pure newValue, ..}
instance Property "PartyType" CustomerProfileAttributesProperty where
  type PropertyType "PartyType" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {partyType = Prelude.pure newValue, ..}
instance Property "PhoneNumber" CustomerProfileAttributesProperty where
  type PropertyType "PhoneNumber" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {phoneNumber = Prelude.pure newValue, ..}
instance Property "PostalCode" CustomerProfileAttributesProperty where
  type PropertyType "PostalCode" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {postalCode = Prelude.pure newValue, ..}
instance Property "ProfileARN" CustomerProfileAttributesProperty where
  type PropertyType "ProfileARN" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {profileARN = Prelude.pure newValue, ..}
instance Property "ProfileId" CustomerProfileAttributesProperty where
  type PropertyType "ProfileId" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {profileId = Prelude.pure newValue, ..}
instance Property "Province" CustomerProfileAttributesProperty where
  type PropertyType "Province" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {province = Prelude.pure newValue, ..}
instance Property "ShippingAddress1" CustomerProfileAttributesProperty where
  type PropertyType "ShippingAddress1" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingAddress1 = Prelude.pure newValue, ..}
instance Property "ShippingAddress2" CustomerProfileAttributesProperty where
  type PropertyType "ShippingAddress2" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingAddress2 = Prelude.pure newValue, ..}
instance Property "ShippingAddress3" CustomerProfileAttributesProperty where
  type PropertyType "ShippingAddress3" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingAddress3 = Prelude.pure newValue, ..}
instance Property "ShippingAddress4" CustomerProfileAttributesProperty where
  type PropertyType "ShippingAddress4" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingAddress4 = Prelude.pure newValue, ..}
instance Property "ShippingCity" CustomerProfileAttributesProperty where
  type PropertyType "ShippingCity" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingCity = Prelude.pure newValue, ..}
instance Property "ShippingCountry" CustomerProfileAttributesProperty where
  type PropertyType "ShippingCountry" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingCountry = Prelude.pure newValue, ..}
instance Property "ShippingCounty" CustomerProfileAttributesProperty where
  type PropertyType "ShippingCounty" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingCounty = Prelude.pure newValue, ..}
instance Property "ShippingPostalCode" CustomerProfileAttributesProperty where
  type PropertyType "ShippingPostalCode" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingPostalCode = Prelude.pure newValue, ..}
instance Property "ShippingProvince" CustomerProfileAttributesProperty where
  type PropertyType "ShippingProvince" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingProvince = Prelude.pure newValue, ..}
instance Property "ShippingState" CustomerProfileAttributesProperty where
  type PropertyType "ShippingState" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {shippingState = Prelude.pure newValue, ..}
instance Property "State" CustomerProfileAttributesProperty where
  type PropertyType "State" CustomerProfileAttributesProperty = Value Prelude.Text
  set newValue CustomerProfileAttributesProperty {..}
    = CustomerProfileAttributesProperty
        {state = Prelude.pure newValue, ..}