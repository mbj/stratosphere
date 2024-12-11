module Stratosphere.CustomerProfiles.SegmentDefinition.ProfileAttributesProperty (
        module Exports, ProfileAttributesProperty(..),
        mkProfileAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.AddressDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.AttributeDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.DateDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.ExtraLengthValueProfileDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.ProfileDimensionProperty as Exports
import Stratosphere.ResourceProperties
data ProfileAttributesProperty
  = ProfileAttributesProperty {accountNumber :: (Prelude.Maybe ProfileDimensionProperty),
                               additionalInformation :: (Prelude.Maybe ExtraLengthValueProfileDimensionProperty),
                               address :: (Prelude.Maybe AddressDimensionProperty),
                               attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text AttributeDimensionProperty)),
                               billingAddress :: (Prelude.Maybe AddressDimensionProperty),
                               birthDate :: (Prelude.Maybe DateDimensionProperty),
                               businessEmailAddress :: (Prelude.Maybe ProfileDimensionProperty),
                               businessName :: (Prelude.Maybe ProfileDimensionProperty),
                               businessPhoneNumber :: (Prelude.Maybe ProfileDimensionProperty),
                               emailAddress :: (Prelude.Maybe ProfileDimensionProperty),
                               firstName :: (Prelude.Maybe ProfileDimensionProperty),
                               genderString :: (Prelude.Maybe ProfileDimensionProperty),
                               homePhoneNumber :: (Prelude.Maybe ProfileDimensionProperty),
                               lastName :: (Prelude.Maybe ProfileDimensionProperty),
                               mailingAddress :: (Prelude.Maybe AddressDimensionProperty),
                               middleName :: (Prelude.Maybe ProfileDimensionProperty),
                               mobilePhoneNumber :: (Prelude.Maybe ProfileDimensionProperty),
                               partyTypeString :: (Prelude.Maybe ProfileDimensionProperty),
                               personalEmailAddress :: (Prelude.Maybe ProfileDimensionProperty),
                               phoneNumber :: (Prelude.Maybe ProfileDimensionProperty),
                               shippingAddress :: (Prelude.Maybe AddressDimensionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileAttributesProperty :: ProfileAttributesProperty
mkProfileAttributesProperty
  = ProfileAttributesProperty
      {accountNumber = Prelude.Nothing,
       additionalInformation = Prelude.Nothing, address = Prelude.Nothing,
       attributes = Prelude.Nothing, billingAddress = Prelude.Nothing,
       birthDate = Prelude.Nothing,
       businessEmailAddress = Prelude.Nothing,
       businessName = Prelude.Nothing,
       businessPhoneNumber = Prelude.Nothing,
       emailAddress = Prelude.Nothing, firstName = Prelude.Nothing,
       genderString = Prelude.Nothing, homePhoneNumber = Prelude.Nothing,
       lastName = Prelude.Nothing, mailingAddress = Prelude.Nothing,
       middleName = Prelude.Nothing, mobilePhoneNumber = Prelude.Nothing,
       partyTypeString = Prelude.Nothing,
       personalEmailAddress = Prelude.Nothing,
       phoneNumber = Prelude.Nothing, shippingAddress = Prelude.Nothing}
instance ToResourceProperties ProfileAttributesProperty where
  toResourceProperties ProfileAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.ProfileAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountNumber" Prelude.<$> accountNumber,
                            (JSON..=) "AdditionalInformation"
                              Prelude.<$> additionalInformation,
                            (JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Attributes" Prelude.<$> attributes,
                            (JSON..=) "BillingAddress" Prelude.<$> billingAddress,
                            (JSON..=) "BirthDate" Prelude.<$> birthDate,
                            (JSON..=) "BusinessEmailAddress" Prelude.<$> businessEmailAddress,
                            (JSON..=) "BusinessName" Prelude.<$> businessName,
                            (JSON..=) "BusinessPhoneNumber" Prelude.<$> businessPhoneNumber,
                            (JSON..=) "EmailAddress" Prelude.<$> emailAddress,
                            (JSON..=) "FirstName" Prelude.<$> firstName,
                            (JSON..=) "GenderString" Prelude.<$> genderString,
                            (JSON..=) "HomePhoneNumber" Prelude.<$> homePhoneNumber,
                            (JSON..=) "LastName" Prelude.<$> lastName,
                            (JSON..=) "MailingAddress" Prelude.<$> mailingAddress,
                            (JSON..=) "MiddleName" Prelude.<$> middleName,
                            (JSON..=) "MobilePhoneNumber" Prelude.<$> mobilePhoneNumber,
                            (JSON..=) "PartyTypeString" Prelude.<$> partyTypeString,
                            (JSON..=) "PersonalEmailAddress" Prelude.<$> personalEmailAddress,
                            (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber,
                            (JSON..=) "ShippingAddress" Prelude.<$> shippingAddress])}
