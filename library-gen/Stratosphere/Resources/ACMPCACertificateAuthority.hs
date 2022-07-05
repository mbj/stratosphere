{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html

module Stratosphere.Resources.ACMPCACertificateAuthority where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ACMPCACertificateAuthorityRevocationConfiguration
import Stratosphere.ResourceProperties.ACMPCACertificateAuthoritySubject
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ACMPCACertificateAuthority. See
-- 'acmpcaCertificateAuthority' for a more convenient constructor.
data ACMPCACertificateAuthority =
  ACMPCACertificateAuthority
  { _aCMPCACertificateAuthorityKeyAlgorithm :: Val Text
  , _aCMPCACertificateAuthorityRevocationConfiguration :: Maybe ACMPCACertificateAuthorityRevocationConfiguration
  , _aCMPCACertificateAuthoritySigningAlgorithm :: Val Text
  , _aCMPCACertificateAuthoritySubject :: ACMPCACertificateAuthoritySubject
  , _aCMPCACertificateAuthorityTags :: Maybe [Tag]
  , _aCMPCACertificateAuthorityType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ACMPCACertificateAuthority where
  toResourceProperties ACMPCACertificateAuthority{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ACMPCA::CertificateAuthority"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("KeyAlgorithm",) . toJSON) _aCMPCACertificateAuthorityKeyAlgorithm
        , fmap (("RevocationConfiguration",) . toJSON) _aCMPCACertificateAuthorityRevocationConfiguration
        , (Just . ("SigningAlgorithm",) . toJSON) _aCMPCACertificateAuthoritySigningAlgorithm
        , (Just . ("Subject",) . toJSON) _aCMPCACertificateAuthoritySubject
        , fmap (("Tags",) . toJSON) _aCMPCACertificateAuthorityTags
        , (Just . ("Type",) . toJSON) _aCMPCACertificateAuthorityType
        ]
    }

-- | Constructor for 'ACMPCACertificateAuthority' containing required fields
-- as arguments.
acmpcaCertificateAuthority
  :: Val Text -- ^ 'acmpcacaKeyAlgorithm'
  -> Val Text -- ^ 'acmpcacaSigningAlgorithm'
  -> ACMPCACertificateAuthoritySubject -- ^ 'acmpcacaSubject'
  -> Val Text -- ^ 'acmpcacaType'
  -> ACMPCACertificateAuthority
acmpcaCertificateAuthority keyAlgorithmarg signingAlgorithmarg subjectarg typearg =
  ACMPCACertificateAuthority
  { _aCMPCACertificateAuthorityKeyAlgorithm = keyAlgorithmarg
  , _aCMPCACertificateAuthorityRevocationConfiguration = Nothing
  , _aCMPCACertificateAuthoritySigningAlgorithm = signingAlgorithmarg
  , _aCMPCACertificateAuthoritySubject = subjectarg
  , _aCMPCACertificateAuthorityTags = Nothing
  , _aCMPCACertificateAuthorityType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-keyalgorithm
acmpcacaKeyAlgorithm :: Lens' ACMPCACertificateAuthority (Val Text)
acmpcacaKeyAlgorithm = lens _aCMPCACertificateAuthorityKeyAlgorithm (\s a -> s { _aCMPCACertificateAuthorityKeyAlgorithm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-revocationconfiguration
acmpcacaRevocationConfiguration :: Lens' ACMPCACertificateAuthority (Maybe ACMPCACertificateAuthorityRevocationConfiguration)
acmpcacaRevocationConfiguration = lens _aCMPCACertificateAuthorityRevocationConfiguration (\s a -> s { _aCMPCACertificateAuthorityRevocationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-signingalgorithm
acmpcacaSigningAlgorithm :: Lens' ACMPCACertificateAuthority (Val Text)
acmpcacaSigningAlgorithm = lens _aCMPCACertificateAuthoritySigningAlgorithm (\s a -> s { _aCMPCACertificateAuthoritySigningAlgorithm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-subject
acmpcacaSubject :: Lens' ACMPCACertificateAuthority ACMPCACertificateAuthoritySubject
acmpcacaSubject = lens _aCMPCACertificateAuthoritySubject (\s a -> s { _aCMPCACertificateAuthoritySubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-tags
acmpcacaTags :: Lens' ACMPCACertificateAuthority (Maybe [Tag])
acmpcacaTags = lens _aCMPCACertificateAuthorityTags (\s a -> s { _aCMPCACertificateAuthorityTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthority.html#cfn-acmpca-certificateauthority-type
acmpcacaType :: Lens' ACMPCACertificateAuthority (Val Text)
acmpcacaType = lens _aCMPCACertificateAuthorityType (\s a -> s { _aCMPCACertificateAuthorityType = a })
