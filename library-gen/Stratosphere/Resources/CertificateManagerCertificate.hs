{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html

module Stratosphere.Resources.CertificateManagerCertificate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CertificateManagerCertificateDomainValidationOption
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CertificateManagerCertificate. See
-- | 'certificateManagerCertificate' for a more convenient constructor.
data CertificateManagerCertificate =
  CertificateManagerCertificate
  { _certificateManagerCertificateDomainName :: Val Text
  , _certificateManagerCertificateDomainValidationOptions :: Maybe [CertificateManagerCertificateDomainValidationOption]
  , _certificateManagerCertificateSubjectAlternativeNames :: Maybe [Val Text]
  , _certificateManagerCertificateTags :: Maybe [Tag]
  } deriving (Show, Eq, Generic)

instance ToJSON CertificateManagerCertificate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON CertificateManagerCertificate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'CertificateManagerCertificate' containing required
-- | fields as arguments.
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
cmcSubjectAlternativeNames :: Lens' CertificateManagerCertificate (Maybe [Val Text])
cmcSubjectAlternativeNames = lens _certificateManagerCertificateSubjectAlternativeNames (\s a -> s { _certificateManagerCertificateSubjectAlternativeNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-tags
cmcTags :: Lens' CertificateManagerCertificate (Maybe [Tag])
cmcTags = lens _certificateManagerCertificateTags (\s a -> s { _certificateManagerCertificateTags = a })
