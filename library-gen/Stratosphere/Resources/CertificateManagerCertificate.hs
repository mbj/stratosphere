{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html

module Stratosphere.Resources.CertificateManagerCertificate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CertificateManagerCertificateDomainValidationOption
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CertificateManagerCertificate. See
-- 'certificateManagerCertificate' for a more convenient constructor.
data CertificateManagerCertificate =
  CertificateManagerCertificate
  { _certificateManagerCertificateCertificateAuthorityArn :: Maybe (Val Text)
  , _certificateManagerCertificateCertificateTransparencyLoggingPreference :: Maybe (Val Text)
  , _certificateManagerCertificateDomainName :: Val Text
  , _certificateManagerCertificateDomainValidationOptions :: Maybe [CertificateManagerCertificateDomainValidationOption]
  , _certificateManagerCertificateSubjectAlternativeNames :: Maybe (ValList Text)
  , _certificateManagerCertificateTags :: Maybe [Tag]
  , _certificateManagerCertificateValidationMethod :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CertificateManagerCertificate where
  toResourceProperties CertificateManagerCertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CertificateManager::Certificate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CertificateAuthorityArn",) . toJSON) _certificateManagerCertificateCertificateAuthorityArn
        , fmap (("CertificateTransparencyLoggingPreference",) . toJSON) _certificateManagerCertificateCertificateTransparencyLoggingPreference
        , (Just . ("DomainName",) . toJSON) _certificateManagerCertificateDomainName
        , fmap (("DomainValidationOptions",) . toJSON) _certificateManagerCertificateDomainValidationOptions
        , fmap (("SubjectAlternativeNames",) . toJSON) _certificateManagerCertificateSubjectAlternativeNames
        , fmap (("Tags",) . toJSON) _certificateManagerCertificateTags
        , fmap (("ValidationMethod",) . toJSON) _certificateManagerCertificateValidationMethod
        ]
    }

-- | Constructor for 'CertificateManagerCertificate' containing required
-- fields as arguments.
certificateManagerCertificate
  :: Val Text -- ^ 'cmcDomainName'
  -> CertificateManagerCertificate
certificateManagerCertificate domainNamearg =
  CertificateManagerCertificate
  { _certificateManagerCertificateCertificateAuthorityArn = Nothing
  , _certificateManagerCertificateCertificateTransparencyLoggingPreference = Nothing
  , _certificateManagerCertificateDomainName = domainNamearg
  , _certificateManagerCertificateDomainValidationOptions = Nothing
  , _certificateManagerCertificateSubjectAlternativeNames = Nothing
  , _certificateManagerCertificateTags = Nothing
  , _certificateManagerCertificateValidationMethod = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-certificateauthorityarn
cmcCertificateAuthorityArn :: Lens' CertificateManagerCertificate (Maybe (Val Text))
cmcCertificateAuthorityArn = lens _certificateManagerCertificateCertificateAuthorityArn (\s a -> s { _certificateManagerCertificateCertificateAuthorityArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-certificatetransparencyloggingpreference
cmcCertificateTransparencyLoggingPreference :: Lens' CertificateManagerCertificate (Maybe (Val Text))
cmcCertificateTransparencyLoggingPreference = lens _certificateManagerCertificateCertificateTransparencyLoggingPreference (\s a -> s { _certificateManagerCertificateCertificateTransparencyLoggingPreference = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html#cfn-certificatemanager-certificate-validationmethod
cmcValidationMethod :: Lens' CertificateManagerCertificate (Maybe (Val Text))
cmcValidationMethod = lens _certificateManagerCertificateValidationMethod (\s a -> s { _certificateManagerCertificateValidationMethod = a })
