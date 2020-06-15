{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html

module Stratosphere.ResourceProperties.CertificateManagerCertificateDomainValidationOption where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CertificateManagerCertificateDomainValidationOption. See
-- 'certificateManagerCertificateDomainValidationOption' for a more
-- convenient constructor.
data CertificateManagerCertificateDomainValidationOption =
  CertificateManagerCertificateDomainValidationOption
  { _certificateManagerCertificateDomainValidationOptionDomainName :: Val Text
  , _certificateManagerCertificateDomainValidationOptionHostedZoneId :: Maybe (Val Text)
  , _certificateManagerCertificateDomainValidationOptionValidationDomain :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CertificateManagerCertificateDomainValidationOption where
  toJSON CertificateManagerCertificateDomainValidationOption{..} =
    object $
    catMaybes
    [ (Just . ("DomainName",) . toJSON) _certificateManagerCertificateDomainValidationOptionDomainName
    , fmap (("HostedZoneId",) . toJSON) _certificateManagerCertificateDomainValidationOptionHostedZoneId
    , fmap (("ValidationDomain",) . toJSON) _certificateManagerCertificateDomainValidationOptionValidationDomain
    ]

-- | Constructor for 'CertificateManagerCertificateDomainValidationOption'
-- containing required fields as arguments.
certificateManagerCertificateDomainValidationOption
  :: Val Text -- ^ 'cmcdvoDomainName'
  -> CertificateManagerCertificateDomainValidationOption
certificateManagerCertificateDomainValidationOption domainNamearg =
  CertificateManagerCertificateDomainValidationOption
  { _certificateManagerCertificateDomainValidationOptionDomainName = domainNamearg
  , _certificateManagerCertificateDomainValidationOptionHostedZoneId = Nothing
  , _certificateManagerCertificateDomainValidationOptionValidationDomain = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoptions-domainname
cmcdvoDomainName :: Lens' CertificateManagerCertificateDomainValidationOption (Val Text)
cmcdvoDomainName = lens _certificateManagerCertificateDomainValidationOptionDomainName (\s a -> s { _certificateManagerCertificateDomainValidationOptionDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-hostedzoneid
cmcdvoHostedZoneId :: Lens' CertificateManagerCertificateDomainValidationOption (Maybe (Val Text))
cmcdvoHostedZoneId = lens _certificateManagerCertificateDomainValidationOptionHostedZoneId (\s a -> s { _certificateManagerCertificateDomainValidationOptionHostedZoneId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-validationdomain
cmcdvoValidationDomain :: Lens' CertificateManagerCertificateDomainValidationOption (Maybe (Val Text))
cmcdvoValidationDomain = lens _certificateManagerCertificateDomainValidationOptionValidationDomain (\s a -> s { _certificateManagerCertificateDomainValidationOptionValidationDomain = a })
