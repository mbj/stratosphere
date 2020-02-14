{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html

module Stratosphere.ResourceProperties.ACMPCACertificateAuthorityRevocationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ACMPCACertificateAuthorityCrlConfiguration

-- | Full data type definition for
-- ACMPCACertificateAuthorityRevocationConfiguration. See
-- 'acmpcaCertificateAuthorityRevocationConfiguration' for a more convenient
-- constructor.
data ACMPCACertificateAuthorityRevocationConfiguration =
  ACMPCACertificateAuthorityRevocationConfiguration
  { _aCMPCACertificateAuthorityRevocationConfigurationCrlConfiguration :: Maybe ACMPCACertificateAuthorityCrlConfiguration
  } deriving (Show, Eq)

instance ToJSON ACMPCACertificateAuthorityRevocationConfiguration where
  toJSON ACMPCACertificateAuthorityRevocationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CrlConfiguration",) . toJSON) _aCMPCACertificateAuthorityRevocationConfigurationCrlConfiguration
    ]

-- | Constructor for 'ACMPCACertificateAuthorityRevocationConfiguration'
-- containing required fields as arguments.
acmpcaCertificateAuthorityRevocationConfiguration
  :: ACMPCACertificateAuthorityRevocationConfiguration
acmpcaCertificateAuthorityRevocationConfiguration  =
  ACMPCACertificateAuthorityRevocationConfiguration
  { _aCMPCACertificateAuthorityRevocationConfigurationCrlConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html#cfn-acmpca-certificateauthority-revocationconfiguration-crlconfiguration
acmpcacarcCrlConfiguration :: Lens' ACMPCACertificateAuthorityRevocationConfiguration (Maybe ACMPCACertificateAuthorityCrlConfiguration)
acmpcacarcCrlConfiguration = lens _aCMPCACertificateAuthorityRevocationConfigurationCrlConfiguration (\s a -> s { _aCMPCACertificateAuthorityRevocationConfigurationCrlConfiguration = a })
