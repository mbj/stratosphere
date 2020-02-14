{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html

module Stratosphere.ResourceProperties.ACMPCACertificateAuthoritySubject where

import Stratosphere.ResourceImports


-- | Full data type definition for ACMPCACertificateAuthoritySubject. See
-- 'acmpcaCertificateAuthoritySubject' for a more convenient constructor.
data ACMPCACertificateAuthoritySubject =
  ACMPCACertificateAuthoritySubject
  { _aCMPCACertificateAuthoritySubjectCommonName :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectCountry :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectDistinguishedNameQualifier :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectGenerationQualifier :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectGivenName :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectInitials :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectLocality :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectOrganization :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectOrganizationalUnit :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectPseudonym :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectSerialNumber :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectState :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectSurname :: Maybe (Val Text)
  , _aCMPCACertificateAuthoritySubjectTitle :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ACMPCACertificateAuthoritySubject where
  toJSON ACMPCACertificateAuthoritySubject{..} =
    object $
    catMaybes
    [ fmap (("CommonName",) . toJSON) _aCMPCACertificateAuthoritySubjectCommonName
    , fmap (("Country",) . toJSON) _aCMPCACertificateAuthoritySubjectCountry
    , fmap (("DistinguishedNameQualifier",) . toJSON) _aCMPCACertificateAuthoritySubjectDistinguishedNameQualifier
    , fmap (("GenerationQualifier",) . toJSON) _aCMPCACertificateAuthoritySubjectGenerationQualifier
    , fmap (("GivenName",) . toJSON) _aCMPCACertificateAuthoritySubjectGivenName
    , fmap (("Initials",) . toJSON) _aCMPCACertificateAuthoritySubjectInitials
    , fmap (("Locality",) . toJSON) _aCMPCACertificateAuthoritySubjectLocality
    , fmap (("Organization",) . toJSON) _aCMPCACertificateAuthoritySubjectOrganization
    , fmap (("OrganizationalUnit",) . toJSON) _aCMPCACertificateAuthoritySubjectOrganizationalUnit
    , fmap (("Pseudonym",) . toJSON) _aCMPCACertificateAuthoritySubjectPseudonym
    , fmap (("SerialNumber",) . toJSON) _aCMPCACertificateAuthoritySubjectSerialNumber
    , fmap (("State",) . toJSON) _aCMPCACertificateAuthoritySubjectState
    , fmap (("Surname",) . toJSON) _aCMPCACertificateAuthoritySubjectSurname
    , fmap (("Title",) . toJSON) _aCMPCACertificateAuthoritySubjectTitle
    ]

-- | Constructor for 'ACMPCACertificateAuthoritySubject' containing required
-- fields as arguments.
acmpcaCertificateAuthoritySubject
  :: ACMPCACertificateAuthoritySubject
acmpcaCertificateAuthoritySubject  =
  ACMPCACertificateAuthoritySubject
  { _aCMPCACertificateAuthoritySubjectCommonName = Nothing
  , _aCMPCACertificateAuthoritySubjectCountry = Nothing
  , _aCMPCACertificateAuthoritySubjectDistinguishedNameQualifier = Nothing
  , _aCMPCACertificateAuthoritySubjectGenerationQualifier = Nothing
  , _aCMPCACertificateAuthoritySubjectGivenName = Nothing
  , _aCMPCACertificateAuthoritySubjectInitials = Nothing
  , _aCMPCACertificateAuthoritySubjectLocality = Nothing
  , _aCMPCACertificateAuthoritySubjectOrganization = Nothing
  , _aCMPCACertificateAuthoritySubjectOrganizationalUnit = Nothing
  , _aCMPCACertificateAuthoritySubjectPseudonym = Nothing
  , _aCMPCACertificateAuthoritySubjectSerialNumber = Nothing
  , _aCMPCACertificateAuthoritySubjectState = Nothing
  , _aCMPCACertificateAuthoritySubjectSurname = Nothing
  , _aCMPCACertificateAuthoritySubjectTitle = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-commonname
acmpcacasCommonName :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasCommonName = lens _aCMPCACertificateAuthoritySubjectCommonName (\s a -> s { _aCMPCACertificateAuthoritySubjectCommonName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-country
acmpcacasCountry :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasCountry = lens _aCMPCACertificateAuthoritySubjectCountry (\s a -> s { _aCMPCACertificateAuthoritySubjectCountry = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-distinguishednamequalifier
acmpcacasDistinguishedNameQualifier :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasDistinguishedNameQualifier = lens _aCMPCACertificateAuthoritySubjectDistinguishedNameQualifier (\s a -> s { _aCMPCACertificateAuthoritySubjectDistinguishedNameQualifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-generationqualifier
acmpcacasGenerationQualifier :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasGenerationQualifier = lens _aCMPCACertificateAuthoritySubjectGenerationQualifier (\s a -> s { _aCMPCACertificateAuthoritySubjectGenerationQualifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-givenname
acmpcacasGivenName :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasGivenName = lens _aCMPCACertificateAuthoritySubjectGivenName (\s a -> s { _aCMPCACertificateAuthoritySubjectGivenName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-initials
acmpcacasInitials :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasInitials = lens _aCMPCACertificateAuthoritySubjectInitials (\s a -> s { _aCMPCACertificateAuthoritySubjectInitials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-locality
acmpcacasLocality :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasLocality = lens _aCMPCACertificateAuthoritySubjectLocality (\s a -> s { _aCMPCACertificateAuthoritySubjectLocality = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-organization
acmpcacasOrganization :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasOrganization = lens _aCMPCACertificateAuthoritySubjectOrganization (\s a -> s { _aCMPCACertificateAuthoritySubjectOrganization = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-organizationalunit
acmpcacasOrganizationalUnit :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasOrganizationalUnit = lens _aCMPCACertificateAuthoritySubjectOrganizationalUnit (\s a -> s { _aCMPCACertificateAuthoritySubjectOrganizationalUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-pseudonym
acmpcacasPseudonym :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasPseudonym = lens _aCMPCACertificateAuthoritySubjectPseudonym (\s a -> s { _aCMPCACertificateAuthoritySubjectPseudonym = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-serialnumber
acmpcacasSerialNumber :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasSerialNumber = lens _aCMPCACertificateAuthoritySubjectSerialNumber (\s a -> s { _aCMPCACertificateAuthoritySubjectSerialNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-state
acmpcacasState :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasState = lens _aCMPCACertificateAuthoritySubjectState (\s a -> s { _aCMPCACertificateAuthoritySubjectState = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-surname
acmpcacasSurname :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasSurname = lens _aCMPCACertificateAuthoritySubjectSurname (\s a -> s { _aCMPCACertificateAuthoritySubjectSurname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-subject.html#cfn-acmpca-certificateauthority-subject-title
acmpcacasTitle :: Lens' ACMPCACertificateAuthoritySubject (Maybe (Val Text))
acmpcacasTitle = lens _aCMPCACertificateAuthoritySubjectTitle (\s a -> s { _aCMPCACertificateAuthoritySubjectTitle = a })
