{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html

module Stratosphere.Resources.ACMPCACertificateAuthorityActivation where

import Stratosphere.ResourceImports


-- | Full data type definition for ACMPCACertificateAuthorityActivation. See
-- 'acmpcaCertificateAuthorityActivation' for a more convenient constructor.
data ACMPCACertificateAuthorityActivation =
  ACMPCACertificateAuthorityActivation
  { _aCMPCACertificateAuthorityActivationCertificate :: Val Text
  , _aCMPCACertificateAuthorityActivationCertificateAuthorityArn :: Val Text
  , _aCMPCACertificateAuthorityActivationCertificateChain :: Maybe (Val Text)
  , _aCMPCACertificateAuthorityActivationStatus :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ACMPCACertificateAuthorityActivation where
  toResourceProperties ACMPCACertificateAuthorityActivation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ACMPCA::CertificateAuthorityActivation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Certificate",) . toJSON) _aCMPCACertificateAuthorityActivationCertificate
        , (Just . ("CertificateAuthorityArn",) . toJSON) _aCMPCACertificateAuthorityActivationCertificateAuthorityArn
        , fmap (("CertificateChain",) . toJSON) _aCMPCACertificateAuthorityActivationCertificateChain
        , fmap (("Status",) . toJSON) _aCMPCACertificateAuthorityActivationStatus
        ]
    }

-- | Constructor for 'ACMPCACertificateAuthorityActivation' containing
-- required fields as arguments.
acmpcaCertificateAuthorityActivation
  :: Val Text -- ^ 'acmpcacaaCertificate'
  -> Val Text -- ^ 'acmpcacaaCertificateAuthorityArn'
  -> ACMPCACertificateAuthorityActivation
acmpcaCertificateAuthorityActivation certificatearg certificateAuthorityArnarg =
  ACMPCACertificateAuthorityActivation
  { _aCMPCACertificateAuthorityActivationCertificate = certificatearg
  , _aCMPCACertificateAuthorityActivationCertificateAuthorityArn = certificateAuthorityArnarg
  , _aCMPCACertificateAuthorityActivationCertificateChain = Nothing
  , _aCMPCACertificateAuthorityActivationStatus = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-certificate
acmpcacaaCertificate :: Lens' ACMPCACertificateAuthorityActivation (Val Text)
acmpcacaaCertificate = lens _aCMPCACertificateAuthorityActivationCertificate (\s a -> s { _aCMPCACertificateAuthorityActivationCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-certificateauthorityarn
acmpcacaaCertificateAuthorityArn :: Lens' ACMPCACertificateAuthorityActivation (Val Text)
acmpcacaaCertificateAuthorityArn = lens _aCMPCACertificateAuthorityActivationCertificateAuthorityArn (\s a -> s { _aCMPCACertificateAuthorityActivationCertificateAuthorityArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-certificatechain
acmpcacaaCertificateChain :: Lens' ACMPCACertificateAuthorityActivation (Maybe (Val Text))
acmpcacaaCertificateChain = lens _aCMPCACertificateAuthorityActivationCertificateChain (\s a -> s { _aCMPCACertificateAuthorityActivationCertificateChain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificateauthorityactivation.html#cfn-acmpca-certificateauthorityactivation-status
acmpcacaaStatus :: Lens' ACMPCACertificateAuthorityActivation (Maybe (Val Text))
acmpcacaaStatus = lens _aCMPCACertificateAuthorityActivationStatus (\s a -> s { _aCMPCACertificateAuthorityActivationStatus = a })