instance JSON.ToJSON ProfileAttributesProperty where
  toJSON ProfileAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountNumber" Prelude.<$> accountNumber,
               (JSON..=) "AdditionalInformation"
                 Prelude.<$> additionalInformation,
               (JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Attributes" Prelude.<$> attributes,
               (JSON..=) "BillingAddress" Prelude.<$> billingAddress,
               (JSON..=) "BirthDate" Prelude.<$> birthDate,
               (JSON..=) "BusinessEmailAddress" Prelude.<$> businessEmailAddress,
               (JSON..=) "BusinessName" Prelude.<$> businessName,
               (JSON..=) "BusinessPhoneNumber" Prelude.<$> businessPhoneNumber,
               (JSON..=) "EmailAddress" Prelude.<$> emailAddress,
               (JSON..=) "FirstName" Prelude.<$> firstName,
               (JSON..=) "GenderString" Prelude.<$> genderString,
               (JSON..=) "HomePhoneNumber" Prelude.<$> homePhoneNumber,
               (JSON..=) "LastName" Prelude.<$> lastName,
               (JSON..=) "MailingAddress" Prelude.<$> mailingAddress,
               (JSON..=) "MiddleName" Prelude.<$> middleName,
               (JSON..=) "MobilePhoneNumber" Prelude.<$> mobilePhoneNumber,
               (JSON..=) "PartyTypeString" Prelude.<$> partyTypeString,
               (JSON..=) "PersonalEmailAddress" Prelude.<$> personalEmailAddress,
               (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber,
               (JSON..=) "ShippingAddress" Prelude.<$> shippingAddress]))
instance Property "AccountNumber" ProfileAttributesProperty where
  type PropertyType "AccountNumber" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {accountNumber = Prelude.pure newValue, ..}
instance Property "AdditionalInformation" ProfileAttributesProperty where
  type PropertyType "AdditionalInformation" ProfileAttributesProperty = ExtraLengthValueProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {additionalInformation = Prelude.pure newValue, ..}
instance Property "Address" ProfileAttributesProperty where
  type PropertyType "Address" ProfileAttributesProperty = AddressDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty {address = Prelude.pure newValue, ..}
instance Property "Attributes" ProfileAttributesProperty where
  type PropertyType "Attributes" ProfileAttributesProperty = Prelude.Map Prelude.Text AttributeDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {attributes = Prelude.pure newValue, ..}
instance Property "BillingAddress" ProfileAttributesProperty where
  type PropertyType "BillingAddress" ProfileAttributesProperty = AddressDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {billingAddress = Prelude.pure newValue, ..}
instance Property "BirthDate" ProfileAttributesProperty where
  type PropertyType "BirthDate" ProfileAttributesProperty = DateDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty {birthDate = Prelude.pure newValue, ..}
instance Property "BusinessEmailAddress" ProfileAttributesProperty where
  type PropertyType "BusinessEmailAddress" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {businessEmailAddress = Prelude.pure newValue, ..}
instance Property "BusinessName" ProfileAttributesProperty where
  type PropertyType "BusinessName" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {businessName = Prelude.pure newValue, ..}
instance Property "BusinessPhoneNumber" ProfileAttributesProperty where
  type PropertyType "BusinessPhoneNumber" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {businessPhoneNumber = Prelude.pure newValue, ..}
instance Property "EmailAddress" ProfileAttributesProperty where
  type PropertyType "EmailAddress" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {emailAddress = Prelude.pure newValue, ..}
instance Property "FirstName" ProfileAttributesProperty where
  type PropertyType "FirstName" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty {firstName = Prelude.pure newValue, ..}
instance Property "GenderString" ProfileAttributesProperty where
  type PropertyType "GenderString" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {genderString = Prelude.pure newValue, ..}
instance Property "HomePhoneNumber" ProfileAttributesProperty where
  type PropertyType "HomePhoneNumber" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {homePhoneNumber = Prelude.pure newValue, ..}
instance Property "LastName" ProfileAttributesProperty where
  type PropertyType "LastName" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty {lastName = Prelude.pure newValue, ..}
instance Property "MailingAddress" ProfileAttributesProperty where
  type PropertyType "MailingAddress" ProfileAttributesProperty = AddressDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {mailingAddress = Prelude.pure newValue, ..}
instance Property "MiddleName" ProfileAttributesProperty where
  type PropertyType "MiddleName" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {middleName = Prelude.pure newValue, ..}
instance Property "MobilePhoneNumber" ProfileAttributesProperty where
  type PropertyType "MobilePhoneNumber" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {mobilePhoneNumber = Prelude.pure newValue, ..}
instance Property "PartyTypeString" ProfileAttributesProperty where
  type PropertyType "PartyTypeString" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {partyTypeString = Prelude.pure newValue, ..}
instance Property "PersonalEmailAddress" ProfileAttributesProperty where
  type PropertyType "PersonalEmailAddress" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {personalEmailAddress = Prelude.pure newValue, ..}
instance Property "PhoneNumber" ProfileAttributesProperty where
  type PropertyType "PhoneNumber" ProfileAttributesProperty = ProfileDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {phoneNumber = Prelude.pure newValue, ..}
instance Property "ShippingAddress" ProfileAttributesProperty where
  type PropertyType "ShippingAddress" ProfileAttributesProperty = AddressDimensionProperty
  set newValue ProfileAttributesProperty {..}
    = ProfileAttributesProperty
        {shippingAddress = Prelude.pure newValue, ..}