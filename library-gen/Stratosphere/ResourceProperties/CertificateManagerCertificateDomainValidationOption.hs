{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html

module Stratosphere.ResourceProperties.CertificateManagerCertificateDomainValidationOption where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | CertificateManagerCertificateDomainValidationOption. See
-- | 'certificateManagerCertificateDomainValidationOption' for a more
-- | convenient constructor.
data CertificateManagerCertificateDomainValidationOption =
  CertificateManagerCertificateDomainValidationOption
  { _certificateManagerCertificateDomainValidationOptionDomainName :: Val Text
  , _certificateManagerCertificateDomainValidationOptionValidationDomain :: Val Text
  } deriving (Show, Eq)

instance ToJSON CertificateManagerCertificateDomainValidationOption where
  toJSON CertificateManagerCertificateDomainValidationOption{..} =
    object
    [ "DomainName" .= _certificateManagerCertificateDomainValidationOptionDomainName
    , "ValidationDomain" .= _certificateManagerCertificateDomainValidationOptionValidationDomain
    ]

instance FromJSON CertificateManagerCertificateDomainValidationOption where
  parseJSON (Object obj) =
    CertificateManagerCertificateDomainValidationOption <$>
      obj .: "DomainName" <*>
      obj .: "ValidationDomain"
  parseJSON _ = mempty

-- | Constructor for 'CertificateManagerCertificateDomainValidationOption'
-- | containing required fields as arguments.
certificateManagerCertificateDomainValidationOption
  :: Val Text -- ^ 'cmcdvoDomainName'
  -> Val Text -- ^ 'cmcdvoValidationDomain'
  -> CertificateManagerCertificateDomainValidationOption
certificateManagerCertificateDomainValidationOption domainNamearg validationDomainarg =
  CertificateManagerCertificateDomainValidationOption
  { _certificateManagerCertificateDomainValidationOptionDomainName = domainNamearg
  , _certificateManagerCertificateDomainValidationOptionValidationDomain = validationDomainarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoptions-domainname
cmcdvoDomainName :: Lens' CertificateManagerCertificateDomainValidationOption (Val Text)
cmcdvoDomainName = lens _certificateManagerCertificateDomainValidationOptionDomainName (\s a -> s { _certificateManagerCertificateDomainValidationOptionDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-validationdomain
cmcdvoValidationDomain :: Lens' CertificateManagerCertificateDomainValidationOption (Val Text)
cmcdvoValidationDomain = lens _certificateManagerCertificateDomainValidationOptionValidationDomain (\s a -> s { _certificateManagerCertificateDomainValidationOptionValidationDomain = a })
