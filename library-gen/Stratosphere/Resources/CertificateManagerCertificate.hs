{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html

module Stratosphere.Resources.CertificateManagerCertificate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CertificateManagerCertificateDomainValidationOption
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CertificateManagerCertificate. See
-- 'certificateManagerCertificate' for a more convenient constructor.
data CertificateManagerCertificate =
  CertificateManagerCertificate
  { _certificateManagerCertificateDomainName :: Val Text
  , _certificateManagerCertificateDomainValidationOptions :: Maybe [CertificateManagerCertificateDomainValidationOption]
  , _certificateManagerCertificateSubjectAlternativeNames :: Maybe (ValList Text)
  , _certificateManagerCertificateTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON CertificateManagerCertificate where
  toJSON CertificateManagerCertificate{..} =
    object $
    catMaybes
    [ Just ("DomainName" .= _certificateManagerCertificateDomainName)
    , ("DomainValidationOptions" .=) <$> _certificateManagerCertificateDomainValidationOptions
    , ("SubjectAlternativeNames" .=) <$> _certificateManagerCertificateSubjectAlternativeNames
    , ("Tags" .=) <$> _certificateManagerCertificateTags
    ]

instance FromJSON CertificateManagerCertificate where
  parseJSON (Object obj) =
    CertificateManagerCertificate <$>
      obj .: "DomainName" <*>
      obj .:? "DomainValidationOptions" <*>
      obj .:? "SubjectAlternativeNames" <*>
      obj .:? "Tags"
  parseJSON _ = mempty

-- | Constructor for 'CertificateManagerCertificate' containing required
-- fields as arguments.
certificateManagerCertificate
  :: Val Text -- ^ 'cmcDomainName'
  -> CertificateManagerCertificate
certificateManagerCertificate domainNamearg =
  CertificateManagerCertificate
  { _certificateManagerCertificateDomainName = domainNamearg
  , _certificateManagerCertificateDomainValidationOptions = Nothing
  , _certificateManagerCertificateSubjectAlternativeNames = Nothing
  , _certificateManagerCertificateTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-domainname
cmcDomainName :: Lens' CertificateManagerCertificate (Val Text)
cmcDomainName = lens _certificateManagerCertificateDomainName (\s a -> s { _certificateManagerCertificateDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-domainvalidationoptions
cmcDomainValidationOptions :: Lens' CertificateManagerCertificate (Maybe [CertificateManagerCertificateDomainValidationOption])
cmcDomainValidationOptions = lens _certificateManagerCertificateDomainValidationOptions (\s a -> s { _certificateManagerCertificateDomainValidationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-subjectalternativenames
cmcSubjectAlternativeNames :: Lens' CertificateManagerCertificate (Maybe (ValList Text))
cmcSubjectAlternativeNames = lens _certificateManagerCertificateSubjectAlternativeNames (\s a -> s { _certificateManagerCertificateSubjectAlternativeNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-tags
cmcTags :: Lens' CertificateManagerCertificate (Maybe [Tag])
cmcTags = lens _certificateManagerCertificateTags (\s a -> s { _certificateManagerCertificateTags = a })
